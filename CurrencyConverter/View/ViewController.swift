//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Laura Burroughs on 2/8/26.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables hold user input
    var usdAmount: Int = 0
    var eurSelected: Bool = false
    var gbpSelected: Bool = false
    var jpySelected: Bool = false
    
    
    // IB Outlets
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var gbpSwitch: UISwitch!
    @IBOutlet weak var jpySwitch: UISwitch!
    
    
    // Button Action
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        print("Convert buttong tapped")
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showResults" {
            
            // Validate USD input
            guard let usdText = usdTextField.text, !usdText.isEmpty else {
                errorMessage.text = "Please enter an amount."
                return false
            }
            
            guard let amount = Int(usdText) else {
                errorMessage.text = "Invalid input. Enter integers only."
                return false
            }
            
            
            // Save values for prepare(for:) to use
            usdAmount = amount
            eurSelected = eurSwitch.isOn
            gbpSelected = gbpSwitch.isOn
            jpySelected = jpySwitch.isOn
            
            
            // Clear error message
            errorMessage.text = ""
            return true
        }
        
        return true
    }
        
    
    
    // Pass data to Screen 2
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
    }
}

