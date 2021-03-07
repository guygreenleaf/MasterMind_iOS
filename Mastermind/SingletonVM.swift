//
//  SingletonVM.swift
//  Mastermind
//
//  Created by Guy Greenleaf on 3/7/21.
//

import Foundation
class SingletonVM: ObservableObject{
    static let sharedInstance = SingletonVM()
    init(){}
    
    var globalViewModel = MasterMindViewModel()
}
