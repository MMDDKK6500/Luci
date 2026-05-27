//
//  SlideNivel Sujeira.swift
//  Luci
//
//  Created by Isabella Avelina on 22/05/26.
//

import SwiftUI

struct NivelSujeiraView: View {

    @EnvironmentObject var router: Router

    var textoNivel: String {
        switch router.nivel {
        case 0: return "Leve"
        case 1: return "Média"
        default: return "Alta"
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            Text("Nível de sujeira")
                .font(.custom("Asap", size: 20))
                .fontWeight(.medium)
                .foregroundStyle(Color("Texto"))

            Slider(value: $router.nivel, in: 0...2, step: 1)
                .tint(Color("Azul"))

            HStack {
                Text("Leve")
                Spacer()
                Text("Média")
                Spacer()
                Text("Alta")
            }
            .font(.custom("Asap", size: 15))
            .fontWeight(.semibold)
            .foregroundStyle(Color("Texto"))
        }
        .padding()
    }
}

#Preview {
    NivelSujeiraView()
}
