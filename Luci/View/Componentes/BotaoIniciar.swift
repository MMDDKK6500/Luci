//
//  BotaoIniciar.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

import SwiftUI

struct BotaoIniciar: View {
    
    var body: some View {
        
        NavigationLink("Iniciar", value: Rotas.mistura)
                .font(.custom("Asap", size: 18))
                .fontWeight(.bold)
                .foregroundStyle(
                    Color(.white)
                )
                .frame(width: 320, height: 54)
                
                .background(
                    .ultraThinMaterial,
                    in: Capsule()
                )
                
                .overlay {
                    
                    Capsule()
                        .stroke(
                            Color.white.opacity(0.45),
                            lineWidth: 1
                        )
                }
        .buttonStyle(.plain)
    }
}

#Preview {
    
    ZStack {
        
        BotaoIniciar()
    }
}
