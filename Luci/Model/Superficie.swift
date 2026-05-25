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
        ]
    )
    static let madeira = Superficie(
        nome: "Madeira",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["pouca água", "media agua", "muita agua"],
            ["pouco detergente", "medio detergente", "muito detergente"]
        ]
    )
    static let vidroDeBox = Superficie(
        nome: "Vidro de Box",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["pouca água", "media agua", "muita agua"],
            ["pouco detergente", "medio detergente", "muito detergente"]
        ]
    )
}

func resultar(superficie: Superficie, nivelSujeira: Int, adicional: Sujeira) -> String {
    var resultado = Receitas.misturarBalde.rawValue
    
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
                    for array in adicional.trocaTipo {
                        print("c")
                        if tipo == array[0] {
                            print("d")
                            tipos[tipos.firstIndex(of: tipo)!] = array[1]
                        }
                        
                    }
                    
                }
                
            }
            
            resultado = resultado.replacingCharacters(in:range, with: produto.nome + " " + tipos[i].rawValue)
        }
    }
    
    
    
    resultado += "\n" + adicional.receita
    
    return resultado
}

// porcelanagto = detergente, normalmente neutro
// gordura = detergente alcalino
// produto = detergente alcalino

