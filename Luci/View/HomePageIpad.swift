import SwiftUI

struct HomePageIpad: View {
    
    var body: some View {
            
            ZStack {
                
                Color("Background")
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    // TOPO
                    ZStack {
                        
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 60)
                        
                        HStack {
                            
                            Spacer()
                            
                            InfoButton()
                        }
                        .padding(.trailing, 40)
                    }
                    .padding(.top, 26)
                    
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
        }
}

#Preview {
    HomePageIpad()
}
