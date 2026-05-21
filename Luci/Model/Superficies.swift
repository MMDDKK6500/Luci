//
//  Superficies.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation

enum Superficies {
    static let porcelanato = Superficie(
        nome: "Porcelanato",
        receita: "Em um balde com {QUANTIDADE} morna para o espaço do seu piso coloque {QUANTIDADE} de detergente neutro, misture até não ver nenhuma linha de detergente mas sem fazer muita espuma.\nAplique a mistura a superfície usando um pano limpo ou mop",
        quantidades: [
            ["1L de agua", "2L de agua", "3L de agua"],
            ["1 colher de sopa", "3 colheres de sopa", "5 colheres de sopa"]
        ],
        secar: true
    )
    
    static let outro = Superficie(
        nome: "Outro ngc",
        receita: "Em um balde com {QUANTIDADE} morna para o espaço do seu piso coloque {QUANTIDADE} de detergente neutro, misture até não ver nenhuma linha de detergente mas sem fazer muita espuma.\nAplique a mistura a superfície usando um pano limpo ou mop",
        quantidades: [
            ["1L de agua", "2L de agua", "3L de agua"],
            ["1 colher de sopa", "3 colheres de sopa", "5 colheres de sopa"]
        ],
        secar: true
    )
}
