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
                Text("Variaveis selecionadas")
                    .foregroundStyle(Color("TextoEscuro"))
                    .font(Font.custom("Asap", size: 28))
                    .fontWeight(.semibold)
                
                Text(router.qualSuperficie.nome)
                    .foregroundStyle(Color("TextoEscuro"))
                    .fontWeight(.semibold)
                    .padding(4)
                    .padding(.horizontal, 5 )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("TextoEscuro"), lineWidth: 1.5)
                    )
                Text(router.tipoDeSujeira.nome)
                    .foregroundStyle(Color("TextoEscuro"))
                    .fontWeight(.semibold)
                    .padding(4)
                    .padding(.horizontal, 5 )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("TextoEscuro"), lineWidth: 1.5)
                    )
                
                Text(String(router.nivel))
                    .foregroundStyle(Color("TextoEscuro"))
                    .fontWeight(.semibold)
                    .padding(4)
                    .padding(.horizontal, 5 )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("TextoEscuro"), lineWidth: 1.5)
                    )
                
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
