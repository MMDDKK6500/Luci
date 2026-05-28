import SwiftUI

struct BotaoGerarSolucao: View {
    
    @EnvironmentObject var router: Router

    var body: some View {

        Button {
            router.path.append(Rotas.transicao)
        } label: {

            Text("Gerar Solução")
                .font(.custom("Asap", size: 22))
                .fontWeight(.bold)
                .foregroundStyle(Color("Texto"))
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
        }
        .buttonStyle(.plain)
    }
}

#Preview {

    ZStack {

        Color("Background")
            .ignoresSafeArea()

        BotaoGerarSolucao()
            .environmentObject(Router())
    }
}
