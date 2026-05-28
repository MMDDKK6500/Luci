//
//  SolucaoPage.swift
//  Luci
//
//  Created by Isabella Avelina on 25/05/26.
//

import SwiftUI

struct SolucaoPageIpad: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                Image("Baldedeagua")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
                //                .padding(.bottom, 100)
                ScrollView {
                    Text("Solução gerada")
                        .font(.custom("Asap", size: 28))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("Texto"))
                        .padding(.bottom, 20)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Produtos para Mistura")
                                .foregroundStyle(Color("TextoEscuro"))
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            Text("Água oxigenada 500ml")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Água oxigenada 500ml")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Água oxigenada 500ml")
                                .foregroundStyle(Color("TextoEscuro"))
                        }
                        Spacer()
                        Image("Frasco")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 100)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Azul"))
                    )
                    .padding(.horizontal, 20)
                    
                    
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Como fazer a mistura")
                                .foregroundStyle(Color("TextoEscuro"))
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            Text("Misture em água")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Adicione o líquido")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Mecha tudo no recepiente")
                                .foregroundStyle(Color("TextoEscuro"))
                        }
                        Spacer()
                        Image("Luva")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Roxo"))
                    )
                    .padding(.horizontal, 20)
                    
                    
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Ferramentas para o uso")
                                .foregroundStyle(Color("TextoEscuro"))
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            Text("Vassoura")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Escovão")
                                .foregroundStyle(Color("TextoEscuro"))
                            Rectangle()
                                .frame(width: .infinity, height: 1)
                                .foregroundStyle(Color("TextoEscuro"))
                            Text("Rodô")
                                .foregroundStyle(Color("TextoEscuro"))
                        }
                        Spacer()
                        Image("Vassoura")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Verde"))
                    )
                    .padding(.horizontal, 20)
                    
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("O que não se deve fazer")
                                .foregroundStyle(Color("TextoEscuro"))
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            Text("Não deve-se misturar nesse produto álcool ou água oxigenada, cuidado com o uso exagerado de sabão")
                                .foregroundStyle(Color("TextoEscuro"))
                        }
                        Spacer()
                        Image("NaoFazer")
                        //                        .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 170)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Rosa"))
                    )
                    .padding(.horizontal, 20)
                }
            }
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
    SolucaoPageIpad()
}
