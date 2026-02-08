//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Laura Burroughs on 2/8/26.
//

import Foundation

struct CurrencyLogic {
    
    // Conversion Rates
    static let eurRate = 0.92
    static let gbpRate = 0.79
    static let jpyRate = 140.0
    
    static func convert(amount: Int, to currency: String) -> Double {
        switch currency {
            case "EUR":
                return Double(amount) * eurRate
            case "GBP":
                return Double(amount) * gbpRate
            case "JPY":
                return Double(amount) * jpyRate
            default:
                return 0.0
        }
    }
}
