//
//  Adicional.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation

struct Sujeira: Hashable {
    let nome: String
    let receita: String
    
    let troca: Bool
    
    let trocaTipo: [ProdutoTipos : ProdutoTipos]
}


enum Sujeiras: CaseIterable, Hashable {
    static let poeira = Sujeira(
        nome: "Poeira",
        receita: "Umedecer um pano com álcool e esfregar na área com tinta de caneta",
        troca: false,
        trocaTipo: [:]
    )
    static let mofo = Sujeira(
        nome: "Mofo",
        receita: "Como tirar mofo",
        troca: false,
        trocaTipo: [:]
    )
    static let gordura = Sujeira(
        nome: "Gordura",
        receita: "Como tirar gordura",
        troca: true,
        trocaTipo: [
            .neutro: .alcalino
        ]
    )
    
    static let todos: [Sujeira] = [
        Sujeiras.poeira,
        Sujeiras.mofo,
        Sujeiras.gordura
    ]
}
