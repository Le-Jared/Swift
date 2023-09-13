//
//  ContentView.swift
//  Tellme a Joke
//
//  Created by MAC on 06/09/22.
//

import SwiftUI

struct JokeView: View {
    @StateObject var jokeData = JokeData()
    @State var joke: String
    var body: some View {
        ZStack{
            Color.indigo
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(joke)
                    .padding()
                    .font(.title.bold())
                    .foregroundColor(.white)
                Image("siri")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Button(action: {
                    jokeData.refreshJoke()
                    joke = jokeData.joke.joke
                }, label: {
                    Text("Tell me a joke :D".uppercased())
                        .padding(5)
                        .font(.title3.bold())
                        .foregroundColor(.white)
                        .background(.cyan)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                })
            }
        }
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView(joke: "")
    }
}

