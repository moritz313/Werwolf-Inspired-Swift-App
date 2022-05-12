import SwiftUI

struct settingsView: View {
    @State private var text = ""
    var body: some View {
        
        VStack{
            Text("Settings\(UsefulValues.PlayerName1)")
            HStack{
                //Text("Name:")
                //.font(.title)
                TextField("Username", text: $text) 
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        UsefulValues.PlayerName1 = text
                    }
                Button("p\(UsefulValues.PlayerName1)"){
                    
                    UsefulValues.PlayerName1 = text
                    print(UsefulValues.PlayerName1)
                }
                
            }
            
        }
        
    }
}

struct settingsView_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
