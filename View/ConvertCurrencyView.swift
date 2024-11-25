//
//  ConvertCurrencyView.swift
//  CurrencyConverter
//
//  Created by Justin Bell on 11/20/24.
//

import UIKit

class ConvertCurrencyView: UIViewController {

    @IBOutlet weak var dollarAmountLabel: UILabel!
    
    @IBOutlet weak var currencyOneLabel: UILabel!
    @IBOutlet weak var currencyTwoLabel: UILabel!
    @IBOutlet weak var currencyThreeLabel: UILabel!
    @IBOutlet weak var currencyFourLabel: UILabel!
    
    
    @IBOutlet weak var currencyOneAmountLabel: UILabel!
    @IBOutlet weak var currencyTwoAmountLabel: UILabel!
    @IBOutlet weak var currencyThreeAmountLabel: UILabel!
    @IBOutlet weak var currencyFourAmountLabel: UILabel!

    
    var dollarAmount = 0.0
    var currencyOneSwitch = true
    var currencyTwoSwitch = true
    var currencyThreeSwitch = true
    var currencyFourSwitch = true
    
    var currencyOneValue = 0.0
    var currencyTwoValue = 0.0
    var currencyThreeValue = 0.0
    var currencyFourValue = 0.0
    var convertLogic = CurrencyConverterLogic()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dollarAmountLabel.text = "$\(Int(dollarAmount))"
        if currencyOneSwitch {
            currencyOneLabel.isHidden = false
            currencyOneAmountLabel.isHidden = false
            currencyOneAmountLabel.text = "$\(Int(currencyOneValue))"
        }
        else {
            currencyOneLabel.isHidden = true
            currencyOneAmountLabel.isHidden = true
        }
        if currencyTwoSwitch {
            currencyTwoLabel.isHidden = false
            currencyTwoAmountLabel.isHidden = false
            currencyTwoAmountLabel.text = "$\(Int(currencyTwoValue))"
        }
        else {
            currencyTwoLabel.isHidden = true
            currencyTwoAmountLabel.isHidden = true
        }
        if currencyThreeSwitch {
            currencyThreeLabel.isHidden = false
            currencyThreeAmountLabel.isHidden = false
            currencyThreeAmountLabel.text = "$\(Int(currencyThreeValue))"
        }
        else {
            currencyThreeLabel.isHidden = true
            currencyThreeAmountLabel.isHidden = true
        }
        if currencyFourSwitch {
            currencyFourLabel.isHidden = false
            currencyFourAmountLabel.isHidden = false
            currencyFourAmountLabel.text = "$\(Int(currencyFourValue))"
        }
        else {
            currencyFourLabel.isHidden = true
            currencyFourAmountLabel.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
