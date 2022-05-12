import SwiftUI

struct ContentView: View {
    var body: some View {
        QRGeneratorView()
    }
}
struct QRGeneratorView: View {
    @State private var text = ""
    @State private var showQR = false
    
    @State var items : [Any] = []
    @State var sheet = false
    
    @State private var showQR1 = false
    @State private var showQR2 = false
    @State private var showQR3 = false
    @State private var showQR4 = false
    @State private var showQR5 = false
    @State private var showQR6 = false
    @State private var showQR7 = false
    @State private var showQR8 = false
    
    var body: some View {
        VStack {
            //TextField("Enter code", text: $text)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            //.padding()
            Button {
                print("done")
                UsefulValues.wolf1 = Int.random(in: 1..<9)
                UsefulValues.wolf2 = Int.random(in: 1..<9)
                UsefulValues.Seher = Int.random(in: 1..<9)
                UsefulValues.Hexe = Int.random(in: 1..<9)
                UsefulValues.Armor = Int.random(in: 1..<9)
                UsefulValues.Jaeger = Int.random(in: 1..<9)
                UsefulValues.Blinzler = Int.random(in: 1..<9)
                
                //Random Player gen
                while(UsefulValues.wolf1 == UsefulValues.wolf2 || UsefulValues.wolf1 == UsefulValues.Seher || UsefulValues.wolf1 == UsefulValues.Hexe || UsefulValues.wolf1 == UsefulValues.Armor || UsefulValues.wolf1 == UsefulValues.Jaeger || UsefulValues.wolf1 == UsefulValues.Blinzler || UsefulValues.wolf2 == UsefulValues.wolf1 || UsefulValues.wolf2 == UsefulValues.Seher || UsefulValues.wolf2 == UsefulValues.Hexe || UsefulValues.wolf2 == UsefulValues.Armor || UsefulValues.wolf2 == UsefulValues.Jaeger || UsefulValues.wolf2 == UsefulValues.Blinzler || UsefulValues.Seher == UsefulValues.Hexe || UsefulValues.Seher == UsefulValues.Armor || UsefulValues.Seher == UsefulValues.Jaeger || UsefulValues.Seher == UsefulValues.Blinzler || UsefulValues.Hexe == UsefulValues.Armor || UsefulValues.Hexe == UsefulValues.Jaeger || UsefulValues.Hexe == UsefulValues.Blinzler || UsefulValues.Armor == UsefulValues.Jaeger || UsefulValues.Armor == UsefulValues.Blinzler || UsefulValues.Jaeger == UsefulValues.Blinzler ){
                    UsefulValues.wolf1 = Int.random(in: 1..<9)
                    UsefulValues.wolf2 = Int.random(in: 1..<9)
                    UsefulValues.Seher = Int.random(in: 1..<9)
                    UsefulValues.Hexe = Int.random(in: 1..<9)
                    UsefulValues.Armor = Int.random(in: 1..<9)
                    UsefulValues.Jaeger = Int.random(in: 1..<9)
                    UsefulValues.Blinzler = Int.random(in: 1..<9)
                }
                
                if(UsefulValues.wolf1 == 1 || UsefulValues.wolf2 == 1){
                    UsefulValues.Player1 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 1){
                    UsefulValues.Player1 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 1){
                    UsefulValues.Player1 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 1){
                    UsefulValues.Player1 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 1){
                    UsefulValues.Player1 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 1){
                    UsefulValues.Player1 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player1 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 2 || UsefulValues.wolf2 == 2){
                    UsefulValues.Player2 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 2){
                    UsefulValues.Player2 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 2){
                    UsefulValues.Player2 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 2){
                    UsefulValues.Player2 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 2){
                    UsefulValues.Player2 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 2){
                    UsefulValues.Player2 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player2 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 3 || UsefulValues.wolf2 == 3){
                    UsefulValues.Player3 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 3){
                    UsefulValues.Player3 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 3){
                    UsefulValues.Player3 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 3){
                    UsefulValues.Player3 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 3){
                    UsefulValues.Player3 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 3){
                    UsefulValues.Player3 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player3 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 4 || UsefulValues.wolf2 == 4){
                    UsefulValues.Player4 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 4){
                    UsefulValues.Player4 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 4){
                    UsefulValues.Player4 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 4){
                    UsefulValues.Player4 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 4){
                    UsefulValues.Player4 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 4){
                    UsefulValues.Player4 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player4 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 5 || UsefulValues.wolf2 == 5){
                    UsefulValues.Player5 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 5){
                    UsefulValues.Player5 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 5){
                    UsefulValues.Player5 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 5){
                    UsefulValues.Player5 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 5){
                    UsefulValues.Player5 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 5){
                    UsefulValues.Player5 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player5 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 6 || UsefulValues.wolf2 == 6){
                    UsefulValues.Player6 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 6){
                    UsefulValues.Player6 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 6){
                    UsefulValues.Player6 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 6){
                    UsefulValues.Player6 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 6){
                    UsefulValues.Player6 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 6){
                    UsefulValues.Player6 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player6 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 7 || UsefulValues.wolf2 == 7){
                    UsefulValues.Player7 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 7){
                    UsefulValues.Player7 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 7){
                    UsefulValues.Player7 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 7){
                    UsefulValues.Player7 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 7){
                    UsefulValues.Player7 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 7){
                    UsefulValues.Player7 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player7 = "d\(Int.random(in: 500..<9876))"
                }
                
                if(UsefulValues.wolf1 == 8 || UsefulValues.wolf2 == 8){
                    UsefulValues.Player8 = "w\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Seher == 8){
                    UsefulValues.Player8 = "s\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Hexe == 8){
                    UsefulValues.Player8 = "h\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Armor == 8){
                    UsefulValues.Player8 = "a\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Jaeger == 8){
                    UsefulValues.Player8 = "j\(Int.random(in: 500..<9876))"
                } else if(UsefulValues.Blinzler == 8){
                    UsefulValues.Player8 = "b\(Int.random(in: 500..<9876))"
                } else {
                    UsefulValues.Player8 = "d\(Int.random(in: 500..<9876))"
                }
                
                showQR.toggle()
                
            } label: {
                Label("Generate QR  ", systemImage: "qrcode")
            }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .tint(.black)
            
            
            HStack{
                Button("Player 1"){
                    showQR1 = true
                    showQR2 = false
                    showQR3 = false
                    showQR4 = false
                    showQR5 = false
                    showQR6 = false
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                Button("Player 2"){
                    showQR1 = false
                    showQR2 = true
                    showQR3 = false
                    showQR4 = false
                    showQR5 = false
                    showQR6 = false
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                Button("Player 3"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = true
                    showQR4 = false
                    showQR5 = false
                    showQR6 = false
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
            }
            HStack{
                Button("Player 4"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = false
                    showQR4 = true
                    showQR5 = false
                    showQR6 = false
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                Button("Player 5"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = false
                    showQR4 = false
                    showQR5 = true
                    showQR6 = false
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                Button("Player 6"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = false
                    showQR4 = false
                    showQR5 = false
                    showQR6 = true
                    showQR7 = false
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
            }
            HStack{
                Button("Player 7"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = false
                    showQR4 = false
                    showQR5 = false
                    showQR6 = false
                    showQR7 = true
                    showQR8 = false
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                Button("Player 8"){
                    showQR1 = false
                    showQR2 = false
                    showQR3 = false
                    showQR4 = false
                    showQR5 = false
                    showQR6 = false
                    showQR7 = false
                    showQR8 = true
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.black)
                
            }
            
            //QR Codes
            ZStack{
                
            
            
            if(showQR1){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.red)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player1)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
            } else if(showQR2){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.blue)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player2)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            } else if(showQR3){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.green)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player3)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            } else if(showQR4){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.yellow)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player4)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            } else if(showQR5){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.orange)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player5)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } else if(showQR6){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.cyan)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player6)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } else if(showQR7){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.pink)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player7)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } else if(showQR8){
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.purple)
                    .shadow(radius: 10)
                    .frame(width: 210, height: 210)
                
                Image(uiImage: UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player8)")!)!)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
                
            
            }
            
            HStack{
            
            Button("Share"){
                items.removeAll()
                if(showQR1){
                    let bottomImage = UIImage(named: "Player1")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player1)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR2){
                    let bottomImage = UIImage(named: "Player2")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player2)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR3){
                    let bottomImage = UIImage(named: "Player3")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player3)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR4){
                    let bottomImage = UIImage(named: "Player4")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player4)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR5){
                    let bottomImage = UIImage(named: "Player5")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player5)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR6){
                    let bottomImage = UIImage(named: "Player6")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player6)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR7){
                    let bottomImage = UIImage(named: "Player7")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player7)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                } else if(showQR8){
                    let bottomImage = UIImage(named: "Player8")
                    let topImage = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player8)")!)!
                    let size = CGSize(width: 1500, height: 1500)
                    UIGraphicsBeginImageContext(size)
                    let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                    let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
                    bottomImage!.draw(in: areaSize1)
                    topImage.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
                    let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
                    UIGraphicsEndImageContext()
                    items.append(newImage)
                }
                
                sheet.toggle()
                
            }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .tint(.black)
            .sheet(isPresented: $sheet,  content: {
                ShareSheet(items: items)
            })
            
        }
        
        
        Button("Save All"){
            items.removeAll()
            
            let bottomImage1 = UIImage(named: "Player1")
            let topImage1 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player1)")!)!
            let size = CGSize(width: 1500, height: 1500)
            UIGraphicsBeginImageContext(size)
            let areaSize1 = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            let areaSize2 = CGRect(x: 238, y: 238, width: size.width - 476, height: size.height - 476)
            bottomImage1!.draw(in: areaSize1)
            topImage1.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage1:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage1)
            
            let bottomImage2 = UIImage(named: "Player2")
            let topImage2 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player2)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage2!.draw(in: areaSize1)
            topImage2.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage2:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage2)
        
            let bottomImage3 = UIImage(named: "Player3")
            let topImage3 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player3)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage3!.draw(in: areaSize1)
            topImage3.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage3:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage3)
           
            let bottomImage4 = UIImage(named: "Player4")
            let topImage4 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player4)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage4!.draw(in: areaSize1)
            topImage4.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage4:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage4)
            
            let bottomImage5 = UIImage(named: "Player5")
            let topImage5 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player5)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage5!.draw(in: areaSize1)
            topImage5.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage5:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage5)
            
            let bottomImage6 = UIImage(named: "Player6")
            let topImage6 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player6)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage6!.draw(in: areaSize1)
            topImage6.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage6:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage6)
            
            let bottomImage7 = UIImage(named: "Player7")
            let topImage7 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player7)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage7!.draw(in: areaSize1)
            topImage7.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage7:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage7)
            
            let bottomImage8 = UIImage(named: "Player8")
            let topImage8 = UIImage(data: getQRCodeDate(text: "\(UsefulValues.Player8)")!)!
            UIGraphicsBeginImageContext(size)
            bottomImage8!.draw(in: areaSize1)
            topImage8.draw(in: areaSize2, blendMode: .normal, alpha: 0.8)
            let newImage8:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            items.append(newImage8)
               
            
            
                sheet.toggle()
            
        }
        .buttonStyle(.borderedProminent)
        .foregroundColor(.white)
        .tint(.black)
        .sheet(isPresented: $sheet,  content: {
            ShareSheet(items: items)
        })
        
    }
}
        
    }
    
    
    
    
    func getQRCodeDate(text: String) -> Data? {
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        let data = text.data(using: .ascii, allowLossyConversion: false)
        filter.setValue(data, forKey: "inputMessage")
        guard let ciimage = filter.outputImage else { return nil }
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledCIImage = ciimage.transformed(by: transform)
        let uiimage = UIImage(ciImage: scaledCIImage)
        return uiimage.pngData()!
    }
    
    
    //Share Sheet
    
    struct ShareSheet : UIViewControllerRepresentable {
        
        //Data
        var items : [Any]
        func makeUIViewController(context: Context) -> some UIActivityViewController {
            let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
            
            return controller
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
        
    }
    

