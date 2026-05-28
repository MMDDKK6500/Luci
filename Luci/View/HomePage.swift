import SwiftUI

struct HomePage: View {
    
    var body: some View {
            ZStack {
                
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        Image("Baldedeagua")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 20)
                            .frame(width: 210, height: 250)
                        
                        Text("Vamos limpar?")
                            .font(
                                Font.custom("Asap", size: 28)
                                    .weight(.semibold)
                            )
                            .foregroundStyle(Color("Texto"))
                        
                        PickerSuperficie()
                            .padding(.vertical, 10)
                        
                        PickerSujeira()
                            .padding(.vertical, 10)

                        NivelSujeiraView()
                            .padding(.vertical, 10)
                        
                        Spacer()
                        
                        BotaoGerarSolucao()
                            .padding(.top, 10)
                    }
                    .padding(.horizontal, 20)
//                    .padding(.bottom, 40)
            }
        }
            .toolbar {
                ToolbarItem(placement: .title) {
                    Image("Logo")
                }
                .sharedBackgroundVisibility(Visibility.hidden)
            }

    }
}

#Preview {
    HomePage()
        .environmentObject(Router())
}
