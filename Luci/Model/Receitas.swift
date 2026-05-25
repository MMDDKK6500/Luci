//
//  Receitas.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 22/05/26.
//

struct Receita {
    let receita: String
    let ferramentas: [Ferramentas]
}

struct Receitas {
    static let limparPo = Receita(
        receita: "Utilizar uma vassoura ou aspirador de pó para limpar a superfice.\n",
        ferramentas: [.vassoura]
    )
    static let misturarBalde = Receita(
        receita: "Em um balde com {QUANTIDADE} de {PRODUTO} para o espaço do seu piso coloque {QUANTIDADE} de {PRODUTO}, misture até homogenio.\nAplique a mistura a superfície usando um pano limpo ou mop",
        ferramentas: [.mop, .pano, .balde]
    )
    static let tipoSujeira = ""
}
