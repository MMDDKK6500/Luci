
//
//  PickerButtonBackground.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 26/05/26.
//

import SwiftUI

struct SujeiraPickerButton: View {
    
    @Namespace var animation
    
    @Binding var sujeira: Sujeira
    var sujeira2: Sujeira
    
    var body: some View {
        Button {

            withAnimation(
                .spring(
                    response: 0.35,
                    dampingFraction: 0.75
                )
            ) {
                sujeira = sujeira2
            }

        } label: {

            Text(sujeira2.nome)
                .font(.custom("Asap", size: 15))
                .fontWeight(.semibold)
                .foregroundStyle(Color("Texto"))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)

                .background {
                    if sujeira == sujeira2 {
                        
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color("Azul"))
                        
                        // EFEITO DE PASSAGEM
                            .matchedGeometryEffect(
                                id: "TAB",
                                in: animation
                            )
                        
                            .padding(4)
                        
                    }
                }
        }
        .buttonStyle(.plain)
    }
}
