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

// porcelanagto = detergente, normalmente neutro
// gordura = detergente alcalino
// produto = detergente alcalino

