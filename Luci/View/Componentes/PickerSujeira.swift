import SwiftUI

struct PickerSujeira: View {
    
    @EnvironmentObject var router: Router

    @Namespace private var animation
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    var body: some View {
            VStack(alignment: .leading, spacing: 12) {

                Text("Tipo de sujeira")
                    .font(.custom("Asap", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("Texto"))
                HStack(spacing: 0) {
                    
                    
//                    for sujeira in Sujeiras.todos {
//                        PickerButton(sujeira: $SujeiraSelecionada, sujeira2: sujeira)
//                    }
                    
                    
                    ForEach(Sujeiras.todos, id: \.self) { sujeira in
                        SujeiraPickerButton(sujeira: $router.tipoDeSujeira, sujeira2: sujeira)
                    }
                    
                }

                // FUNDO DO PICKER
                .background(

                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("FundoBotão"))

                        .overlay {

                            RoundedRectangle(cornerRadius: 30)
                                .stroke(
                                    Color.white.opacity(0.6),
                                    lineWidth: 1
                                )
                        }

                        .shadow(
                            color: .black.opacity(0.08),
                            radius: 10,
                            x: 0,
                            y: 4
                        )
                )
            }
            .padding(.horizontal)
    }
}

#Preview {
    PickerSujeira()
}
