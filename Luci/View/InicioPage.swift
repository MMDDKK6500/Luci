import SwiftUI

struct InicioPage: View {
    
    var body: some View {
                    
            ZStack {
                
                Image("Fundoinicio")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Image("Logogrande")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 236, height: 126)
                    
                    Spacer()
                    
                    BotaoIniciar()
                        .padding(.bottom, 50)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
    }
}

#Preview {
    InicioPage()
}
