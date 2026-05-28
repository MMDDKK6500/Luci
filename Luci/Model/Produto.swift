//
//  Produto.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 22/05/26.
//

struct Produto: Hashable {
    let nome: String
    let tipos: [ProdutoTipos]
}

enum ProdutoTipos: String {
    case nenhum, fria, morna, neutro, alcalino
}

enum Produtos {
    
    static let agua = Produto(
        nome: "água",
        tipos: [.fria, .morna]
    )
    
    static let detergente = Produto(
        nome: "detergente",
        tipos: [.neutro, .alcalino]
    )
    
    static let desengordurante = Produto(
        nome: "desengordurante",
        tipos: [.nenhum]
    )
    
    static let desencrustante = Produto(
        nome: "desencrustante",
        tipos: [.nenhum]
    )
    
    static let aguaSanitaria = Produto(
        nome: "água sanitaria",
        tipos: [.nenhum]
    )
    
    static let alcool70 = Produto(
        nome: "álcool 70%",
        tipos: [.nenhum]
    )
    
    static let vinagre = Produto(
        nome: "vinagre",
        tipos: [.nenhum]
    )
    
    static let multiuso = Produto(
        nome: "produto multiuso",
        tipos: [.nenhum]
    )
    
    static let naoMisturar: [Produto: [Produto]] =
    [
        aguaSanitaria:[alcool70, detergente, desencrustante, desengordurante, vinagre]
    ]
}
