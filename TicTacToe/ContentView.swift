//
//  ContentView.swift
//  TicTacToe
//
//  Created by Robin Lin on 2020-12-30.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tttGame = Game()
    
    var body: some View {
        ZStack {
            VStack {
                Text(tttGame.message).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 40))
                Spacer().frame(height: 40)
                Text(tttGame.winnerMessage).fontWeight(.bold).font(.system(size: 30)).foregroundColor(Color.red)
                Spacer().frame(height: 60)
                HStack (spacing: 4) {
                    VStack (spacing: 4) {
                        GridView(grid: tttGame.ttt[0]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 0)
                        }
                        GridView(grid: tttGame.ttt[1]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 1)
                        }
                        GridView(grid: tttGame.ttt[2]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 2)
                        }
                    }
                    VStack (spacing: 4) {
                        GridView(grid: tttGame.ttt[3]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 3)
                        }
                        GridView(grid: tttGame.ttt[4]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 4)
                        }
                        GridView(grid: tttGame.ttt[5]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 5)
                        }
                    }
                    VStack (spacing: 4) {
                        GridView(grid: tttGame.ttt[6]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 6)
                        }
                        GridView(grid: tttGame.ttt[7]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 7)
                        }
                        GridView(grid: tttGame.ttt[8]).onTapGesture {
                            print("Tapped!")
                            tttGame.select(index: 8)
                        }
                    }
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
