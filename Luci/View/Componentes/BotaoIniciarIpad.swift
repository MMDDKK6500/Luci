import SwiftUI

struct BotaoIniciarIpad: View {
    
    var body: some View {
        
        NavigationLink("Iniciar", value: Rotas.mistura)
            .font(.custom("Asap", size: 28))
            .fontWeight(.bold)
            .foregroundStyle(Color.white)
            
            .frame(width: 420, height: 82)
            
            .background(
                .ultraThinMaterial,
                in: Capsule()
            )
            
            .overlay {
                
                Capsule()
                    .stroke(
                        Color.white.opacity(0.45),
                        lineWidth: 1.5
                    )
            }
            
            .shadow(
                color: .black.opacity(0.18),
                radius: 12,
                x: 0,
                y: 6
            )
            
            .buttonStyle(.plain)
    }
}

#Preview {
    
    NavigationStack {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            BotaoIniciarIpad()
        }
    }
}
