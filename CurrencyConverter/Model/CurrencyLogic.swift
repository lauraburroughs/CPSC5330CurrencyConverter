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
    
    static func convert(amouth: Int, to currency: String) -> Double {
        switch currency {
            case "EUR":
            return Double(amouth) * eurRate
        case "GBP":
            return Double(amouth) * gbpRate
        case "JPY":
            return Double(amouth) * jpyRate
        default:
            return 0.0
        }
    }
}
