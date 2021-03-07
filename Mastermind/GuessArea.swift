//
//  GuessArea.swift
//  MastermindStarter
//
//  Created by Ali A. Kooshesh on 3/3/21.
//

import SwiftUI

struct GuessArea: View {
    let circleDiameter: CGFloat
    //MAKE GUESSROW COME FROM MODEL!
    var guessLevels = [GuessRow]()
    
    @ObservedObject var viewModel = MasterMindViewModel<CGFloat>()
    //currLevelID can go into VIEWMODEL
    var currLevelId = 0
    //This can stay
    var possibleColors = [Color.white, Color.blue, Color.yellow, Color.purple, Color.red, Color.green]

    
    init(diameter: CGFloat) {
        circleDiameter = diameter
        viewModel.startGame(someGuessRow: GuessRow(circleDiameter: circleDiameter, colors: fourBlankCircles(), id: 0))
        currLevelId += 1

    }
    
    
    var body: some View {
        VStack {
            Spacer()

            ForEach( 0..<viewModel.getNumLevels()) { idx in
                VStack {
                    Divider()
                    guessViewFor(level: idx)
                }
            }
        }
    }
    
    func guessViewFor(level: Int) -> some View {
//        print("guessViewFor level \(level), size: \(size) ")
        return viewModel.getGuessRows()[level]
    }
    
    func fourBlankCircles() -> [Color] {
        return [.white, .white, .white, .white, .white]
    }
    
    
}

struct GuessRow: View {
    let circleDiameter: CGFloat
    var colors: [Color]
    var id: Int
    
    
    var body: some View {
        HStack(spacing: 20.0) {
            HStack {
                ForEach( 0..<4) { idx in
                    GameCircle(diameter: circleDiameter, color: colors[0], id: idx)
                }
            }
            
            FeedbackArea(length: circleDiameter)
        }
    }
}
