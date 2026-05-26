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
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack {
            Image("Logo")
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
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 5)
                        Text("Água oxigenada 500ml")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Água oxigenada 500ml")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Água oxigenada 500ml")
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
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 5)
                        Text("Misture em água")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Adicione o líquido")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Mecha tudo no recepiente")
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
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 5)
                        Text("Vassoura")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Escovão")
                        Rectangle()
                            .frame(width: .infinity, height: 1)
                        Text("Rodô")
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
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 5)
                        Text("Não deve-se misturar nesse produto álcool ou água oxigenada, cuidado com o uso exagerado de sabão")
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
}

#Preview {
    SolucaoPage()
}
