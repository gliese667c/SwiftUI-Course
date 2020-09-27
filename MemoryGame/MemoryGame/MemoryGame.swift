//
//  MemoryGame.swift
//  MemoryGame
//
//  Created by Leslie Liu on 2020-09-26.
//

import Foundation
struct MemoryGame<CardContent> {
    var cards:[CardModel<CardContent>]
    
    init(cardContents:[CardContent]) {
        cards = []
        for cardContent in cardContents {
            cards.append(CardModel<CardContent>(id: UUID(), isFaceUp: true, content: cardContent))
            cards.append(CardModel<CardContent>(id: UUID(), isFaceUp: false, content: cardContent))
        }
        cards.shuffle()
    }
    
    mutating func chooseCard(card:CardModel<CardContent>){
        let index = self.index(of: card)
        cards[index].isFaceUp.toggle()
        
        print("chose card \(card)")
    }
    func index(of card:CardModel<CardContent>) -> Int {
        for index in 0..<cards.count {
            if card.id == cards[index].id {
                return index
            }
        }
        return 0
    }

}

struct CardModel<CardContent>: Identifiable {
    var id: UUID
    var isFaceUp: Bool
    var content: CardContent
}
