import SwiftUI

struct SheetCardInfo: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let card: CardInfo
    
    var body: some View {
        
        ZStack {
            
            Color("Card")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 0) {
                    
                    ZStack {
                        
                        Text(card.titulo)
                            .font(.custom("Asap", size: 25))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                        
                        HStack {
                            Spacer()
                            
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "xmark")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundStyle(Color("Texto"))
                                    .frame(width: 42, height: 42)
                                    .background(.ultraThinMaterial, in: Circle())
                                    .overlay {
                                        Circle()
                                            .stroke(Color.white.opacity(0.25), lineWidth: 1)
                                    }
                            }
                            .buttonStyle(.plain)
                            .padding(.trailing, 50)
                        }
                    }
                    .frame(height: 64)
                    .background(Color("Card"))
                    
                    Image(card.imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    
                    VStack(alignment: .leading, spacing: 18) {
                        
                        Text(card.titulo)
                            .font(.custom("Asap", size: 32))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                        
                        Text(card.conteudo)
                            .font(.custom("Asap", size: 14))
                            .foregroundStyle(Color("Texto").opacity(0.9))
                        
                        Text("Problemas")
                            .font(.custom("Asap", size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                            .padding(.top, 8)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            ProblemaRow(
                                titulo: "Risco de saúde",
                                descricao: "Intoxicação respiratória causada pela liberação de gases tóxicos."
                            )
                            
                            ProblemaRow(
                                titulo: "Queimaduras",
                                descricao: "Misturas químicas podem causar irritações e queimaduras na pele."
                            )
                        }
                        
                        Text("Riscos")
                            .font(.custom("Asap", size: 22))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                            .padding(.top, 8)
                        
                        Text(card.conteudo)
                            .font(.custom("Asap", size: 16))
                            .foregroundStyle(Color("Texto").opacity(0.9))
                    }
                    .padding(.horizontal, 45)
                    .padding(.vertical, 28)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color("Card"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    
    SheetCardInfo(
        card: CardInfo(
            imagem: "CardFakeNews",
            titulo: "Fake news",
            descricao: "Fake news sobre limpeza",
            conteudo: "Misturas incorretas podem causar riscos à saúde.",
            problemas: [
                ProblemaInfo(
                    titulo: "Risco de saúde",
                    descricao: "Intoxicação respiratória causada por gases tóxicos."
                ),
                
                ProblemaInfo(
                    titulo: "Queimaduras",
                    descricao: "Produtos químicos podem irritar a pele."
                )
            ],
            riscos: "Misturas químicas podem causar intoxicações e problemas respiratórios."
        )
    )
}
