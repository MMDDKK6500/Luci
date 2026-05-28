import SwiftUI

struct TransformacaoPageIpad: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        ZStack {
            
//            Image("Fundotransformacao")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // LOGO
                Image("LogoInversa")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 95, height: 60)
                    .padding(.top, 30)
                
                Spacer()
                
                HStack(spacing: 5) {
                    
                    // BALDE
                    BaldeAnimadoIpad()
                        .frame(width: 620, height: 620)
                    // VARIÁVEIS
                    VStack(spacing: 20) {
                        
                        Text("Variáveis selecionadas")
                            .font(.custom("Asap", size: 30))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        VStack(spacing: 8) {
                            
                            HStack(spacing: 10) {
                                
                                VariavelTagIpad(
                                    texto: router.qualSuperficie.nome
                                )
                                
                                VariavelTagIpad(
                                    texto: router.tipoDeSujeira.nome
                                )
                            }
                            
                            VariavelTagIpad(
                                texto: "Mancha nível \(router.nivel)"
                            )
                        }
                        
                        BotaoVerResultado()
                            .padding(.top, 24)
                    }
                    .frame(width: 360)
                }
                
                Spacer()
            }
            .padding(.leading, -120)
            .padding(.trailing, 0)
        }
        .onAppear {
            router.resultar()
        }
        .toolbar(.hidden)
    }
}

struct VariavelTagIpad: View {
    
    let texto: String
    
    var body: some View {
        
        Text(texto)
            .font(.custom("Asap", size: 14))
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.horizontal, 18)
            .padding(.vertical, 7)
            .background(
                Capsule()
                    .stroke(Color.white.opacity(0.85), lineWidth: 1.2)
            )
    }
}

#Preview {
    NavigationStack {
        TransformacaoPageIpad()
            .environmentObject(Router())
    }
}
