//
//  BaldeAnimado.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

import SwiftUI

struct BaldeAnimado: View {
    
    @State private var mover = false
    
    var body: some View {
        
        Image("Baldetransformacao")
            .resizable()
            .scaledToFit()
            .frame(width: 440, height: 300)
            // ANIMAÇÃO
            .rotationEffect(
                .degrees(mover ? 15 : -15)
            )
        
            .animation(
                .easeInOut(duration: 1.2)
                .repeatForever(autoreverses: true),
                value: mover
            )
        
            .onAppear {
                mover = true
            }
    }
}

#Preview {
    
    ZStack {
        
        Color("Background")
            .ignoresSafeArea()
        
        BaldeAnimado()
    }
}
