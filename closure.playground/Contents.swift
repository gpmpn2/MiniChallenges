//: Playground - noun: a place where people can play

import UIKit

struct MathOperation {
    let units: String
    let operation:(Double, Double) -> Double
    
    init?(units: String, operation: @escaping (Double, Double) -> Double) {
        if units.isEmpty {
            return nil
        }
        self.units = units
        self.operation = operation
    }
}

var inchesAddition = MathOperation(units: "inches", operation: {
    (var1, var2) in
    return var1 + var2
})

if let inchesAddition = inchesAddition {
    let sum = inchesAddition.operation(2.4,6.6)
    print("Sum of \(sum)")
}
