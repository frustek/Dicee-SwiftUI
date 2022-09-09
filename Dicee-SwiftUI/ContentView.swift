//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Adam Mroz on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("diceeLogo")
                    Spacer()
                    HStack {
                        DiceView(n: leftDiceNumber)
                        DiceView(n: rightDiceNumber)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button("Roll"){
                        leftDiceNumber = Int.random(in: 1...6)
                        rightDiceNumber = Int.random(in: 1...6)
                    }
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(.red)
                    Spacer()
                        .frame(height: 1)
                }
                
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

