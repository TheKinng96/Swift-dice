//
//  ContentView.swift
//  Shared
//
//  Created by Yap Feng Yuan on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber: 1)
                    DiceView(diceNumber: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
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
