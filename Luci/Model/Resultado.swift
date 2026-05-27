//
//  Resultado.swift
//  Luci
//
//  Created by Tais Akemi Kawaguti on 27/05/26.
//
import Foundation

// MARK: - Resultado

struct ResultadoLimpeza {
    let produtoIdeal: Produto
    let quantidade: String
    let ferramentas: [Ferramenta]
    let naoMisturar: [ProdutoNaoMistura]
    let receita: String
}

// MARK: - Engine

enum LimpezaEngine {

    static func gerarResultado(
        superficie: Superficie,
        sujeira: Sujeira,
        nivelSujeira: Int
    ) -> ResultadoLimpeza? {

        // 1. Encontrar produto compatível com a superfície
        // e que também remove a sujeira

        guard let compatibilidade = superficie.compatibilidades.first(where: { compatibilidade in

            compatibilidade.produto.tipos.contains(where: {
                sujeira.produtos.contains($0)
            })

        }) else {

            return nil
        }

        // 2. Garantir nível válido

        let nivel = max(
            0,
            min(
                nivelSujeira,
                compatibilidade.quantidade.count - 1
            )
        )

        // 3. Quantidade baseada no nível

        let quantidade = compatibilidade.quantidade[nivel]

        // 4. Ferramentas necessárias

        var ferramentas: [Ferramenta] = [
            compatibilidade.ferramenta
        ]

        // sujeira pesada usa escova automaticamente
        if sujeira.potencia == .alta {
            if !ferramentas.contains(.escova) {
                ferramentas.append(.escova)
            }
        }

        // 5. Resultado

        return ResultadoLimpeza(
            produtoIdeal: compatibilidade.produto,
            quantidade: quantidade,
            ferramentas: ferramentas,
            naoMisturar: compatibilidade.produto.naoMisturarCom,
            receita: sujeira.receita
        )
    }
}
