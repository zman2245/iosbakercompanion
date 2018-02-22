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
    class func convert(ingredient: Ingredient,
                       fromUnit: Unit,
                       toUnit: Unit,
                       fromVal: Double) -> Double {

        var valInCommonUnits = fromVal * fromUnit.toCommonFactor

        if (fromUnit.isMass && !toUnit.isMass) {
            valInCommonUnits = valInCommonUnits * ingredient.massToVolumeFactor
        } else if (!fromUnit.isMass && toUnit.isMass) {
            valInCommonUnits = valInCommonUnits * (1/ingredient.massToVolumeFactor)
        }

        valInCommonUnits = valInCommonUnits * (1/toUnit.toCommonFactor)

        return valInCommonUnits
    }
}
