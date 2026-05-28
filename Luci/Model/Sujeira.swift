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
    
    let ferramentas: [Ferramentas]
    
    let produtos: [Produto]
    
    let trocaTipo: [ProdutoTipos : ProdutoTipos]
}


enum Sujeiras: CaseIterable, Hashable {
    static let ferrugem = Sujeira(
        nome: "Ferrugem",
        receita: "Passar um produto multiuso em uma escova, passando na ferrugem com força media, tomando cuidado para não danificar a superficie",
        troca: false,
        ferramentas: [Ferramentas.escova],
        produtos: [Produtos.multiuso],
        trocaTipo: [:]
    )
    static let mofo = Sujeira(
        nome: "Mofo",
        receita: "Umedecer um pano com vinagre, esfregando na ferrugem com um pano ou esfregador",
        troca: false,
        ferramentas: [Ferramentas.pano],
        produtos: [Produtos.vinagre],
        trocaTipo: [:]
    )
    static let tinta = Sujeira(
        nome: "Tinta",
        receita: "Umedecer um pano com Alcool 70 e esfregar na área com tinta com força moderada a forte.",
        troca: true,
        ferramentas: [Ferramentas.pano],
        produtos: [Produtos.alcool70],
        trocaTipo: [
            :
        ]
    )
    
    static let todos: [Sujeira] = [
        Sujeiras.ferrugem,
        Sujeiras.mofo,
        Sujeiras.tinta
    ]
}
