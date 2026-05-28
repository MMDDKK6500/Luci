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
    let receita: Receita
    
    var secar: Bool = true
}

enum Superficies {
    static let porcelanato = Superficie(
        nome: "Porcelanato",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["500ml", "1L", "2L"],
            ["3 colheres", "5 colheres", "8 colheres"]
        ],
        ferramentas: [Ferramentas.pano, Ferramentas.mop],
        receita: Receitas.misturarBalde
    )
    static let vinilico = Superficie(
        nome: "Vinilico",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["500ml", "1L", "2L"],
            ["3 colheres", "5 colheres", "8 colheres"]
        ],
        ferramentas: [Ferramentas.pano, Ferramentas.mop],
        receita: Receitas.misturarBalde

    )
    static let lamindado = Superficie(
        nome: "Laminado",
        produtos: [Produtos.agua, Produtos.detergente],
        produtosTipos: [.morna, .neutro],
        quantidadeProdutos: [
            ["500ml", "1L", "2L"],
            ["3 colheres", "5 colheres", "8 colheres"]
        ],
        ferramentas: [Ferramentas.pano, Ferramentas.mop],
        receita: Receitas.misturarBalde

    )
    
    static let todos = [porcelanato, vinilico, lamindado]
}

// porcelanagto = detergente, normalmente neutro
// gordura = detergente alcalino
// produto = detergente alcalino

