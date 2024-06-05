//
//  ContentView.swift
//  Dicee-swiftUI
//
//  Created by asmaa gamal  on 05/06/2024.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNo:Int = 1   // it has to be @State because we can not just change a struct property like mutating 
    @State var rightDiceNo:Int = 1
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack(spacing: 50){
                    Image("dice\(leftDiceNo)").resizable()
                        .aspectRatio(1,contentMode: .fit).frame(maxWidth:130 )
                    Image("dice\(rightDiceNo)").resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .frame(maxWidth:130 )
                }.padding()
                Spacer()
                Button("Roll") {
                    var randomLeftNo = (1...6).randomElement() ?? 1
                    let randomRightNo = (1...6).randomElement() ?? 1
                    leftDiceNo = randomLeftNo
                    rightDiceNo = randomRightNo
                }.padding().frame(width: 150,height: 70).font(.title).border(Color.red).tint(Color.red)
                Spacer()
            }.padding()
        }
        
    }
}

#Preview {
    ContentView()
}
