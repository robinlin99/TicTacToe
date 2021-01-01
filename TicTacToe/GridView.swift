//
//  GridView.swift
//  TicTacToe
//
//  Created by Robin Lin on 2020-12-30.
//

import SwiftUI

struct GridView: View {
    @ObservedObject var grid: GridObj
    
    var body: some View {
        if grid.gridState == 0 {
            ZStack {
                Rectangle().fill(Color.white).frame(width: 70, height: 70).border(Color.black, width: 4)
            }
        }
        if grid.gridState == 1 {
            ZStack {
                Rectangle().fill(Color.white).frame(width: 70, height: 70).border(Color.black, width: 4)
                Text("❌").font(.system(size: 50))
                
            }
        }
        if grid.gridState == 2 {
            ZStack {
                Rectangle().fill(Color.white).frame(width: 70, height: 70).border(Color.black, width: 4)
                Text("⭕️").font(.system(size: 50))
            }
        }
        
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(grid: GridObj(gs: 1, p: false))
    }
}
