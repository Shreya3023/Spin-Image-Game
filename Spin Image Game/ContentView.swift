//
//  ContentView.swift
//  Spin Image Game
//
//  Created by Shreya Prasad on 20/08/22.
//

import SwiftUI

struct ContentView: View{
    @State private  var score = 0
   @State private var slot1 = 1
    @State private  var slot2 = 1
    @State private   var slot3 = 1
    var body: some View {
        VStack(spacing : 20){
            Spacer()
            Text("SwiftUI Slots")
                .font(.largeTitle)
            Spacer()
            Text("Credits :\(score)")
                .font(.title)
            Spacer()
            HStack{
                Image("\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                                 Image("\(slot3)")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button {
                 
        
              slot1 =  Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                if slot1 == slot2 && slot2 == slot3 {
                    score += 15
                }
                else{
                    score -= 5
                }
                
                
            } label: {
                Text("Spin")
                    .padding()
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            Spacer()

      
}
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
