import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = CGFloat(total - position) 
        return self.offset(CGSize(width: 0, height: offset * 10))
    }
}

struct StoryView: View {
    
    static var points = 0
    
    @State private var cards = [Card](arrayLiteral: Card.summary, Card.wahl2, Card.diskutieren, Card.wahl, Card.aufwachen, Card.hexe, Card.wolf, Card.seher, Card.armor, Card.schlafen)
    
    var body: some View {
        ZStack{
            
            VStack {
                
                Text("Erzähler")
                    .bold().font(.largeTitle)
                Text("Hier leitest du das Spiel!")
                    .italic().fontWeight(.light)
                Spacer()
                    .frame(height: 50)
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: self.cards[index]){
                            withAnimation() {
                                self.removeCard(at: index)
                            }
                        }
                        .stacked(at: index, in: self.cards.count)
                    }
                    
                }
                
                Spacer()
                    .frame(height:120)
                
            }
            Spacer()
                .frame(height:0)
            
            
            
            
            Spacer()
                .frame(height: 10)
            
        }
    }
    func removeCard(at index: Int) {
        cards.remove(at: index)
    }
}

