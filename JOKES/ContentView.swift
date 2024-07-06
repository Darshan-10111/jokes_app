//
//  ContentView.swift
//  JOKES
//
//  Created by student on 29/6/24.
//

import SwiftUI

struct ContentView: View {
    var jokes = [Joke(setup: "Why couldnt the bicycle stand up?", punchline: "It was too tired"),
                 Joke(setup: "Why did the chicken cross the road", punchline: "To get to the other side"),
                 Joke(setup: "Is this pool safe for driving", punchline: "It deep ends"),
                 Joke(setup: "Did you hear about the cheese factory that exploded in france", punchline: "There was nothing left but de Brie"),
                 Joke(setup: "Dad, can you put my shoes on?", punchline: "I dont think they will fit me")]
    @State private var showPunchLine =  false
    @State private var currentJokeIndex = 0
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .onTapGesture{
                    if showPunchLine {
                        currentJokeIndex += 1
                        showPunchLine = false
                    }
                }
            VStack {
                Text(jokes[currentJokeIndex % jokes.count].setup)
                    .padding()
                
                Button {
                    print("Button tapped")
                    showPunchLine = true
                } label: {
                    Text("what?")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                }
                .padding()
                
                if showPunchLine {
                    Text(jokes[currentJokeIndex % jokes.count].punchline)
                        .padding()
                        .opacity(showPunchLine ? 1 : 0)
                    Text("Tap to continue")
                        .italic()
                        .padding()
                        .hidden()
                        .opacity(showPunchLine ? 1 : 0)
                    Text("What??**_Tell me_**")
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

