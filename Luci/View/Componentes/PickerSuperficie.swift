import SwiftUI

struct PickerSuperficie: View {

    @State private var superficieSelecionada: Superficie = Superficies.porcelanato

    @Namespace private var animation

    var body: some View {

        ZStack {

          

            VStack(alignment: .leading, spacing: 12) {

                Text("Qual superfície")
                    .font(.custom("Asap", size: 20))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("Texto"))
                HStack(spacing: 0) {

                    ForEach(Superficies.todos, id: \.self) { superficie in

                        SuperficiePickerButton(
                            superficie: $superficieSelecionada,
                            superficie2: superficie
                        )
                        
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
