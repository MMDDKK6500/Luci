//
//  TransformacaoPage.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

import SwiftUI

struct TransformacaoPage: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        ZStack {
            
            // BACKGROUND
            Image("Fundotransformacao")
                .resizable()
                .scaledToFill()
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height
                )
                .clipped()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                
                // BALDE
                BaldeAnimado()
                
                Spacer()
                
                // BOTÃO
                BotaoVerResultado()
                    .padding(.bottom, 80)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
        }
        .onAppear {
            router.resultar()
        }
        .toolbar {
            ToolbarItem(placement: .title) {
                Image("Logo")
            }
            .sharedBackgroundVisibility(Visibility.hidden)
        }
    }
}

#Preview {
    TransformacaoPage()
}
