
import SwiftUI


class EmojiMemoryGame {

    private var model: MemoryGame<String>(NumberOfPairsOfCards = 2, cardContentFactory: createCardContent)

  static func createMemoryGame() -> MemoryGame<String> {
    let emojis = ["👻", "🎃" ,"💀", "🦇"] 
    return MemoryGame<String>(NumberOfPairsOfCards: emojis.count) {
      pairIndex in 
      return emojis[pairIndex]
    }
  }


  var cards: Array<MemoryGame<String>, Card> {
    model.cards;
  }
  func choose(card: MemoryGame<String>.Card) {
    model.choose(card: card)
  }
  
}