import SwiftUI

struct HomePageIpad: View {
    
    var body: some View {
            
            ZStack {
                
                Color("Background")
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    Spacer()
                    
                    // CONTEÚDO
                    HStack(spacing: 90) {
                        
                        // BALDE
                        Image("Baldedeagua")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 430, height: 430)
                        
                        // LADO DIREITO
                        VStack(alignment: .leading, spacing: 28) {
                            
                            Text("Vamos limpar?")
                                .font(.custom("Asap", size: 38))
                                .fontWeight(.bold)
                                .foregroundStyle(Color("Texto"))
                                .frame(maxWidth: .infinity,
                                       alignment: .center)
                            
                            VStack(alignment: .leading, spacing: 24) {
                                
                                PickerSuperficie()
                                
                                PickerSujeira()
                                
                                NivelSujeiraView()
                            }
                            
                            BotaoGerarSolucao()
                                .frame(maxWidth: .infinity,
                                       alignment: .center)
                                .padding(.top, 10)
                        }
                        .frame(width: 430)
                    }
                    .padding(.horizontal, 70)
                    
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItem(placement: .title) {
                    Image("Logo")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    InfoButton()
                }
                .sharedBackgroundVisibility(Visibility.hidden)
            }
        }
}

#Preview {
    HomePageIpad()
}
