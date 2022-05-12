import SwiftUI

struct CardView: View {
    let card: Card
    var removal: (() -> Void)? = nil
    
    @State private var isShowingAnswer = false
    @State private var isCorrect = false
    @State private var offset = CGSize.zero
    
    var body: some View {
        ZStack{
            if(card.type == "schlafen") {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "armor"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.pink)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "seher"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.purple)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "wolf"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.red)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "hexe"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.green)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "aufwachen"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.orange)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "wahl"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.yellow)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "diskutieren"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.cyan)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "wahl2"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            } else if(card.type == "summary"){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.brown)
                    .shadow(radius: 10)
                    .frame(width: 260, height: 260)
            }
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .frame(width: 240, height: 240)
            
            VStack {
                Text(card.prompt)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                HStack{
                    
                    
                    
                }
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 250, height: 250)
        .rotationEffect(.degrees(Double(offset.width / 5)))
        .offset(x: offset.width * 5, y: 0)
        .opacity(2 - Double(abs(offset.width / 50)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    self.offset = gesture.translation
                    
                }
                .onEnded { _ in
                    if abs(self.offset.width) < 500 {
                        self.removal?()
                    } else {
                        self.offset = .zero
                    }
                    
                }
        )
        .onTapGesture {
            //self.isShowingAnswer.toggle()
        }
        
        
    }
}



