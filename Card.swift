import SwiftUI

struct Card {
    let prompt: String
    var type: String
    
    
    static var schlafen: Card {
        Card(prompt: "Alle Schlafen ein 🌙",type: "schlafen")
    }
    
    static var armor: Card {
        Card(prompt: "Der Armor erwacht 💘",type: "armor")
    }
    
    static var seher: Card {
        Card(prompt: "Der Seher erwacht 🔮",type: "seher")
    }
    
    static var wolf: Card {
        Card(prompt: "Die Werwölfe erwachen 🐺",type: "wolf")
    }
    
    static var hexe: Card {
        Card(prompt: "Die Hexe erwacht 🧪",type: "hexe")
    }
    
    static var aufwachen: Card {
        Card(prompt: "Das Dorf erwacht 🌅",type: "aufwachen")
    }
    
    static var wahl: Card {
        Card(prompt: "Der Bürgermeister wird gewählt 🎖",type: "wahl")
    }
    
    static var diskutieren: Card {
        Card(prompt: "Man Diskutiert die Nacht 🙊",type: "diskutieren")
    }
    
    static var wahl2: Card {
        Card(prompt: "Man sucht einen Schuldigen 🔪",type: "wahl2")
    }
    
    static var summary: Card {
        Card(prompt: "Wer ist gestorben? 🪦",type: "summary")
    }
}
