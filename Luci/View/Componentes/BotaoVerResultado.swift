import SwiftUI

struct BotaoVerResultado: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        NavigationLink {
            SolucaoPage()
            
        } label: {
            
            Text("Ver resultado")
                .font(.custom("Asap", size: 18))
                .fontWeight(.bold)
                .foregroundStyle(
                    Color(.white)
                )
                .frame(width: 320, height: 54)
                
                // LIQUID GLASS OFICIAL APPLE
                // nn????
                .background(
                    .ultraThinMaterial,
                    in: Capsule()
                )
                
                // BORDA APPLE
                .overlay {
                    
                    Capsule()
                        .stroke(
                            Color.white.opacity(0.45),
                            lineWidth: 1
                        )
                }
        }
        .buttonStyle(.plain)
        .onSubmit {
            router.path.removeLast()
        }
    }
}

#Preview {
    
    ZStack {
        
        Image("fundo_transicao_luci")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
        
        BotaoVerResultado()
    }
}
