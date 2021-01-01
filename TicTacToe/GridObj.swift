//
//  GridObj.swift
//  TicTacToe
//
//  Created by Robin Lin on 2020-12-30.
//

import Foundation


class GridObj : ObservableObject {
    // MARK: Grid State, 1: Empty, 2: X, 3: O
    @Published var gridState: Int
    @Published var played: Bool
    init(gs: Int, p: Bool) {
        gridState = gs
        played = p
    }
}
