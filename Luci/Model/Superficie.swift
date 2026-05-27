import Foundation

struct Superficie: Hashable {
    let nome: String
    let compatibilidades: [CompatibilidadeProduto]
    let secar: Bool
}

struct CompatibilidadeProduto: Hashable {
    let produto: Produto
    let quantidade: [String]
    let ferramenta: Ferramenta
}

enum Superficies {
    
    // MARK: - Pisos

    static let porcelanato = Superficie(
        nome: "Piso de Porcelanato",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: ["Pouca água", "Média água", "Muita água" ],
                ferramenta: .pano
            ),

            CompatibilidadeProduto(
                produto: Produtos.detergenteNeutro,
                quantidade: ["Pouco detergente", "Médio detergente", "Muito detergente" ],
                ferramenta: .esponja
            )
        ],
        secar: true
    )

    static let laminado = Superficie(
        nome: "Piso Laminado",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
    
    static let vinilico = Superficie(
        nome: "Piso Vinilico",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
    
    static let ceramica = Superficie(
        nome: "Piso Ceramico",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
    
    // MARK: - Movél de Planejado
    
    static let madeira = Superficie(
        nome: "Madeira",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
    
    // MARK: - Vidros
    
    static let janela = Superficie(
        nome: "Vidro de Janela",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
    
    static let boxBanheiro = Superficie(
        nome: "Vidro Box de Banheiro",
        compatibilidades: [
            CompatibilidadeProduto(
                produto: Produtos.agua,
                quantidade: [ "Pouquíssima água", "Pouca água", "Média água" ],
                ferramenta: .pano
            )
        ],
        secar: true
    )
}
