//
//  Game.swift
//  TicTacToe
//
//  Created by Robin Lin on 2020-12-30.
//

import Foundation

class Game : ObservableObject {
    @Published var ttt = [GridObj]()
    @Published var turn: Int = Int.random(in: 1...2)
    @Published var message: String = "TIC-TAC-TOE"
    @Published var winnerMessage: String = "GAME IN PROGRESS"
    private var moves: Int = 0
    init() {
        for _ in 0...8 {
            ttt.append(GridObj(gs: 0, p: false))
        }
    }
    func select(index: Int) {
        if !ttt[index].played {
            ttt[index].gridState = turn
            ttt[index].played = true
            if turn == 1 {
                turn = 2
            }
            else if turn == 2 {
                turn = 1
            }
            self.checkWin()
            moves += 1
            if moves == 9 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.restart()
                }
            }
        }
    }
    func restart() {
        moves = 0
        turn = Int.random(in: 1...2)
        ttt = [GridObj]()
        for _ in 0...8 {
            ttt.append(GridObj(gs: 0, p: false))
        }
        winnerMessage = "GAME IN PROGRESS"
    }
    
    // 0 3 6
    // 1 4 7
    // 2 5 8
    // TODO
    func checkWin() {
        // Horizontal
        if ttt[0].gridState == ttt[3].gridState && ttt[3].gridState == ttt[6].gridState && (ttt[0].gridState == 1 || ttt[0].gridState == 2) {
            let win = ttt[0].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        if ttt[1].gridState == ttt[4].gridState && ttt[4].gridState == ttt[7].gridState && (ttt[1].gridState == 1 || ttt[1].gridState == 2) {
            let win = ttt[1].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        if ttt[2].gridState == ttt[5].gridState && ttt[5].gridState == ttt[8].gridState && (ttt[2].gridState == 1 || ttt[2].gridState == 2) {
            let win = ttt[2].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        
        
        // Vertical
        if ttt[0].gridState == ttt[1].gridState && ttt[1].gridState == ttt[2].gridState && (ttt[2].gridState == 1 || ttt[2].gridState == 2) {
            let win = ttt[0].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        if ttt[3].gridState == ttt[4].gridState && ttt[4].gridState == ttt[5].gridState && (ttt[3].gridState == 1 || ttt[3].gridState == 2) {
            let win = ttt[3].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        
        if ttt[6].gridState == ttt[7].gridState && ttt[7].gridState == ttt[8].gridState && (ttt[6].gridState == 1 || ttt[6].gridState == 2) {
            let win = ttt[6].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        
        // Diagonal
        if ttt[0].gridState == ttt[4].gridState && ttt[4].gridState == ttt[8].gridState && (ttt[0].gridState == 1 || ttt[0].gridState == 2) {
            let win = ttt[0].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
        if ttt[2].gridState == ttt[4].gridState && ttt[4].gridState == ttt[6].gridState && (ttt[2].gridState == 1 || ttt[2].gridState == 2) {
            let win = ttt[2].gridState
            if win == 1 {
                winnerMessage = "Winner is: ❌"
            }
            else {
                winnerMessage = "Winner is: ⭕️"
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.restart()
            }
        }
    }
}
