//
//  AppBrain.swift
//  Tipsy
//
//  Created by Aditya Virbhadra Vyavahare on 02/09/22.
//

import Foundation

struct AppBrain {
    
    var percentTip: Float = 0.0
    var totalPerPerson: Float = 0.0
    
    mutating func calculatePercentTip(_ tipSelected: Float) {
        percentTip = (tipSelected/100)
    }
    func getPercentTip() -> Float {
        return percentTip
    }
    
    mutating func calculateTotal(_ userInput: Float, _ splitNumber: Float) {
        totalPerPerson = (userInput + (userInput * percentTip))/splitNumber
    }
    func getTotal() -> Float {
        return totalPerPerson
    }
}
