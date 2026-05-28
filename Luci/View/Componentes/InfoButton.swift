import SwiftUI

struct InfoButton: View {
    
    var body: some View {
        
        NavigationLink {
            SaibaMaisPage()
        } label: {
            
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
                    .frame(width: 54, height: 54)
                
                Circle()
                    .fill(Color.white.opacity(0.15))
                    .frame(width: 46, height: 46)
                
                Image("Lampada")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 45)
            }
        }
        .buttonStyle(.plain)
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
