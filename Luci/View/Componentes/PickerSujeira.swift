import SwiftUI

struct PickerSujeira: View {

    @State private var SujeiraSelecionada: String = "Poeira"

    @Namespace private var animation

    let sujeira = [
        "Poeira",
        "Mofo",
        "Gordura"
    ]

    var body: some View {

        ZStack {

          

            VStack(alignment: .leading, spacing: 12) {

                Text("Tipo de sujeira")
                    .font(.custom("Asap", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("Texto"))
                HStack(spacing: 0) {

                    ForEach(sujeira, id: \.self) { sujeira in

                        Button {

                            withAnimation(
                                .spring(
                                    response: 0.35,
                                    dampingFraction: 0.75
                                )
                            ) {
                                SujeiraSelecionada = sujeira
                            }

                        } label: {

                            Text(sujeira)
                                .font(.custom("Asap", size: 15))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color("Texto"))                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)

                                .background {

                                    if SujeiraSelecionada == sujeira {

                                        RoundedRectangle(cornerRadius: 24)
                                            .fill(Color("Azul"))

                                            // EFEITO DE PASSAGEM
                                            .matchedGeometryEffect(
                                                id: "TAB",
                                                in: animation
                                            )

                                            .padding(4)
                                    }
                                }
                        }
                        .buttonStyle(.plain)
                    }
                }

                // FUNDO DO PICKER
                .background(

                    RoundedRectangle(cornerRadius: 30)
                        .fill(.ultraThinMaterial)

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
            .padding()
        }
    }
}

#Preview {
    PickerSujeira()
}
