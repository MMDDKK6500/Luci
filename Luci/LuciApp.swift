//
//  LuciApp.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 15/05/26.
//

import SwiftUI

@main
struct LuciApp: App {
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                
//                SplashView()
                
                ContentView()
                
                .navigationDestination(for: Rotas.self) { destino in
                    switch destino {
                    case .splash:
//                        SplashView()
                        MisturaView()
                            .navigationTitle("Mistura")
                            .navigationBarBackButtonHidden(true)
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
}
