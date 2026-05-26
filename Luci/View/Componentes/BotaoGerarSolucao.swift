//
//  BotaoGerarSolucao.swift
//  Luci
//
//  Created by Isabella Avelina on 22/05/26.
//
import SwiftUI

struct BotaoGerarSolucao: View {

    var body: some View {

        NavigationLink {

            TransformacaoPage()

        } label: {

            Text("Gerar solução")
                .font(.custom("Asap", size: 22))
                .fontWeight(.bold)
                .foregroundStyle(Color("Texto"))
                .frame(width: 320, height: 54)
                .background(
                    Capsule()
                        .fill(Color("Azul").opacity(0.45))
                )
        }
        .buttonStyle(.plain)
    }
}
#Preview {

    ZStack {

        BotaoGerarSolucao()
    }
}
