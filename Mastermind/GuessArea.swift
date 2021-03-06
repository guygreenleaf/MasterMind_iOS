//
//  GuessArea.swift
//  MastermindStarter
//
//  Created by Ali A. Kooshesh on 3/3/21.
//

import SwiftUI

struct GuessArea: View {
    let circleDiameter: CGFloat
    var guessLevels = [GuessRow]()
    var currLevelId = 0
    var possibleColors = [Color.blue, Color.yellow, Color.purple, Color.red, Color.green]
    
    
    init(diameter: CGFloat) {
        circleDiameter = diameter
        guessLevels.append(GuessRow(circleDiameter: circleDiameter, colors: fourBlankCircles(), id: currLevelId))
        currLevelId += 1

    }
    
    
    var body: some View {
        VStack {
            Spacer()

            ForEach( 0..<guessLevels.count ) { idx in
                VStack {
                    Divider()
                    guessViewFor(level: idx)
                }
            }
        }
    }
    
    func guessViewFor(level: Int) -> some View {
//        print("guessViewFor level \(level), size: \(size) ")
        return  guessLevels[level]
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
