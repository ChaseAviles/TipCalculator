//
//  TipViewController.swift
//  Tip Calculator
//
//  Created by Johnathan Aviles on 2/9/21.
//

import UIKit
import Foundation

class TipViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    @IBOutlet weak var tipTotalLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    
    var tipCalculator = TipCalculator(billAmount: 0, tipPercentage: 0)
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func calculateBill() {
        tipCalculator.tipPercentage = (tipPercentageTextField.text! as NSString).doubleValue
        tipCalculator.billAmount = (billAmountTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    
    func updateUI() {
        tipTotalLabel.text = String(format: "$%0.2f", tipCalculator.tipValue)
        billTotalLabel.text = String(format: "$%0.2f", tipCalculator.totalBillAmount)
    }
    
    
    // MARK: - Actions
    @IBAction func calculateButtonTapped(_ sender: Any) {
        calculateBill()
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        billAmountTextField.text = ""
        tipPercentageTextField.text = ""
    }
    
    
}
