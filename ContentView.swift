// ContentView
//  CS193p Stanford
// Learned from: https://www.youtube.com/watch?v=jbtqIBpUG7g


import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack {
      ForEach(viewModel.cards) { card in
        CardView(card: card).onTapGesture {
          self.viewModel.choose(card: card)
        }
      }
    }
    .padding()
    .foregroundColor(Color.orange)
    .font(Font.largeTitle)
  }
}

struct CardView: View {
  isFaceUp : Bool

  var body: some View {
    ZStack {
      if isFaceUp {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
      } 
      else {
        RoundedRectangle(cornerRadius: 10.0).fill()
      }
    }
  }
}