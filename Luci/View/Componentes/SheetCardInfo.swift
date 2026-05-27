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
                    
                    // TOPO
                    ZStack {
                        
                        Text(card.titulo)
                            .font(.custom("Asap", size: 25))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                        
                        HStack {
                            
                            Spacer()
                            
                            // X DIFERENTE PARA IPAD E IPHONE
                            if UIDevice.current.userInterfaceIdiom == .pad {
                                
                                FecharButtonIpad {
                                    dismiss()
                                }
                                .padding(.trailing, 20)
                                
                            } else {
                                
                                FecharButton {
                                    dismiss()
                                }
                                .padding(.trailing, 47)
                            }
                        }
                    }
                    .frame(height: 64)
                    .background(Color("Card"))
                    
                    // IMAGEM
                    Image(card.imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 220)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    
                    // CONTEÚDO
                    VStack(alignment: .leading, spacing: 18) {
                        
                        Text(card.titulo)
                            .font(.custom("Asap", size: 32))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                        
                        Text(card.conteudo)
                            .font(.custom("Asap", size: 14))
                            .foregroundStyle(
                                Color("Texto").opacity(0.9)
                            )
                        
                        // PROBLEMAS
                        Text("Problemas")
                            .font(.custom("Asap", size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                            .padding(.top, 8)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            
                            ForEach(card.problemas) { problema in
                                
                                ProblemaRow(
                                    titulo: problema.titulo,
                                    descricao: problema.descricao
                                )
                            }
                        }
                        
                        // RISCOS
                        Text("Riscos")
                            .font(.custom("Asap", size: 22))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("Texto"))
                            .padding(.top, 8)
                        
                        Text(card.riscos)
                            .font(.custom("Asap", size: 16))
                            .foregroundStyle(
                                Color("Texto").opacity(0.9)
                            )
                    }
                    .padding(.horizontal, 45)
                    .padding(.vertical, 28)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
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
