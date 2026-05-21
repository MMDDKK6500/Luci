//
//  Route.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import Foundation
import SwiftUI
import Combine

class Router: ObservableObject {
    @Published var path = NavigationPath()
}


// Rotacionador
struct RouterView: View {
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            
            //QUando criar SplashView, tirar o comentário dessa linha, fazer o msm pras outras telas
//                SplashView()
            
            ContentView()
            
            .navigationDestination(for: Rotas.self) { destino in
                switch destino {
                case .splash:
//                        SplashView()
                    MisturaView()
                case .mistura:
                    MisturaView()
                case .transicao:
//                        TransicaoView()
                    MisturaView()
                case .resultado:
//                        ResultadoView()
                    MisturaView()
                case .saibamais:
//                        NoticiasView()
                    MisturaView()
                }
            }
        }
    }
    
}
