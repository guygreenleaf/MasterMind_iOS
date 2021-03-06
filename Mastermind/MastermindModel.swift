//
//  Model.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/3/21.
//

import Foundation

struct MastermindModel<Colors>{
    
//    var circles: Array<Circles> = []
//
    var guessLevels = [GuessRow]()
    
    var selectedColor = 0
   
    var userGuess:Array<Circles> = []
    
    var numCirclesInRow:Int = 4
    
    var colorOfCircle:Int
    
    var colors = [1, 2, 3, 4, 5, 6]
    
    var currLevelId = 0
    
    var circleId = 0

    
    init(colorForSquare: (Int) -> Colors){
    colorOfCircle = 0

        for _ in 0..<numCirclesInRow{
            userGuess.append(Circles(color: colorForSquare(0) , currentColor: 0, id: circleId))
            circleId += 1
        }
    }
    
    
    struct Circles:Identifiable{
        let color: Colors
        var currentColor: Int
        
        var id: Int
    }
    
    
    var solution = [Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4)]
}






