//  ContentView.swift
import SwiftUI



struct ContentView: View {
    
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
                    DiceView(diceNumber : 1)
                    DiceView(diceNumber : 2)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button {
                    print("The button is tapped .")
                } label : {
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width : 250.0 ,
                               height : 250.0)
                        .overlay(Text("Roll the Dice")
                                    .font(.system(size: 40 ,
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
