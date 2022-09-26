//
//  ContentView.swift
//  Polls_App
//
//  Created by Nancy Yoder on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("cats").font(.title)
            Spacer()
            HStack{
                Button(action: {
                    print("like button")
                }, label: {
                    Image(systemName: "hand.thumbsup")
                })
                Spacer()
                Button(action: {
                    print("dislike button")
                }, label: {
                    Image(systemName: "hand.thumbsdown")
                })
            }.padding([.leading, .trailing], 100)
        }.padding([.bottom, .top], 220)
    }
}
            
            
            
            
//            .contextMenu {
//                Button("Cut", action: cut)
//                Button("Copy", action: copy)
//                Button("Paste", action: paste)
//            }
//            Button(action: signIn) {
//                Text("Sign In")
//            }
//                  RoundedRectangle(cornerRadius: 20).fill(.blue).padding(EdgeInsets(top: 150, leading: 30, bottom: 150, trailing: 30))
//                  VStack{
//                      Text("cats?").font(.title2).padding()
//                      HStack{
//                          Image(systemName: "hand.thumbsup")
//                          Image(systemName: "hand.thumbsdown")

//struct CardView: View{
//    let card: MemoryGame<String>.Card
//    var body: some View{
//        ZStack {
//            let shape = RoundedRectangle(cornerRadius: 20)
//            if card.isFaceUp{
//                shape.fill(.white)
//                shape.strokeBorder(lineWidth:3)
//
//                Text(card.content)
//                    .font(.largeTitle)
//            } else if card.isMatched{
//                shape.opacity(0)
//            }
//            else{
//                shape.fill(.red)
//            }
//
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
