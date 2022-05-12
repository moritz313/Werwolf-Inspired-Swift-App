import SwiftUI
import CodeScanner




struct ScanView1: View {
    var body: some View {
        QRCodeScannerExampleView()
    }
}
struct ScanView: View {
    
    
    @State private var isShowingScanner = false
    
    var body: some View {
        
        VStack {
            
            Button {
                isShowingScanner = true
                CodeScannerView(codeTypes: [.qr], simulatedData: "Paul Hudson\npaul@hackingwithswift.com", completion: handleScan)
                
                print("done")
            } label: {
                Label("Scan QR  ", systemImage: "qrcode")
            }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .tint(.green)
            
            
            
        }
    }
    func handleScan(result: Result<ScanResult, ScanError>) {
        isShowingScanner = false
        // more code to come
    }
    
}


struct QRCodeScannerExampleView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?
    @StateObject var globalString = GlobalString()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Werwolf")
                .bold().font(.title)
                .foregroundColor(Color.primary)
            Text("Die Werwölfe von Düsterwald")
                .fontWeight(.light)
                .foregroundColor(Color.primary)
            
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            Button { 
                isPresentingScanner = true
            } label: {
                Image(systemName: "qrcode")
                    .font(Font.body.bold())
                    .imageScale(.large)
                    .padding()
                    .foregroundColor(Color.primary)
                    .colorInvert()
            }
            .myButtonStyle()
            
            
            
            
            if let code = scannedCode {
                if(code.starts(with: "w")){
                    NavigationLink("Next page", destination: WerwolfView(), isActive: .constant(true)).hidden()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red)
                            .frame(width: 300,height: 60)
                        Text("Werwolf/in!")
                            .bold().font(.title)
                            .foregroundColor(Color.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red)
                            .frame(width: 300,height: 300)
                        Image("Wolf")
                            .resizable()
                            .frame(width: 280, height: 280)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                } else if(code.starts(with: "d")){
                    NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green)
                            .frame(width: 300,height: 60)
                        Text("Dorfdepp/in!")
                            .bold().font(.title)
                            .foregroundColor(Color.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green)
                            .frame(width: 300,height: 300)
                        Image("Depp")
                            .resizable()
                            .frame(width: 280, height: 280)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    } 
                    } else if(code.starts(with: "s")){
                        NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.purple)
                                .frame(width: 300,height: 60)
                            Text("Seher/in!")
                                .bold().font(.title)
                                .foregroundColor(Color.white)
                    } 
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.purple)
                            .frame(width: 300,height: 300)
                        Image("Seher")
                            .resizable()
                            .frame(width: 280, height: 280)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    } 
                
                    } else if(code.starts(with: "h")){
                        NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .frame(width: 300,height: 60)
                            Text("Hexe!")
                                .bold().font(.title)
                                .foregroundColor(Color.white)
                        } 
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .frame(width: 300,height: 300)
                            Image("Hexe")
                                .resizable()
                                .frame(width: 280, height: 280)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        } 
                    } else if(code.starts(with: "a")){
                        NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.pink)
                                .frame(width: 300,height: 60)
                            Text("Armor!")
                                .bold().font(.title)
                                .foregroundColor(Color.white)
                        } 
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.pink)
                                .frame(width: 300,height: 300)
                            Image("Armor")
                                .resizable()
                                .frame(width: 280, height: 280)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        } 
                    } else if(code.starts(with: "j")){
                        NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .frame(width: 300,height: 60)
                            Text("Jäger/in!")
                                .bold().font(.title)
                                .foregroundColor(Color.white)
                        } 
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .frame(width: 300,height: 300)
                            Image("Jaeger")
                                .resizable()
                                .frame(width: 280, height: 280)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        } 
                    } else if(code.starts(with: "b")){
                        NavigationLink("Next page", destination: DorfDeppView(), isActive: .constant(true)).hidden()
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.orange)
                                .frame(width: 300,height: 60)
                            Text("Blinzler/in!")
                                .bold().font(.title)
                                .foregroundColor(Color.white)
                        } 
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.orange)
                                .frame(width: 300,height: 300)
                            Image("Blinzler")
                                .resizable()
                                .frame(width: 280, height: 280)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        } 
                    }
            }
            
            
            
            
            
            
        }
        .sheet(isPresented: $isPresentingScanner) {
            CodeScannerView(codeTypes: [.qr]) { response in
                if case let .success(result) = response {
                    scannedCode = result.string
                    isPresentingScanner = false
                }
            }
        }
    }
    
    
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(Capsule()
                            .foregroundColor(configuration.isPressed ? Color(.sRGB, red:0.0, green:0.0, blue:0.0, opacity:0.75) : Color.primary))
            .scaleEffect(configuration.isPressed ? CGFloat(1.8) : 1.0)
            .rotationEffect(.degrees(configuration.isPressed ? 0.0 : 0))
            .blur(radius: configuration.isPressed ? CGFloat(0.0) : 0)
            .animation(Animation.spring(response: 0.35, dampingFraction: 0.35, blendDuration: 1), value: configuration.isPressed)
    }
}

extension Button {
    func myButtonStyle() -> some View {
        self.buttonStyle(MyButtonStyle())
    }
}

// to use


