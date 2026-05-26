//
//  Superficie.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation

struct Superficie: Hashable {
    let nome: String
    let produtos: [Produto]
    let produtosTipos: [ProdutoTipos]
    let quantidadeProdutos: [[String]]
    let ferramentas: [Ferramentas]
    
    var secar: Bool = true
}

enum Superficies {
    static let porcelanato = Superficie(
        nome: "Porcelanato",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["pouca água", "media agua", "muita agua"],
            ["pouco detergente", "medio detergente", "muito detergente"]
        ],
        ferramentas: [Ferramentas.pano]
    )
    static let madeira = Superficie(
        nome: "Madeira",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["pouca água", "media agua", "muita agua"],
            ["pouco detergente", "medio detergente", "muito detergente"]
        ],
        ferramentas: [Ferramentas.pano]

    )
    static let vidroDeBox = Superficie(
        nome: "Vidro de Box",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["pouca água", "media agua", "muita agua"],
            ["pouco detergente", "medio detergente", "muito detergente"]
        ],
        ferramentas: [Ferramentas.pano]

    )
    
    static let todos = [porcelanato, madeira, vidroDeBox]
}

func resultar(superficie: Superficie, nivelSujeira: Int, adicional: Sujeira) -> String {
    var resultado = Receitas.misturarBalde.receita
    
    var ferramentasTotal = Set<Ferramentas>()
    
    // Determinar qual tipo de produto usar, duranto o for!!!
    
    for i in 0...superficie.quantidadeProdutos.count - 1 {
        if let range = resultado.range(of:"{QUANTIDADE}") {
            resultado = resultado.replacingCharacters(in:range, with: superficie.quantidadeProdutos[i][nivelSujeira])
        }
        if let range = resultado.range(of:"{PRODUTO}") {
            let produto = superficie.produtos[i]
            
            var tipos = superficie.produtosTipos
            
            if adicional.troca {
                print("a")
                for tipo in tipos {
                    print("b")
                    if let tipoTrocar = adicional.trocaTipo[tipo] {
                        print(tipoTrocar.rawValue)
                        tipos[tipos.firstIndex(of: tipo)!] = tipoTrocar
                    }
                    
                    
                }
                
            }
            
            resultado = resultado.replacingCharacters(in:range, with: produto.nome + " " + tipos[i].rawValue)
        }
    }
    
    ferramentasTotal = ferramentasTotal.union(superficie.ferramentas)
    ferramentasTotal = ferramentasTotal.union(Receitas.misturarBalde.ferramentas)
    
    print(ferramentasTotal)
    
    resultado += "\n" + adicional.receita
    
    return resultado
}

// porcelanagto = detergente, normalmente neutro
// gordura = detergente alcalino
// produto = detergente alcalino

