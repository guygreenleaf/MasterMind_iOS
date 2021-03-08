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
    
    func incrementLevelID(){
        mastermindModel.currLevelId += 1
    }
    

    func getLevelID()->Int{
        return mastermindModel.currLevelId
    }
    
    func incrementCircleID(){
        mastermindModel.circleId += 1
    }
    
    func getCircleID()->Int{
        mastermindModel.circleId += 1 
        return mastermindModel.circleId
    }
    
    func getNumLevels()->Int{
        return mastermindModel.guessLevels.count
    }
    

    func changeColor(currColor:Int, color:Int){
        mastermindModel.changeColorCircle(circleToChange: currColor, colorToChangeTo: color)
        
    }
    func getCurrColors()->Array<Int>{
        return mastermindModel.currColors
    }
    
    func resetColors(){
        mastermindModel.currColors[0] = 0
        mastermindModel.currColors[1] = 0
        mastermindModel.currColors[2] = 0
        mastermindModel.currColors[3] = 0
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
    
    func createNewCircles(){
        mastermindModel.newCircles()
    }
    
   static func startGuessRowBlank(blankCircle: Int) -> Int{
        return blankCircle
    }
    
    func checkWin()-> Bool{
        if(mastermindModel.currColors[0] == mastermindModel.solution[0] && mastermindModel.currColors[1] == mastermindModel.solution[1] &&
            mastermindModel.currColors[2] == mastermindModel.solution[2] &&
            mastermindModel.currColors[3] == mastermindModel.solution[3]){
            return true
        }
        return false
    }
    
    
}
