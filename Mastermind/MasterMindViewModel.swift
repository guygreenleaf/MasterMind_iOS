//
//  ViewModel.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/3/21.
//

import Foundation

class MasterMindViewModel: ObservableObject{
    @Published var mastermindModel = MastermindModel<Int, Float>()
   
   
//    init(){
//        print(mastermindModel.guessLevels.count)
//    }
    
    func getSelectedColor() -> Int {
        return mastermindModel.selectedColor
    }
    
    func storeSelectedColor(colorSelection: Int) {
        mastermindModel.changeCurrColor(changeTo: colorSelection)
    }
    func startGame(someGuessRow:GuessRow){
        mastermindModel.guessLevels.append(someGuessRow)
        print(mastermindModel.guessLevels)
    }
    
    
    func getNumLevels()->Int{
        return mastermindModel.guessLevels.count
    }
    

    func changeColor(currColor:Int, color:Int){
        mastermindModel.changeColorCircle(circleToChange: currColor, colorToChangeTo: color)
        
    }
    
    func getCurrentColorsArray(indx:Int) -> Int{
        return mastermindModel.userGuess[indx].currentColor
    }
    
     func getGuessRows() -> Array<GuessRow> {
        return mastermindModel.guessLevels
    }
    
    func getUserGuess() -> Array<MastermindModel<Int, Float>.Circles>{
        return mastermindModel.userGuess
    }
   static func startGuessRowBlank(blankCircle: Int) -> Int{
        return blankCircle
    }
    
    
}
