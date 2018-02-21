//
//  Conversion.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/21/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

class Conversion {
    // I should have just used classes for units/ingredients and defined constants
    class func convert(ingredient: String,
                       fromUnit: String,
                       toUnit: String,
                       fromVal: Double) -> Double {

        var valInCommonUnits : Double

        var fromUnitDict : Dictionary<String, Any>
        var toUnitDict : Dictionary<String, Any>
        var ingredientDict : Dictionary<String, Any>

        if (Units.Basic[fromUnit] != nil) {
            fromUnitDict = Units.Basic[fromUnit]!
        } else if (Units.Extended[fromUnit] != nil) {
            fromUnitDict = Units.Extended[fromUnit]!
        } else {
            preconditionFailure("fromUnit " + fromUnit + " invalid")
        }

        if (Units.Basic[toUnit] != nil) {
            toUnitDict = Units.Basic[toUnit]!
        } else if (Units.Extended[toUnit] != nil) {
            toUnitDict = Units.Extended[toUnit]!
        } else {
            preconditionFailure("toUnit " + toUnit + " invalid")
        }

        if (Ingredients.Basic[ingredient] != nil) {
            ingredientDict = Ingredients.Basic[ingredient]!
        } else if (Ingredients.Extended[ingredient] != nil) {
            ingredientDict = Ingredients.Extended[ingredient]!
        } else {
            preconditionFailure("ingredient " + toUnit + " ingredient")
        }

        valInCommonUnits = fromVal * (fromUnitDict["toCommonFactor"] as! Double)

        if ((fromUnitDict["isMass"] as! Bool) && !(toUnitDict["isMass"] as! Bool)) {
            valInCommonUnits = valInCommonUnits * (ingredientDict["massToVolumeFactor"] as! Double)
        } else if (!(fromUnitDict["isMass"] as! Bool) && (toUnitDict["isMass"] as! Bool)) {
            valInCommonUnits = valInCommonUnits * (1/(ingredientDict["massToVolumeFactor"] as! Double))
        }

        valInCommonUnits = valInCommonUnits * (1/(toUnitDict["toCommonFactor"] as! Double))
        
        return valInCommonUnits
    }
}
