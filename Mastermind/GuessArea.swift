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
    
    init(diameter: CGFloat) {
        circleDiameter = diameter
        guessLevels.append(GuessRow(circleDiameter: circleDiameter, colors: fourBlankCircles(), id: 0))
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
        return [Color.blue, Color.yellow, Color.purple, Color.red, Color.green]
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
                    GameCircle(diameter: circleDiameter, color: colors[Int.random(in: 0...colors.count-1)], id: idx)
                }
            }
            
            FeedbackArea(length: circleDiameter)
        }
    }
}
