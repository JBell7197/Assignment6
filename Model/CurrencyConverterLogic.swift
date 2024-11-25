//
//  CurrencyConverterLogic.swift
//  CurrencyConverter
//
//  Created by Justin Bell on 11/21/24.
//

import Foundation

struct CurrencyConverterLogic {
    
    
    var dollarAmount = 0.0
    var currencyOneSwitch = true
    var currencyTwoSwitch = true
    var currencyThreeSwitch = true
    var currencyFourSwitch = true
    
    var currencyOneValue = 0.0
    var currencyTwoValue = 0.0
    var currencyThreeValue = 0.0
    var currencyFourValue = 0.0
    
    func getDollarAmount() -> Double {
        return dollarAmount
    }
    
    mutating func setDollarAmount(_ amount: Double) {
        dollarAmount = amount
    }
    
    func getCurrencyOneSwitch() -> Bool {
        return currencyOneSwitch
    }
    
    mutating func setCurrencyOneSwitch(_ currencyOne: Bool) {
        currencyOneSwitch = currencyOne
    }
    
    func getCurrencyTwoSwitch() -> Bool {
        return currencyTwoSwitch
    }
    
    mutating func setCurrencyTwoSwitch(_ currencyTwo: Bool) {
        currencyTwoSwitch = currencyTwo
    }
    
    func getCurrencyThreeSwitch() -> Bool {
        return currencyThreeSwitch
    }
    
    mutating func setCurrencyThreeSwitch(_ currencyThree: Bool) {
        currencyThreeSwitch = currencyThree
    }
    
    func getCurrencyFourSwitch() -> Bool {
        return currencyFourSwitch
    }
    
    mutating func setCurrencyFourSwitch(_ currencyFour: Bool) {
        currencyFourSwitch = currencyFour
    }
    
    func getCurrencyOneValue() -> Double {
        return currencyOneValue
    }
    
    func getCurrencyTwoValue() -> Double {
        return currencyTwoValue
    }
    
    func getCurrencyThreeValue() -> Double {
        return currencyThreeValue
    }
    
    func getCurrencyFourValue() -> Double {
        return currencyFourValue
    }
    
    mutating func calculateCurrencyOne() {
        currencyOneValue = dollarAmount * 0.75
    }
    
    mutating func calculateCurrencyTwo() {
        currencyTwoValue = dollarAmount * 0.90
    }
    
    mutating func calculateCurrencyThree() {
        currencyThreeValue = dollarAmount * 0.98
    }
    
    mutating func calculateCurrencyFour() {
        currencyFourValue = dollarAmount * 0.71
    }
}
