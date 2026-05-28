import SwiftUI

struct SolucaoPage: View {
    
    @EnvironmentObject var router: Router
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    // TOPO
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
                        
                        // LOGO
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 55)
                        
                        Spacer()
                        
                        // INFO BUTTON
                        InfoButton()
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                    
                    // IMAGEM
                    Image("Baldedeagua")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 300)
                    
                    // TITULO
                    Text("Solução gerada")
                        .font(.custom("Asap", size: 28))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("Texto"))
                        .padding(.bottom, 20)
                    
                    // CARD PRODUTOS
                    HStack {
                        
                        VStack(alignment: .leading) {
                            
                            Text("Produtos para Mistura")
                                .foregroundStyle(.black)
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            
                            ForEach(
                                router.resultado.produtosCompletos,
                                id: \.self
                            ) { produto in
                                
                                if let index = router
                                    .resultado
                                    .produtosCompletos
                                    .firstIndex(of: produto) {
                                    
                                    if index > 0 {
                                        
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundStyle(.black)
                                    }
                                }
                                
                                Text(produto.capitalized)
                                    .foregroundStyle(.black)
                            }
                        }
                        
                        Spacer()
                        
                        Image("Frasco")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 100)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Azul"))
                    )
                    .padding(.horizontal, 20)
                    
                    // CARD MISTURA
                    HStack {
                        
                        VStack(alignment: .leading) {
                            
                            Text("Como fazer a mistura")
                                .foregroundStyle(.black)
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            
                            Text(router.resultado.instruções)
                                .foregroundStyle(.black)
                        }
                        
                        Spacer()
                        
                        Image("Luva")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Roxo"))
                    )
                    .padding(.horizontal, 20)
                    
                    // CARD FERRAMENTAS
                    HStack {
                        
                        VStack(alignment: .leading) {
                            
                            Text("Ferramentas para o uso")
                                .foregroundStyle(.black)
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            
                            ForEach(
                                router.resultado.ferramentas,
                                id: \.self
                            ) { ferramenta in
                                
                                if let index = router
                                    .resultado
                                    .ferramentas
                                    .firstIndex(of: ferramenta) {
                                    
                                    if index > 0 {
                                        
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundStyle(.black)
                                    }
                                    
                                    let numero = String(index + 1)
                                    
                                    Text(
                                        numero + ". "
                                        + ferramenta.rawValue.capitalized
                                    )
                                    .foregroundStyle(.black)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        Image("Vassoura")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Verde"))
                    )
                    .padding(.horizontal, 20)
                    
                    // CARD NÃO FAZER
                    HStack {
                        
                        VStack(alignment: .leading) {
                            
                            Text("O que não se deve fazer")
                                .foregroundStyle(.black)
                                .font(.title2)
                                .bold()
                                .padding(.bottom, 5)
                            ForEach(router.resultado.naoFazer, id: \.self) { naoPode in
                                
                                if let index = router.resultado.naoFazer.firstIndex(of: naoPode) {
                                    if (index > 0) {
                                        Rectangle()
                                            .frame(width: .infinity, height: 1)
                                            .foregroundStyle(.black)
                                    }
                                    
                                    Text(naoPode.nome)
                                        .foregroundStyle(.black)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        Image("NaoFazer")
                            .scaledToFit()
                            .frame(maxHeight: 170)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("Rosa"))
                    )
                    .padding(.horizontal, 20)
                }
                .padding(.bottom, 40)
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    NavigationStack {
        SolucaoPage()
            .environmentObject(Router())
    }
}
