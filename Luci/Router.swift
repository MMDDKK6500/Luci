//
//  Route.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation
import SwiftUI
import Combine

// Classe do roteador, ele leva dados como o caminho da navegação e outras coisas
class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    // Exemplo, um texto que todas as telas podem mudar e ler
    // PRECISA ser @Published, se não ele não é mostrado
    @Published var texto: String = "ola"
    
    @Published var nivel: Double = 1
    
    @Published var tipoDeSujeira: Sujeira = Sujeiras.poeira
    
    @Published var qualSuperficie: Superficie = Superficies.porcelanato
    
    @Published var resultado: Resultado!
    
    func resultar() {
        var resultado = Receitas.misturarBalde.receita
        
        var produtosCompletos: [String] = []
        
        var ferramentasTotal = Set<Ferramentas>()
        
        // Determinar qual tipo de produto usar, duranto o for!!!
        
        for i in 0...self.qualSuperficie.quantidadeProdutos.count - 1 {
            if let range = resultado.range(of:"{PRODUTO}") {
                let produto = self.qualSuperficie.produtos[i]
                
                var tipos = self.qualSuperficie.produtosTipos
                
                if self.tipoDeSujeira.troca {
                    print("a")
                    for tipo in tipos {
                        print("b")
                        if let tipoTrocar = self.tipoDeSujeira.trocaTipo[tipo] {
                            print(tipoTrocar.rawValue)
                            tipos[tipos.firstIndex(of: tipo)!] = tipoTrocar
                        }
                        
                        
                    }
                    
                }
                
                resultado = resultado.replacingCharacters(in:range, with: produto.nome + " " + tipos[i].rawValue)
                produtosCompletos.append(produto.nome + " " + tipos[i].rawValue)
            }
            
            if let range = resultado.range(of:"{QUANTIDADE}") {
                resultado = resultado.replacingCharacters(in:range, with: self.qualSuperficie.quantidadeProdutos[i][Int(self.nivel)])
                produtosCompletos[i] += " " + self.qualSuperficie.quantidadeProdutos[i][Int(self.nivel)]
            }
        }
        
        ferramentasTotal = ferramentasTotal.union(self.qualSuperficie.ferramentas)
        ferramentasTotal = ferramentasTotal.union(Receitas.misturarBalde.ferramentas)
        
        
        
        resultado += "\n" + self.tipoDeSujeira.receita
        
        print(produtosCompletos)
        print(ferramentasTotal)
        
        let results = Resultado(
            instruções: resultado,
            ferramentas: Array(ferramentasTotal),
            produtosCompletos: produtosCompletos,
            naoFazer: ""
        )
        
        self.resultado = results
    }
}


// Rotacionador
// Ele é a raiz do projeto, direciona todas telas e é onde ta a pilha de telas.
struct RouterView: View {
    @StateObject private var router = Router()
    
    private var iPadOS = UIDevice.current.userInterfaceIdiom == .pad
    
    var body: some View {
        NavigationStack(path: $router.path) {
            
            //Quando criar SplashView, tirar o comentário dessa linha, fazer o msm pras outras telas
//                SplashView()
            InicioPage()
            
            .navigationDestination(for: Rotas.self) { destino in
                switch destino {
                case .splash:
                    if iPadOS {
                        InicioPageIpad()
                    } else {
                        InicioPage()
                    }
                case .mistura:
                    if iPadOS {
                        HomePageIpad()
                    } else {
                        HomePage()
                    }
                case .transicao:
                    if iPadOS {
                        TransformacaoPageIpad()
                    } else {
                        TransformacaoPage()
                    }
//                        .navigationBarBackButtonHidden(true)
                case .resultado:
                    if iPadOS {
                        SolucaoPageIpad()
                    } else {
                        SolucaoPage()
                    }
                case .saibamais:
//                        NoticiasView()
                    if iPadOS {
                        SaibaMaisPageIpad()
                    }
                    SaibaMaisPage()
                }
            }
        }
        // Leva o objeto de roteador para todas as telas
        .environmentObject(router)
    }
    
}

// preview
#Preview {
    RouterView()
}
