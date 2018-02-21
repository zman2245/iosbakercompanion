//
//  Units.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/15/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

struct Unit {
    var name : String
    var isMass : Bool
    var toCommonFactor : Double
}

struct Units {
    static let GRAMS = Unit(name: "g", isMass: true, toCommonFactor: 1.0)
    static let OUNCES = Unit(name: "oz", isMass: true, toCommonFactor: 28.3495)
    static let MILLILITERS = Unit(name: "mL", isMass: false, toCommonFactor: 1.0)
    static let CUPS = Unit(name: "cups", isMass: false, toCommonFactor: 240.0)
    static let TEASPOONS = Unit(name: "tsp", isMass: false, toCommonFactor: 4.92892)
    static let TABLESPOONS = Unit(name: "Tbl", isMass: false, toCommonFactor: 14.78676)
    static let FLUID_OUNCES = Unit(name: "fl oz", isMass: false, toCommonFactor: 29.5735)
    
    static let Basic = [
        "Grams": GRAMS,
        "Ounces": OUNCES,
        "Milliliters": MILLILITERS,
        "Cups": CUPS,
        "Teaspoons": TEASPOONS,
        "Tablespoons": TABLESPOONS,
        "Fluid Ounces": FLUID_OUNCES
    ]

    static let KILOGRAMS = Unit(name: "kg", isMass: true, toCommonFactor: 1000.0)
    static let POUNDS = Unit(name: "lb", isMass: true, toCommonFactor: 453.592)
    static let LITERS = Unit(name: "L", isMass: false, toCommonFactor: 1000.0)
    
    static let Extended = [
        "Kilograms": KILOGRAMS,
        "Pounds": POUNDS,
        "Liters": LITERS
    ]
}
