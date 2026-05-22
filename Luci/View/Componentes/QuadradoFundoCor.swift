//
//  QuadradoFundoCor.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 22/05/26.
//

import SwiftUI

struct QuadradoFundoCor: View {
    
    
    @State var text: String
    @State var color: Color
    @State var switchColor: Bool
    
    init(text: String, color: Color) {
        self.text = text
        self.color = color
        _switchColor = State(initialValue: false)
    }
    
    init(text: String, color: Color, switchColor: Bool) {
        self.text = text
        self.color = color
        self.switchColor = switchColor
    }

    
    var body: some View {
        Text(text)
            .foregroundStyle(switchColor ? Color.white : .primary)
            .padding()
            .font(Font.custom("Asap", size: 18))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(color)
            )
    }
}

#Preview {
    QuadradoFundoCor(text: "aaaa", color: .indigo)
}
