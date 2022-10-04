//
//  ContentView.swift
//  Polls_App
//
//  Created by Nancy Yoder on 9/14/22.
//

import SwiftUI

// make an object that is the poll object
// make an array of poll objects with titles such as "CAT" (all animals for example)
// make the UI reference cat
// make each poll object have a "dislike" or "like" attribute
// if like is pressed, call a function which sets like to true and dislike to false
// once all 10 poll objects are looped through, display to the user the list of likes and dislikes


struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                PollView(content: cats)
                PollView(content: birds)
                PollView(content: dogs)
                PollView(content: mice)
                PollView(content: moose)
                PollView(content: goose)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// rewatch the stanford videos and apply the logic in MVVM to this app -> essentially the same logic just simpler (want the poll to disapper once it is clicked on)
// look at the animation to figure out how to do this (could be very helpful)
struct PollView<Content: Topic>: View{
    let content: Content
    @State var shape = RoundedRectangle(cornerRadius: 20)
    var body: some View{
            ZStack{
                if !content.isClick{
                    let _ = print("no", content.isClick)
                    shape.fill(.pink)
                    VStack{
                        Text("\(content.name)").font(.title)
                        Spacer()
                        HStack{
                            Button(action: content.like) {
                                Image(systemName: "hand.thumbsup")
                            }
                            Spacer()
                            Button(action: content.dislike) {
                                Image(systemName: "hand.thumbsdown")
                            }
                        }.padding([.leading, .trailing], 100)
                    }
                }
                else{
                    let _ = print("yes", content.isClick)
                    shape.fill(.white)
                    VStack{
                        Text("\(content.name)").font(.title)
                        Spacer()
                        HStack{
                            Button(action: content.like) {
                                Image(systemName: "hand.thumbsup")
                            }
                            Spacer()
                            Button(action: content.dislike) {
                                Image(systemName: "hand.thumbsdown")
                            }
                        }.padding([.leading, .trailing], 100)
                    }
                }

            }
    }
}

