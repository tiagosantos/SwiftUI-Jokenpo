//
//  ContentView.swift
//  Jokenpo
//
//  Created by Carlos Tiago on 22/02/20.
//  Copyright © 2020 Carlos Tiago. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let options = ["Rock", "Paper", "Scissors"]
    @State private var playerChoose = 0
    @State private var computerChoose = 0
    @State private var showDetails = false
    @State private var scorePlayer = 0
    @State private var scoreComputer = 0
    @State private var text = ""
    func getResult(playerChoose: Int, computerChoose: Int){
        if self.playerChoose == 0 && self.computerChoose == 1 {
            self.text = "You lose!"
            self.scoreComputer += 1
        }
        else if self.playerChoose == 0 && self.computerChoose == 2 {
            self.text = "You Win!"
            self.scorePlayer += 1
        }
        else if self.playerChoose == 1 && self.computerChoose == 0 {
            self.text = "You Win!"
            self.scorePlayer += 1
        }
        else if self.playerChoose == 1 && self.computerChoose == 2 {
            self.text = "You lose!"
            self.scoreComputer += 1
        }
        else if self.playerChoose == 2 && self.computerChoose == 0 {
            self.text = "You lose!"
            self.scoreComputer += 1
        }
        else if self.playerChoose == 2 && self.computerChoose == 1 {
            self.text = "You win!"
            self.scorePlayer += 1
        }
        else {
            self.text = "Draw"
        }
    }
    var body: some View {
        ZStack{
            Color.blue
            VStack {
                HStack{
                    Button(action: {
                        self.playerChoose = 0
                        self.computerChoose = Int.random(in: 0...2)
                        self.getResult(playerChoose: self.playerChoose, computerChoose: self.computerChoose)
                    }) {
                        Text("Rock")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .border(Color.white, width: 5)
                    }
                    Button(action: {
                        self.playerChoose = 1
                        self.computerChoose = Int.random(in: 0...2)
                        self.getResult(playerChoose: self.playerChoose, computerChoose: self.computerChoose)
                    }) {
                        Text("Paper")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .border(Color.white, width: 5)
                    }
                
                    Button(action: {
                        self.playerChoose = 2
                        self.computerChoose = Int.random(in: 0...2)
                        self.getResult(playerChoose: 2, computerChoose: self.computerChoose)
                    }) {
                        Text("Scissors")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .border(Color.white, width: 5)
                    }
                }
                
                Text("Computer choose \(options[computerChoose])")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                Text("You choose \(options[playerChoose])")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                Text("Result:  \(text)")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                
                HStack{
                    Text("Wins:  \(scorePlayer)")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    Text("Loses:  \(scoreComputer)")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
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
