import SwiftUI

struct InfoButton: View {
    
    var body: some View {
        ZStack {
                Circle()
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
                    .frame(width: 40, height: 40)
                
                Circle()
                    .fill(Color.white.opacity(0.15))
                    .frame(width: 3, height: 46)
                
                Image("Lampada")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                NavigationLink("", value: Rotas.saibamais)
            }
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            InfoButton()
        }
    }
}
