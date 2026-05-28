//
//  FecharButtonIpad.swift
//  Luci
//
//  Created by Isabella Avelina on 27/05/26.
//


import SwiftUI

struct FecharButtonIpad: View {
    
    let acao: () -> Void
    
    var body: some View {
        
        Button {
            acao()
        } label: {
            
            Image(systemName: "xmark")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(Color("Texto"))
                .frame(width: 43, height: 43)
                .background(
                    .ultraThinMaterial,
                    in: Circle()
                )
                .overlay {
                    
                    Circle()
                        .stroke(
                            Color.white.opacity(0.35),
                            lineWidth: 1
                        )
                }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    
    ZStack {
        
        Color.black
            .ignoresSafeArea()
        
        FecharButtonIpad {
            
        }
    }
}
