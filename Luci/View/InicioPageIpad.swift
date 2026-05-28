import SwiftUI

struct InicioPageIpad: View {
    
    var body: some View {
        
        ZStack {
            
            GeometryReader { geo in
                Image("Fundoinicio")
                  .resizable()
                  .scaledToFill()
                  .rotationEffect(.degrees(90))
                  .frame(width: geo.size.width, height: geo.size.height)
            }
            
            VStack {
                
                Spacer()
                
                Image("Logogrande")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                
                Spacer()
                
                BotaoIniciarIpad()
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    NavigationStack {
        InicioPageIpad()
    }
}
