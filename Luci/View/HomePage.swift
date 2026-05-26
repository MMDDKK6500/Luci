import SwiftUI

struct HomePage: View {
    
    var body: some View {
            ZStack {
                
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack(spacing: 24) {
                        
                        HStack {
                            Spacer()
                            
                            Image("Logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 55)
                            
                            Spacer()
                        }
                        .padding(.top, 36)
                        
                        Image("Baldedeagua")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 210, height: 235)
                        
                        Text("Vamos limpar?")
                            .font(
                                Font.custom("Asap", size: 28)
                                    .weight(.semibold)
                            )
                            .foregroundStyle(Color("Texto"))
                        
                        PickerSuperficie()
                        
                        PickerSujeira()
                        
                        NivelSujeiraView()
                        
                        BotaoGerarSolucao()
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    HomePage()
}
