//
//  Model.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/3/21.
//

import Foundation

struct Model{
    
    var userGuess:[[Int]] = []
    
    var colors = [1, 2, 3, 4, 5]
    
    mutating func createGameFor(){
        
    }
    
    
}

//Solution to puzzle:
var solution = [Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4), Int.random(in:0...4)]



