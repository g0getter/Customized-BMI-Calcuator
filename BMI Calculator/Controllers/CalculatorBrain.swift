//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 여나경 on 2022/03/07.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

/// Calculate
struct CalculatorBrain {
    
    var bmiValue: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        guard let bmi = bmiValue else { return "" }
        let bmiString = String(format: "%.1f", bmi)
        
        return bmiString
    }
}
