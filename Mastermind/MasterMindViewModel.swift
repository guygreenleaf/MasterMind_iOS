//
//  ViewModel.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/3/21.
//

import Foundation

class MasterMindViewModel<Diameter>: ObservableObject{
    @Published var mastermindModel = MastermindModel<Int, Float>(colorForCircle: startGuessRowBlank)
   
//    init(){
//        print(mastermindModel.guessLevels.count)
//    }
    
    func getSelectedColor() -> Int {
        return mastermindModel.selectedColor
    }
    
    func storeSelectedColor(colorSelection: Int) {
        mastermindModel.selectedColor = colorSelection
    }
    func startGame(someGuessRow:GuessRow){
        mastermindModel.guessLevels.append(someGuessRow)
        print(mastermindModel.guessLevels)
    }
    
    
    
    func getNumLevels()->Int{
        return mastermindModel.guessLevels.count
    }
    

    
     func getGuessRows() -> Array<GuessRow> {
        return mastermindModel.guessLevels
    }
   static func startGuessRowBlank(blankCircle: Int) -> Int{
        return blankCircle
    }
    
    
}
