//
//  TipCalculator.swift
//  Tip Calculator
//
//  Created by Johnathan Aviles on 2/10/21.
//

import Foundation

class TipCalculator{
    var billAmount: Double = 0
    var tipPercentage: Double = 0
    var tipValue: Double = 0
    var totalBillAmount: Double = 0
    
    init(billAmount: Double, tipPercentage: Double) {
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
        
    }
    
    func calculateTip() {
        tipValue = billAmount * (tipPercentage / 100)
        totalBillAmount = tipValue + billAmount
    }
    
}



















//let billAmount = (billAmountTextField.text! as NSString).doubleValue
//let tipAmount = (tipPercentageTextField.text! as NSString).doubleValue
//
//var tipTotal = billAmount / (tipAmount * 100)
//let tipPlusTotal = billAmount + tipTotal
//
//tipTotal = tipTotalLabel.text
