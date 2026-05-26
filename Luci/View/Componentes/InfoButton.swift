import SwiftUI

struct InfoButton: View {
    
    var body: some View {
        
        Button {
            
            print("Abrir informações")
            
        } label: {
            
            Image(systemName: "info")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(Color("Texto"))
                .frame(width: 54, height: 54)
                .background(
                    Circle()
                        .fill(Color.white.opacity(0.7))
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    
    ZStack {
        
        Color("Background")
            .ignoresSafeArea()
        
        InfoButton()
    }
}
