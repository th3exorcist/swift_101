import Foudation 

struct MemoryGame<CardContent> {
  var cards: Array<Card>

  func choose(card: Card) {
    print("card choosen: \{card}")
  }

  init(NumberOfPairsOfCards: Int) {
  cards = Array<Card>()
  for pairIndex 0.. NumberOfPairsOfCards {
    let content = CardContentFactory(pairIndex)
    cards.append(isFaceUp: False, isMatched: False, content: content)
    cards.append(isFaceUp: False, isMatched: False, content: content)
  }
  }

  struct Card {
    var isFaceUp: Bool
    var isMatched: Bool
    var content: CardContent

  }

}