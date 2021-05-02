//
//  ContentView.swift
//  Memorize
//
//  Created by 邓飞琼 on 2021-04-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4) { index in
                CardView()
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    var body: some View{
        if isFaceUp {
            ZStack {
               RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
               RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
               Text("👻")
           }
        } else {
            RoundedRectangle(cornerRadius: 10.0).fill()
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
