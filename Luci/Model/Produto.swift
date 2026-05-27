import Foundation

struct Produto: Hashable {
    let nome: String
    let quantidade: String //precisa ser pego da NivelSujeira + Nivel que usuario escolher
    let ferramenta: Ferramenta
    let tipos: [ProdutoTipo]
    let temperatura: Temperatura
    let sujeiras: [Sujo]
    let naoMisturarCom: [ProdutoNaoMistura]
}

// MARK: - Enums

enum ProdutoNaoMistura: String, Hashable {
    case detergenteAcido
    case detergenteNeutro
    case detergenteAlcalino
    case aguaSanitaria
    case desinfetanteAmonia
    case alcool
    case agua
    case multiuso
}

enum ProdutoTipo: String, Hashable {
    case detergenteAcido
    case detergenteNeutro
    case detergenteAlcalino
    case aguaSanitaria
    case desinfetanteAmonia
    case alcool
    case agua
    case multiuso
}

enum Temperatura: String, Hashable {
    case fria
    case morna
    case neutra
}

enum Sujo: String, Hashable {
    case gordura
    case restoComida
    case calcario
    case ferrugem
    case oxidacao
    case terra
    case mofo
    case sangue
    case fluidosCorporais
    case tinta
}

enum Produtos {

    static let agua = Produto(
        nome: "Água",
        quantidade: "500ml",
        ferramenta: .balde,
        tipos: [.agua],
        temperatura: .neutra,
        sujeiras: [],
        naoMisturarCom: []
    )

    static let desengordurante = Produto(
        nome: "Desengordurante",
        quantidade: "500ml",
        ferramenta: .esponja,
        tipos: [.detergenteAlcalino],
        temperatura: .morna,
        sujeiras: [.gordura, .restoComida, .fluidosCorporais],
        naoMisturarCom: []
    )

    static let desencrustante = Produto(
        nome: "Desencrustante",
        quantidade: "1L",
        ferramenta: .escova,
        tipos: [.detergenteAcido],
        temperatura: .fria,
        sujeiras: [.calcario, .ferrugem, .oxidacao, .terra],
        naoMisturarCom: [.aguaSanitaria]
    )

    static let detergenteNeutro = Produto(
        nome: "Detergente Neutro",
        quantidade: "500ml",
        ferramenta: .esponja,
        tipos: [.detergenteNeutro],
        temperatura: .neutra,
        sujeiras: [.gordura, .restoComida, .terra],
        naoMisturarCom: []
    )
    
    static let multiuso = Produto(
        nome: "MultiUso",
        quantidade: "500ml",
        ferramenta: .esponja,
        tipos: [.detergenteNeutro],
        temperatura: .neutra,
        sujeiras: [.gordura, .restoComida, .terra],
        naoMisturarCom: []
    )
    
    static let vidro = Produto(
        nome: "Limpa Vidros",
        quantidade: "500ml",
        ferramenta: .esponja,
        tipos: [.detergenteNeutro],
        temperatura: .neutra,
        sujeiras: [.gordura, .restoComida, .terra],
        naoMisturarCom: []
    )

    static let aguaSanitaria = Produto(
        nome: "Água Sanitária ou Alvejante",
        quantidade: "1L",
        ferramenta: .borrifador,
        tipos: [.aguaSanitaria],
        temperatura: .fria,
        sujeiras: [.mofo, .sangue, .fluidosCorporais],
        naoMisturarCom: [.alcool, .desinfetanteAmonia, .detergenteAcido]
    )

    static let alcool70 = Produto(
        nome: "Álcool 70%",
        quantidade: "500ml",
        ferramenta: .pano,
        tipos: [.alcool],
        temperatura: .fria,
        sujeiras: [.gordura, .tinta, .mofo],
        naoMisturarCom: [.aguaSanitaria]
    )
}
