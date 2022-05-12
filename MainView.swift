import SwiftUI

struct UsefulValues {
    static var Player1 = ""
    static var Player2 = ""
    static var Player3 = ""
    static var Player4 = ""
    static var Player5 = ""
    static var Player6 = ""
    static var Player7 = ""
    static var Player8 = ""
    
    static var PlayerName1 = "a"
    
    static var Cards = "main"
    
    static var wolf1 = 1
    static var wolf2 = 2
    static var Seher = 3
    static var Hexe = 4
    static var Armor = 5
    static var Jaeger = 6
    static var Blinzler = 7
}

struct MainView: View {
    var body: some View {
        TabView{
            //LocalCardView()
            //.tabItem{
            //Image(systemName: "greetingcard.fill")
            //Text("Cards")
            //}
            
            ScanView1()
                .tabItem{
                    Image(systemName: "qrcode.viewfinder")
                    Text("Scan")
                    
                }
            
            QRGeneratorView()
                .tabItem{
                    Image(systemName: "greetingcard")
                    Text("Karten")
                    
                }
            StoryView()
                .tabItem{
                    Image(systemName: "rectangle.stack")
                    Text("Erzähler")
                    
                }
            
            settingsView()
                .tabItem{
                    Image(systemName: "gearshape")
                    Text("Settings")
                    
                }
            
            
            
            
        }
        .tint(Color.black)
        
    }
}
