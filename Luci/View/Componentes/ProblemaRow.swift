//
//  ProblemaRow.swift
//  Luci
//
//  Created by Isabella Avelina on 26/05/26.
//

import SwiftUI

struct ProblemaRow: View {
    
    let titulo: String
    let descricao: String
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 14) {
            
            ZStack {
                
                Circle()
                    .fill(Color("Interrogacao"))
                    .frame(width: 34, height: 34)
                
                Image(systemName: "exclamationmark")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(Color("Card"))
            }
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text(titulo)
                    .font(.custom("Asap", size: 18))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("Texto"))
                
                Text(descricao)
                    .font(.custom("Asap", size: 15))
                    .foregroundStyle(
                        Color("Texto").opacity(0.9)
                    )
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    
    ZStack {
        
        Color("Card")
            .ignoresSafeArea()
        
        ProblemaRow(
            titulo: "Risco de saúde",
            descricao: "Intoxicação respiratória causada pela liberação de gases tóxicos."
        )
        .padding()
    }
}
