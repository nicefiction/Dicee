//  ContentView.swift
import SwiftUI



struct ContentView: View {
    
    @State private var numberOnDice1: Int = 1
    @State private var numberOnDice2: Int = 2
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(edges : .all)
            
            VStack {
                Image("diceeLogo")
                    .resizable()
                    .aspectRatio(contentMode : .fit)
                    .frame(width : 270)
                
                Spacer()
                
                HStack {
                    DiceView(diceNumber : numberOnDice1)
                    DiceView(diceNumber : numberOnDice2)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button {
                    print("The button is tapped .")
                    
                    numberOnDice1 = Int.random(in : 1...6)
                    numberOnDice2 = Int.random(in : 1...6)
                } label : {
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width : 200.0 ,
                               height : 200.0)
                        .overlay(Text("Roll the Dice")
                                    .font(.system(size: 30 ,
                                                  weight : .semibold))
                                    .foregroundColor(.white))
                }
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro")
    }
}
