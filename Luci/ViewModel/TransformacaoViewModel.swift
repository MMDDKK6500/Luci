//
//  TransformacaoViewModel.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 28/05/26.
//

import Foundation
import Combine

class TransformacaoViewModel: ObservableObject {
    @Published var nivel: Int = 0
    
    func nivelString(nivel: Double) -> String {
        switch (nivel) {
        case 0:
            return "Leve"
        case 1:
            return "Média"
        case 2:
            return "Alta"
        default:
            return "Unknown"
        }
    }
    
}
