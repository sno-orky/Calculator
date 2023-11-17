//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Raphael Vitor on 17/11/23
//

import Foundation
import Combine

class CalculatorViewModel: ObservableObject {
    @Published var displayValue: Double = 0
    @Published var calculationValue: Double = 0
    @Published var isShowingDecimalPoint: Bool = false
    @Published var operation: String = ""
    
    var formattedDisplayValue: String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 6
        formatter.minimumFractionDigits = 0
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ""
        
        return formatter.string(from: NSNumber(value: displayValue)) ?? "0"
    }
    
    func addNumber(number: Int) {
        if displayValue == 0 {
            displayValue = Double(number)
        } else {
            let stringValue = String(Int(displayValue)) + String(number)
            displayValue = Double(stringValue) ?? 0
        }
    }
    
    func decimalPoint() {
        if !isShowingDecimalPoint {
            displayValue = displayValue + 0.0
            isShowingDecimalPoint = true
        }
    }
    
    func clear() {
        displayValue = 0
        calculationValue = 0
        isShowingDecimalPoint = false
        operation = ""
    }
    
    func plusMinus() {
        displayValue = displayValue * -1
    }
    
    func percent() {
        displayValue = displayValue / 100
    }
    
    func setOperation(_ op: String) {
        operation = op
        calculationValue = displayValue
        displayValue = 0
        isShowingDecimalPoint = false
    }
    
    func calculate() {
        if operation == "+" {
            displayValue = calculationValue + displayValue
        } else if operation == "-" {
            displayValue = calculationValue - displayValue
        } else if operation == "*" {
            displayValue = calculationValue * displayValue
        } else if operation == "/" {
            displayValue = calculationValue / displayValue
        }
        
        operation = ""
        calculationValue = 0
        isShowingDecimalPoint = false
    }
}
