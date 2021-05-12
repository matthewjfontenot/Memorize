//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Matthew Fontenot on 10/1/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "🍂", "🧟‍♂️"]
        let randoms = Int.random(in: 2...5)
        
        return MemoryGame<String>(numberOfPairsOfCards: randoms) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
