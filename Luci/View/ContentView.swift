//
//  ContentView.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 15/05/26.
//

import SwiftUI

struct ContentView: View {
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    @State private var selectedFlavor: Flavor = .chocolate
    
    @State private var selectedCoiso: Superficie = Superficies.porcelanato
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var isToggleoOn: Bool = false
    
    @State private var animationAmount: CGFloat = 1;
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            List {
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.segmented)
                

                
                VStack(alignment: .leading) {
                    Text("Nível de sujeira?")
                        .bold()
//                        .font(.largeTitle)
                    
                    Picker("Negocio", selection: $selectedCoiso) {
                        Text("Coisa").tag(Superficies.porcelanato)
                        Text("Outro Coisa").tag(Superficies.outro)
                    }.pickerStyle(.segmented)
                    
                    Slider(
                        value: $speed,
                        in: 0...100,
                        step: 50
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("100")
                    }
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                }
            }
            
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
            
            // value [r para onde ir
            NavigationLink("Tap me!", value: Rota.mistura)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
