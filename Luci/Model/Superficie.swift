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

// porcelanagto = detergente, normalmente neutro
// gordura = detergente alcalino
// produto = detergente alcalino

