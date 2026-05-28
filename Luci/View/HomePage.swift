import SwiftUI

struct HomePage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    // TOPO
                    ZStack {
                        
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 55)
                        
                        HStack {
                            
                            // BOTÃO VOLTAR
                            Button {
                                dismiss()
                            } label: {
                                
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(Color("Texto"))
                                    .frame(width: 42, height: 42)
                                    .background(
                                        .ultraThinMaterial,
                                        in: Circle()
                                    )
                            }
                            .buttonStyle(.plain)
                            
                            Spacer()
                            
                            // BOTÃO INFO
                            InfoButton()
                                .padding(.trailing, -5)
                        }
                    }
                    .padding(.top, 20)
                    
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
        .toolbar(.hidden)
    }
}

#Preview {
    NavigationStack {
        HomePage()
            .environmentObject(Router())
    }
}
