//
//  ContentView.swift
//  Polls_App
//
//  Created by Nancy Yoder on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
                  RoundedRectangle(cornerRadius: 20).fill(.blue).padding(EdgeInsets(top: 150, leading: 30, bottom: 150, trailing: 30))
                  VStack{
                      Text("cats?").font(.title2).padding()
                      HStack{
                          Image(systemName: "hand.thumbsup")
                          Image(systemName: "hand.thumbsdown")
                      }
                      
                  }
                  
              }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
