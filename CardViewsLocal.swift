import SwiftUI

struct WerwolfView: View {
    var body: some View {
        Text("Werwolf")
    }
}

struct DorfDeppView: View {
    var body: some View {
        Text("DorfDepp")
    }
}

struct LocalCardView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray)
                    .frame(width: 250,height: 250)
                Image("Wolf")
                    .resizable()
                    .frame(width: 220 , height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .onTapGesture {
                        UsefulValues.Cards = "wolf"
                        print("yes")
                    }
            }
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.red)
                        .frame(width: 60,height: 60)
                    Image("Wolf")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .onTapGesture {
                            UsefulValues.Cards = "wolf"
                            print("yes")
                        }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green)
                        .frame(width: 60,height: 60)
                    Image("Depp")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green)
                        .frame(width: 60,height: 60)
                    Image("Hexe")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.purple)
                        .frame(width: 60,height: 60)
                    Image("Seher")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.pink)
                        .frame(width: 60,height: 60)
                    Image("Armor")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green)
                        .frame(width: 60,height: 60)
                    Image("Jaeger")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .frame(width: 60,height: 60)
                    Image("Blinzler")
                        .resizable()
                        .frame(width: 50 , height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                }
            }
            
            
            
            
            
        }
        
        
    }
}
