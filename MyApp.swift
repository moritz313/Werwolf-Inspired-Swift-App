import SwiftUI
@main



struct MyApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
class GlobalString: ObservableObject {
    @Published var Player1 = ""
}
