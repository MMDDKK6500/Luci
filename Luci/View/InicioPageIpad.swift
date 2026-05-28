import SwiftUI

struct InicioPageIpad: View {
    
    var body: some View {
        
        ZStack {
            
//            Image("Fundoinicio")
//                .resizable()
//                .scaledToFill()
//
//                .rotationEffect(.degrees(90))
//                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("Logogrande")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 236, height: 126)
                
                Spacer()
                
                BotaoIniciarIpad()
                    .padding(.bottom, 70)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
        }
    }
}

#Preview {
    NavigationStack {
        InicioPageIpad()
    }
}
