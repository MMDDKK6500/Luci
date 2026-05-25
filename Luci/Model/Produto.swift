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
    case detergenteAcido, detergenteNeutro, detergenteAlcalino, aguaSanitaria, desifetanteAmonia, alcool
}

enum Temperatura: String {
    case fria, morna, neutro
}

enum Potencia {
    case fraco, medio, alto
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
    
    static let desengordurantes = Produto(
        nome: "Desengordurantes de Cozinha",
        tipos: ["detergenteAlcalino"],
        potencias: [.alto]
    ) //Cif Desengordurante, Veja Cozinha Desengordurante ou Mr. Músculo
    
    static let sabaoEmPo = Produto(
        nome: "Sabão em Pó e Lava-Roupas em Pó",
        tipos: ["detergenteAlcalino"],
        potencias: [.alto]
    ) //Atuam como agentes alcalinos fortíssimos, utilizados para desinfetar superfícies e remover manchas de mofo ou bolor em banheiros e cozinhas.
    
    static let bicarbonato = Produto(
        nome: "Bicarbonato de Sódio e Soda Cáustica",
        tipos: ["detergenteAlcalino"],
        potencias: [.alto]
    )
    
    static let banheiro = Produto(
        nome: "Limpadores de Banheiro",
        tipos: ["detergenteAcido"],
        potencias: [.alto]
    ) //Harpic, Veja Banheiro
    //Formulado com ácido clorídrico ou cítrico para remover marcas d'água, mofo e crostas do vaso sanitário.
    
    static let pedras = Produto(
        nome: "Limpa Pedras",
        tipos: ["detergenteAcido"],
        potencias: [.alto]
    ) //Bellinzoni Desincrustante, Limpador Ácido Pisoclean
    //Ácidos desincrustantes ideais para a limpeza pós-obra em pedras brutas e pisos rústicos
    
    static let sanitaria = Produto(
        nome: "Agua Sanitaria",
        tipos: ["aguaSanitaria"],
        potencias: [.medio]
    )
    
    static let pinho = Produto(
        nome: "Desinfetantes à base de Pinho",
        tipos: ["desifetanteAmonia"],
        potencias: [.medio]
    )
    
    static let alcool = Produto(
        nome: "Alcool 70%",
        tipos: ["alcool"],
        potencias: [.medio]
    )
}
