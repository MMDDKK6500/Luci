import Foundation

// MARK: - Sujeira

struct Sujeira: Hashable {
    let nome: String
    let receita: String
    let tipo: TipoSujeira
    let produtos: [ProdutoTipo]
    let potencia: PotenciaNivel
}

// MARK: - Potência

struct Potencia: Hashable {
    let nome: String
    let ferramentas: String
}

// MARK: - Enums

enum TipoSujeira: String, Hashable {
    case organica
    case mineral
}

enum PotenciaNivel: String, Hashable {
    case fraca //fraco - sujidades soltas
    case media //medio - sujidades soluveis em agua
    case alta //alto - sujidades impregnadas
}

enum Sujeiras {
    
//MARK: Organica
    
    static let gorduras = Sujeira(
        nome: "Gorduras",
        receita: "Aplicar desengordurante e esfregar com esponja.",
        tipo: .organica,
        produtos: [.agua, .detergenteAlcalino],
        potencia: .media
    )

    static let restoComida = Sujeira(
        nome: "Restos de comida",
        receita: "Remover resíduos sólidos e limpar com detergente neutro.",
        tipo: .organica,
        produtos: [.agua, .detergenteNeutro],
        potencia: .media
    )

    static let sangue = Sujeira(
        nome: "Sangue",
        receita: "Usar água fria e depois desinfetar.",
        tipo: .organica,
        produtos: [.aguaSanitaria, .alcool],
        potencia: .alta
    )
    
    static let fluidoCorporal = Sujeira(
        nome: "Fluidos Corporais",
        receita: "Aplicar alvejantes e desinfetantes.",
        tipo: .organica,
        produtos: [.detergenteAcido],
        potencia: .media
    )

    static let mofo = Sujeira(
        nome: "Mofo",
        receita: "Aplicar água sanitária e deixar agir.",
        tipo: .organica,
        produtos: [.aguaSanitaria],
        potencia: .alta
    )
    
//MARK: Mineral
    
    static let terra = Sujeira(
        nome: "Terra",
        receita: "Varrer e finalizar com pano úmido.",
        tipo: .mineral,
        produtos: [.agua, .detergenteNeutro],
        potencia: .fraca
    )

    static let ferrugem = Sujeira(
        nome: "Ferrugem",
        receita: "Aplicar detergente ácido e esfregar.",
        tipo: .mineral,
        produtos: [.detergenteAcido],
        potencia: .alta
    )

    static let calcario = Sujeira(
        nome: "Calcário",
        receita: "Aplicar desincrustante ácido.",
        tipo: .mineral,
        produtos: [.detergenteAcido],
        potencia: .alta
    )
    
    static let oxidacao = Sujeira(
        nome: "Oxidação",
        receita: "Aplicar desincrustante ácido.",
        tipo: .mineral,
        produtos: [.detergenteAcido],
        potencia: .alta
    )
    
    static let tinta = Sujeira(
        nome: "Tinta",
        receita: "Aplicar desincrustante ácido.",
        tipo: .mineral,
        produtos: [.detergenteAcido],
        potencia: .alta
    )
}
