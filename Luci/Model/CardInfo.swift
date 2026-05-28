//
//  CardInfo.swift
//  Luci
//
//  Created by Isabella Avelina on 26/05/26.
//

import Foundation

struct CardInfo: Identifiable {
    let id = UUID()
    let imagem: String
    let titulo: String
    let descricao: String
    let conteudo: String
    let problemas: [ProblemaInfo]
    let riscos: String
}

struct ProblemaInfo: Identifiable {
    let id = UUID()
    let titulo: String
    let descricao: String
}
