//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 여나경 on 2022/03/07.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

/// Calculate
struct CalculatorBrain {
    
    var bmi: BMI?
    
//    var bmiValue: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice = ""
        var color: UIColor?
        
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = .blue
        } else if bmiValue <= 24.9 {
            advice = "Fit as a fiddle!"
            color = .green
        } else {
            advice = "Eat less pies!"
            color = .red
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiString
    }
    
    func getAdvice() -> String? {
        return bmi?.advice
    }
    
    func getColor() -> UIColor? {
        return bmi?.color
    }
}
