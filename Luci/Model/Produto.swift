//
//  Produto.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 22/05/26.
//

struct Produto: Hashable {
    let nome: String
    let tipos: [String]
    let potencias: [Potencia]
}

enum ProdutoTipos: String {
    case fria, morna, neutro, alcalino
}

enum Potencia {
    case fraco, medio, forte, desinfetante, aguaSanitaria
}

enum Produtos {
    
    static let agua = Produto(
        nome: "água",
        tipos: ["fria", "morna"],
        potencias: [.fraco]
    )
    
    static let detergente = Produto(
        nome: "detergente",
        tipos: ["neutro", "alcalino"],
        potencias: [.fraco, .medio]
    )
}
