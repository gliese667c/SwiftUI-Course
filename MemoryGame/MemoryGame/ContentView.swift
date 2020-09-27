//
//  ContentView.swift
//  MemoryGame
//
//  Created by Leslie Liu on 2020-09-26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        HStack(spacing: 8) {
            ForEach(viewModel.cards) { item in
                CardView(card: item)
                    .onTapGesture {
                    viewModel.chooseCard(card: item)
                }
            }
        }
        .padding()
    }
}
struct CardView: View {
    var card:CardModel<String>
    let cornerRadius: CGFloat = 25.0
    let lineWidth: CGFloat = 2
    let fontScaleFactor: CGFloat = 0.75
    var body: some View{
        GeometryReader(content: { geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius:cornerRadius,style:.continuous)
                        .stroke(lineWidth: lineWidth)
                        .contentShape(Rectangle())
                    Text(card.content)
                }else {
                    
                    RoundedRectangle(cornerRadius:cornerRadius,style:.continuous)
                }
            }
            .foregroundColor(.blue)
            .font(
                .system(
                    size: min(geometry.size.width,geometry.size.height)*fontScaleFactor
                )
            )
        })
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
