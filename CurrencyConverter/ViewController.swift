//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Laura Burroughs on 2/8/26.
//

import UIKit

class ViewController: UIViewController {
    
    var usdAmount: Int = 0
    var eurSelected: Bool = false
    var gbpSelected: Bool = false
    var jpySelected: Bool = false
    
   
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var gbpSwitch: UISwitch!
    @IBOutlet weak var jpySwitch: UISwitch!
    
    
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        
        // Read the text safely
        guard let usdText = usdTextField.text, !usdText.isEmpty else {
            errorMessage.text = "Please enter an amount."
            return
        }
        
        // Convert to int
        guard let amount = Int(usdText) else {
            errorMessage.text = "Invalid input. Enter integers only."
            return
        }
        self.usdAmount = amount
        
        
        // Clear the error message
        errorMessage.text = ""
        
        // Read which currencies to do
        eurSelected = eurSwitch.isOn
        gbpSelected = gbpSwitch.isOn
        jpySelected = jpySwitch.isOn
        
        // Pass to Screen 2
    print("USD: \(usdAmount), EUR: \(eurSelected), GBP: \(gbpSelected), JPY: \(jpySelected)")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destination = segue.destination as! NavigationViewController
            
            destination.usdAmount = usdAmount
            destination.eurSelected = eurSelected
            destination.gbpSelected = gbpSelected
            destination.jpySelected = jpySelected
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

}

