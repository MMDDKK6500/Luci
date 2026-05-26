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
}


// Rotacionador
// Ele é a raiz do projeto, direciona todas telas e é onde ta a pilha de telas.
struct RouterView: View {
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            
            //Quando criar SplashView, tirar o comentário dessa linha, fazer o msm pras outras telas
//                SplashView()
            
            InicioPage()
            
            .navigationDestination(for: Rotas.self) { destino in
                switch destino {
                case .splash:
                    InicioPage()
                case .mistura:
                    HomePage()
                case .transicao:
                    TransformacaoPage()
//                        .navigationBarBackButtonHidden(true)
                case .resultado:
                    SolucaoPage()
                case .saibamais:
//                        NoticiasView()
                    HomePage()
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
