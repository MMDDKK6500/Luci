import SwiftUI

struct SaibaMaisPageIpad: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var cardSelecionado: CardInfo?
    
    let columns = [
        GridItem(.flexible(), spacing: 24),
        GridItem(.flexible(), spacing: 24)
    ]
    
    let cards = [
        
        CardInfo(
            imagem: "CardMisturas",
            titulo: "Como fazer misturas",
            descricao: "Maneira correta se realizar misturas para limpeza",
            conteudo: "Misturas químicas acontecem quando duas ou mais substâncias são unidas sem perder suas características. Algumas combinações podem formar reações perigosas, liberando gases tóxicos, causando queimaduras e danos à saúde e às superfícies.",
            problemas: [
                ProblemaInfo(titulo: "Liberação de gases", descricao: "Misturas químicas podem liberar vapores tóxicos perigosos."),
                ProblemaInfo(titulo: "Queimaduras químicas", descricao: "Produtos incompatíveis podem causar irritações e queimaduras na pele."),
                ProblemaInfo(titulo: "Reações inesperadas", descricao: "Algumas combinações podem gerar substâncias nocivas ao organismo.")
            ],
            riscos: "Misturas realizadas sem conhecimento químico podem causar intoxicações, alergias, danos respiratórios e acidentes domésticos."
        ),
        
        CardInfo(
            imagem: "CardTrends",
            titulo: "As trends",
            descricao: "Desafios e vídeos satisfatório de limpeza e toque causam problemas",
            conteudo: "As trends de limpeza viralizaram nas redes sociais mostrando misturas exageradas de produtos químicos apenas pelo efeito visual. Muitas dessas combinações podem liberar gases tóxicos, causar intoxicações e incentivar o uso incorreto de produtos.",
            problemas: [
                ProblemaInfo(titulo: "Tendências perigosas", descricao: "Misturas virais podem causar intoxicações e alergias."),
                ProblemaInfo(titulo: "Uso exagerado", descricao: "Excesso de produtos químicos prejudica a saúde e o ambiente."),
                ProblemaInfo(titulo: "Falsa segurança", descricao: "Nem tudo que viraliza é seguro para repetir em casa.")
            ],
            riscos: "A reprodução dessas trends pode causar problemas respiratórios, alergias e acidentes domésticos."
        ),
        
        CardInfo(
            imagem: "CardFakeNews",
            titulo: "Fake news",
            descricao: "Como as Fake News de limpeza afetam os usuários",
            conteudo: "As fake news sobre misturas “milagrosas” se espalham rapidamente na internet prometendo limpeza extrema, clareamento da pele e emagrecimento, mas muitas dessas receitas não possuem comprovação científica e podem causar intoxicações, queimaduras e problemas respiratórios.",
            problemas: [
                ProblemaInfo(titulo: "Fake detox", descricao: "Receitas milagrosas podem causar problemas gastrointestinais."),
                ProblemaInfo(titulo: "Manchas na pele", descricao: "Limão e substâncias ácidas podem causar queimaduras e manchas."),
                ProblemaInfo(titulo: "Informação perigosa", descricao: "Fake news incentivam misturas sem comprovação científica.")
            ],
            riscos: "Misturas divulgadas sem orientação profissional podem causar danos permanentes à saúde e criar uma falsa sensação de segurança."
        ),
        
        CardInfo(
            imagem: "CardProduto",
            titulo: "Título Card",
            descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit muito bem descrito",
            conteudo: "A limpeza segura exige utilizar os produtos corretos para cada superfície, evitando misturas perigosas e substâncias abrasivas. Pisos laminados, madeira, mármore, carpetes e pedras naturais possuem restrições específicas e podem sofrer danos permanentes quando limpos de forma inadequada.",
            problemas: [
                ProblemaInfo(titulo: "Danos às superfícies", descricao: "Produtos abrasivos podem desgastar e manchar materiais."),
                ProblemaInfo(titulo: "Produtos incompatíveis", descricao: "Ácidos e cloro podem danificar superfícies delicadas."),
                ProblemaInfo(titulo: "Vapores tóxicos", descricao: "Misturas inadequadas podem liberar gases prejudiciais.")
            ],
            riscos: "Utilizar produtos incorretos pode causar danos às superfícies e riscos à saúde, como intoxicações e irritações respiratórias."
        )
    ]
    
    var body: some View {
        
        ZStack {
            
            Color("Background")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                ZStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 55)
                    
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(Color("Card"))
                                .frame(width: 60, height: 48)
                                .background(Color("Texto"), in: Circle())
                        }
                        .buttonStyle(.plain)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal, 32)
                .padding(.top, 30)
                
                Text("Conheça mais")
                    .font(.custom("Asap", size: 34))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("Texto"))
                    .padding(.top, 30)
                
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(cards) { card in
                        Button {
                            cardSelecionado = card
                        } label: {
                            CardSaibaMais(
                                imagem: card.imagem,
                                titulo: card.titulo,
                                descricao: card.descricao
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }
                .frame(width: 720)
                .padding(.top, 34)
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .sheet(item: $cardSelecionado) { card in
            SheetCardInfo(card: card)
                .presentationDetents([.large])
                .presentationCornerRadius(28)
                .presentationBackground(Color("Card"))
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    NavigationStack {
        SaibaMaisPageIpad()
    }
}
