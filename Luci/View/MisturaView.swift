//
//  MisturaView.swift
//  Luci
//
//  Created by João Duque Nardelli Wandermuren on 21/05/26.
//

import SwiftUI

struct MisturaView: View {
    
    // Usar view model para funções e lógicas
    @StateObject var viewModel = MisturaViewModel()
    
    // Receber router pelo enviromet
    @EnvironmentObject var router: Router;
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        QuadradoFundoCor(text: router.texto, color: .indigo)
    }
}

#Preview {
    // SE O .enviromentObject(Router()) NÃO ESTIVER AQUI, TUDO CRASHA E VAI PRA ribeirinho ou sla nn posso xingar
    MisturaView().environmentObject(Router())
}
