import SwiftUI

struct PickerSuperficie: View {

    @State private var superficieSelecionada: String = "Porcelanato"

    @Namespace private var animation

    let superficies = [
        "Porcelanato",
        "Madeira",
        "Vidro de box"
    ]

    var body: some View {

        ZStack {

          

            VStack(alignment: .leading, spacing: 12) {

                Text("Qual superfície")
                    .font(.custom("Asap", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("Texto"))
                HStack(spacing: 0) {

                    ForEach(superficies, id: \.self) { superficie in

                        Button {

                            withAnimation(
                                .spring(
                                    response: 0.35,
                                    dampingFraction: 0.75
                                )
                            ) {
                                superficieSelecionada = superficie
                            }

                        } label: {

                            Text(superficie)
                                .font(.custom("Asap", size: 15))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color("Texto"))            .frame(maxWidth: .infinity)
                                .padding(.vertical, 16)

                                .background {

                                    if superficieSelecionada == superficie {

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
    PickerSuperficie()
}
