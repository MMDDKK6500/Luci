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
}


enum Sujeiras {
    static let tintaCaneta = Sujeira(
        nome: "Álcool",
        receita: "Umedecer um pano com álcool e esfregar na área com tinta de caneta"
    )
}
