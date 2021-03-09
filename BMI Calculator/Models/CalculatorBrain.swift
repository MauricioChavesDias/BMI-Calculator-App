//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mauricio Dias on 9/3/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(h height: Float, w weight: Float) {
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5 {
            BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            BMI(value: bmiValue, advice: "Fit as a fiddle!", colour: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            BMI(value: bmiValue, advice: "Eat less pies!", colour: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format:"%.1f", bmi?.value ?? 0)
        return bmiValue
    }
    
}
