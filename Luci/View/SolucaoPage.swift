//
//  SolucaoPage.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

//
//  TransformacaoPage.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

import SwiftUI

struct SolucaoPage: View {
    
    var body: some View {
        
        ZStack {
            
            Image("Fundotransformacao")
                .resizable()
                .scaledToFill()
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height
                )
                .clipped()
                .ignoresSafeArea()
            
        }
    }
}

#Preview {
    SolucaoPage()
}
