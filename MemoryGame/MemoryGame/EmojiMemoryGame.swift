//
//  EmojiMemoryGame.swift
//  MemoryGame
//
//  Created by Leslie Liu on 2020-09-26.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let contents =  ["🚑","🐰","❤️"]
        return MemoryGame<String>(cardContents: contents)
    }
    var cards: [CardModel<String>]{
        model.cards
    }
    func chooseCard(card:CardModel<String>){
        model.chooseCard(card: card)
    }
}
