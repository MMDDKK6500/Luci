//
//  CardSaibaMais.swift
//  Luci
//
//  Created by Isabella Avelina on 26/05/26.
//

import SwiftUI

struct CardSaibaMais: View {
    
    let imagem: String
    let titulo: String
    let descricao: String
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Image(imagem)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text(titulo)
                    .font(.custom("Asap", size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Text(descricao)
                    .font(.custom("Asap", size: 14))
                    .foregroundStyle(.primary)
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            .background(Color("Card"))
        }
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 3)
    }
}
