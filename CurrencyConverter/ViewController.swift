//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Laura Burroughs on 2/8/26.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var gbpSwitch: UISwitch!
    @IBOutlet weak var jnySwitch: UISwitch!
    
    
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        
        // Read the text safely
        guard let usdText = usdTextField.text, !usdText.isEmpty else {
            errorMessage.text = "Please enter an amount."
            return
        }
        
        // Convert to int
        guard let usdAmount = Int(usdText) else {
            errorMessage.text = "Invalid input. Enter integers only."
            return
        }
        
        // Clear the error message
        errorMessage.text = ""
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

    
    

}

