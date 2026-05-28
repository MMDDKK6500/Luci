//
//  FecharButton.swift
//  Luci
//
//  Created by Isabella Avelina on 27/05/26.
//

//
//  FecharButton.swift
//  Luci
//

import SwiftUI

struct FecharButton: View {
    
    let acao: () -> Void
    
    var body: some View {
        
        Button {
            acao()
        } label: {
            
            Image(systemName: "xmark")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(Color("Card"))
                .frame(width: 42, height: 42)
                .background(
                    Color("Texto"),
                    in: Circle()
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    
    ZStack {
        
        Color.black
            .ignoresSafeArea()
        
        FecharButton {
            
        }
    }
}
