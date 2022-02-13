//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kesh Ramjith on 2022/02/13.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚝", "🚀", "✈️", "🛩", "🚕", "🚙", "🏎", "🚔", "🚗", "🚜", "🚲"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
