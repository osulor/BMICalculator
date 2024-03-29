//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mubarak Akinbola on 10/24/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
   mutating func calculateBMI(height: Float, weight: Float)  {
        
        let bmiValue = weight / (powf(height, 2.0))
        
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice:"Eat more pies" , color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
        bmi = BMI(value: bmiValue, advice: "Fit as a fiddle! ", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
        bmi = BMI(value: bmiValue, advice:"Eat less junk foods" , color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) )

        }
    }
    
    func getBMIValue() -> String{
        
        let  bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Something went wrong, did you enter your infos?)"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .yellow

    }
    
}
