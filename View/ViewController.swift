//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Justin Bell on 11/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var dollarAmountTextField: UITextField!
    
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    
    var convertLogic = CurrencyConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessageLabel.isHidden = true
        // Do any additional setup after loading the view.
    }

        
    @IBAction func currencyOneSwitch(_ sender: UISwitch) {
        if sender.isOn {
            convertLogic.setCurrencyOneSwitch(true)
        } else {
            convertLogic.setCurrencyOneSwitch(false)
        }
    }
    
    @IBAction func currencyTwoSwitch(_ sender: UISwitch) {
        if sender.isOn {
            convertLogic.setCurrencyTwoSwitch(true)
        } else {
            convertLogic.setCurrencyTwoSwitch(false)
        }
    }
    
    @IBAction func currencyThreeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            convertLogic.setCurrencyThreeSwitch(true)
        } else {
            convertLogic.setCurrencyThreeSwitch(false)
        }
    }
    
    @IBAction func currencyFourSwitch(_ sender: UISwitch) {
        if sender.isOn {
            convertLogic.setCurrencyFourSwitch(true)
        } else {
            convertLogic.setCurrencyFourSwitch(false)
        }
    }
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        guard let text = dollarAmountTextField.text,
             let _ = Int(text) else {
            showError(message: "Please enter an Integer value.")
            return
        }
        errorMessageLabel.isHidden = true
        convertLogic.setDollarAmount(Double(dollarAmountTextField.text!)!)
        if convertLogic.getCurrencyOneSwitch() {
            convertLogic.calculateCurrencyOne()
        }
        if convertLogic.getCurrencyTwoSwitch() {
            convertLogic.calculateCurrencyTwo()
        }
        if convertLogic.getCurrencyThreeSwitch() {
            convertLogic.calculateCurrencyThree()
        }
        if convertLogic.getCurrencyFourSwitch() {
            convertLogic.calculateCurrencyFour()
        }
        
        self.performSegue(withIdentifier: "toConvertCurrency", sender: self)
    }
    
    func showError(message: String) {
        errorMessageLabel.text = message
        errorMessageLabel.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertCurrency" {
            let navigation = segue.destination as! ConvertCurrencyView
            navigation.dollarAmount = convertLogic.getDollarAmount() 
            navigation.currencyOneSwitch = convertLogic.getCurrencyOneSwitch()
            navigation.currencyTwoSwitch = convertLogic.getCurrencyTwoSwitch()
            navigation.currencyThreeSwitch = convertLogic.getCurrencyThreeSwitch()
            navigation.currencyFourSwitch = convertLogic.getCurrencyFourSwitch()
            navigation.currencyOneValue = convertLogic.getCurrencyOneValue()
            navigation.currencyTwoValue = convertLogic.getCurrencyTwoValue()
            navigation.currencyThreeValue = convertLogic.getCurrencyThreeValue()
            navigation.currencyFourValue = convertLogic.getCurrencyFourValue()
        }
    }
}

