//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by chrise on 10/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//  Controls bmi setting and getting methods

import UIKit
import Foundation

struct CalculatorBrain {
    
    //bmiValue variable to calculated bmi
    var bmi:BMI?
    
    mutating func calculateBMI(_ height:Float ,_ weight:Float) {
        
        //formula for BMI: BMI = weight(Kg)/(height)^2(m)
        let bmiValue =  weight/(pow(height, 2))
    
        //set bmi instance values according to actual bmi value
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), advice: "Try the seafood diet, when you see food eat it!")
        }
        else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), advice: "Stop with the sweets!")
        }
        else{
            bmi = BMI(value: bmiValue, color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), advice: "Keep up the good work!")
        }
        

    }
    
    //getter for BMI Value
    func getBMIValue() -> String {
        
        //format bmi value to return to user
        let bmiValueString = String(format: "%.1f", bmi?.value ?? 0.0)

        return bmiValueString
        
    }
    
    //getter for Advice value
    func getAdvice() -> String {
        
        return bmi?.advice ?? "there is no advice sorry"
    }
    
    //getter for UIColor value
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
