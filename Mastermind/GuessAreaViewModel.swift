//
//  GuessAreaViewModel.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/7/21.
//

import Foundation

class GuessAreaViewModel:ObservableObject{
    
    
    @Published var mastermindModel = MastermindModel<Int, Float>()
   
   
//    init(){
//        print(mastermindModel.guessLevels.count)
//    }
    
    func getSelectedColor() -> Int {
        return mastermindModel.selectedColor
    }
    
    
    func changeColor(currColor:Int, color:Int){
        mastermindModel.changeColorCircle(circleToChange: currColor, colorToChangeTo: color)
        
    }
    
    
    
    
    func getCurrentColorsArray(indx:Int) -> Int{
        return mastermindModel.userGuess[indx].currentColor
    }
}
