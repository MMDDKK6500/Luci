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
//                .padding(.bottom, 100)
            
            ScrollView {
            Text("Solução gerada")
                .font(.custom("Asap", size: 28))
                .fontWeight(.medium)
                .foregroundStyle(Color("Texto"))
                .padding(.bottom, 20)
            
                HStack {
                    VStack(alignment: .leading) {
                        Text("Produtos para Mistura")
                            .font(.title3)
                            .bold()
                        Text("Água oxigenada 500ml")
                        Text("Água oxigenada 500ml")
                        Text("Água oxigenada 500ml")
                    }
                    Spacer()
                    Image("Frasco")
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
                            .font(.title3)
                            .bold()
                        Text("Misture em água")
                        Text("Adicione o líquido")
                        Text("Mecha tudo no recepiente")
                    }
                    Spacer()
                    Image("imagem")
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
                            .font(.title3)
                            .bold()
                        Text("Vassoura")
                        Text("Escovão")
                        Text("Rodô")
                    }
                    Spacer()
                    Image("imagem")
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
                            .font(.title3)
                            .bold()
                        Text("Não deve-se misturar nesse produto álcool ou água oxigenada, cuidado com o uso exagerado de sabão")
                    }
                    Spacer()
                    Image("imagem")
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
