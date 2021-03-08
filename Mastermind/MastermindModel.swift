//
//  Model.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/3/21.
//

import Foundation

struct MastermindModel<Colors, Diameter>{
    
//    var circles: Array<Circles> = []
//
    var guessLevels = [GuessRow]()
    
    var selectedColor = 0
   
    
    var guessRowCircles:Array<GameCircle> = []
    
    var userGuess:Array<Circles> = []
    
    
    
    var numCirclesInRow:Int = 4
    
    var colorOfCircle:Int
    var currColors = [0,0,0,0]
    var colors = [0, 1, 2, 3, 4]
    
    var palletteColors = [ 1, 2, 3, 4]
    
    var currLevelId = 0
    
    var circleId = 0

    
    init(){
    colorOfCircle = 0

        for _ in 0..<numCirclesInRow{
            userGuess.append(Circles(color: 0 , currentColor: 0, id: circleId))
            circleId += 1
        }
    }

    mutating func newCircles(){
        userGuess.append(Circles(color: 0 , currentColor: 0, id: circleId))
        circleId += 1
    }
    
    mutating func changeColorCircle(circleToChange:Int, colorToChangeTo:Int){
        currColors[circleToChange] = colorToChangeTo
        userGuess[circleToChange].currentColor = colorToChangeTo
    }
    
    struct Circles:Identifiable{
        let color: Int
        var currentColor: Int
        var id: Int
    }
    
    mutating func changeCurrColor(changeTo: Int){
        self.selectedColor = changeTo
    }
    
    
//    var solution = [Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4)]
    
    var solution = [2, 2, 2, 2]
}






