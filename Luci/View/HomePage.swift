import SwiftUI

struct HomePage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    // IMAGEM
                    Image("Baldedeagua")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 20)
                        .frame(width: 210, height: 250)
                    
                    // TITULO
                    Text("Vamos limpar?")
                        .font(
                            Font.custom("Asap", size: 28)
                                .weight(.semibold)
                        )
                        .foregroundStyle(Color("Texto"))
                    
                    // PICKERS
                    PickerSuperficie()
                        .padding(.vertical, 10)
                    
                    PickerSujeira()
                        .padding(.vertical, 10)
                    
                    NivelSujeiraView()
                        .padding(.vertical, 10)
                    
                    Spacer()
                    
                    // BOTÃO
                    BotaoGerarSolucao()
                        .padding(.top, 10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
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
    NavigationStack {
        HomePage()
            .environmentObject(Router())
    }
}
