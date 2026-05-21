//
//  MisturaViewModel.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import SwiftUI
import Foundation
import Combine


// Colocar coisas como funções, lógica e tal.
class MisturaViewModel: ObservableObject {
    
    func resultar(superfice: Superficie, tempo: Int, nivelSujeira: Int, adicional: Adicional) -> String {
        var resultado = superfice.receita
        
        for i in 0...superfice.quantidades.count - 1 {
            if let range = resultado.range(of:"{QUANTIDADE}") {
                resultado = resultado.replacingCharacters(in:range, with: superfice.quantidades[i][nivelSujeira])
            }
        }
        
        return resultado
    }
    
}
