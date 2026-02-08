//
//  NavigationViewController.swift
//  CurrencyConverter
//
//  Created by Laura Burroughs on 2/8/26.
//

import UIKit

class NavigationViewController: UIViewController {
    
    // Variables needed
    var usdAmount: Int = 0
    var eurSelected: Bool = false
    var gbpSelected: Bool = false
    var jpySelected: Bool = false
    
    
    
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdAmountLabel: UILabel!
    
    
    
    func convertCurrency(amount: Int, rate: Double) -> Double {
        return Double(amount) * rate
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // USD entered
        usdAmountLabel.text = "\(usdAmount)"
        
        
        // EUR
        if eurSelected {
            let eurValue = convertCurrency(amount: usdAmount, rate: 0.92)
            eurLabel.text = "\(usdAmount) USD = \(Int(eurValue)) EUR"
            eurLabel.isHidden = false
        } else {
            eurLabel.isHidden = true
        }
        
        // GBP
        if gbpSelected {
            let gbpValue = convertCurrency(amount: usdAmount, rate: 0.79)
            gbpLabel.text = "\(usdAmount) USD = \(Int(gbpValue)) GBP"
            gbpLabel.isHidden = false
        } else {
            gbpLabel.isHidden = true
        }
        
        // JPY
        if jpySelected {
            let jpyValue = convertCurrency(amount: usdAmount, rate: 140.0)
            jpyLabel.text = "\(usdAmount) USD = \(Int(jpyValue)) JPY"
            jpyLabel.isHidden = false
        } else {
            jpyLabel.isHidden = true
        }
        
    }

}
