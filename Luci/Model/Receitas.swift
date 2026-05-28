//
//  Receitas.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 22/05/26.
//

struct Receita: Hashable {
    let receita: String
    let ferramentas: [Ferramentas]
}

struct Receitas {
    static let limparPo = Receita(
        receita: "Utilizar uma vassoura ou aspirador de pó para limpar a superfice.\n",
        ferramentas: [.vassoura]
    )
    static let misturarBalde = Receita(
        receita: "Em um balde com {QUANTIDADE} de {PRODUTO} podendo ser mais ou menos para o espaço do seu piso coloque {QUANTIDADE} de {PRODUTO} e misture até homogênio.\nAplique a mistura a superfície usando um pano limpo ou mop",
        ferramentas: [.mop, .pano, .balde]
    )
    
    static let borrifador = Receita(
        receita: "Em um borrifaddor, misture {QUANTIDADE} de {PRODUTO} com {QUANTIDADE} de {PRODUTO}, misture até homogenio.\nBorrife a mistura em um pano limpo e aplique na superficie",
        ferramentas: [.pano, .borrifador]
    )
    
    // Colocar para a receita adicional
    static let tipoSujeira = ""
}
