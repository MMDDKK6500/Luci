import SwiftUI

struct BotaoGerarSolucao: View {

    var body: some View {

        NavigationLink("Gerar Solução", value: Rotas.transicao)
                .font(.custom("Asap", size: 22))
                .fontWeight(.bold)
                .foregroundStyle(Color("Texto 1"))
                .frame(width: 320, height: 54)
                .background(
                    
                    Capsule()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color("AzulEscuro"),
                                    Color("AzulEscuro")
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                )
                .buttonStyle(.plain)
    }
}

#Preview {

    ZStack {

        Color("Background")
            .ignoresSafeArea()

        BotaoGerarSolucao()
    }
}
