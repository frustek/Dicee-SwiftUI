//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Adam Mroz on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
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
                        DiceView(n: 1)
                        DiceView(n: 2)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button("Roll"){
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(.red)
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

