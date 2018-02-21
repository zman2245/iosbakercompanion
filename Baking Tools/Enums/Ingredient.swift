//
//  Ingredients.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/15/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

struct Ingredient {
    let name : String
    let massToVolumeFactor : Double
}

struct Ingredients {
    static let AP_FLOUR = Ingredient(name: "AP Flour", massToVolumeFactor: 1.8927)
    static let SUGAR = Ingredient(name: "Sugar", massToVolumeFactor: 1.1829)
    static let BROWN_SUGAR = Ingredient(name: "Brown Sugar", massToVolumeFactor: 1.1829)
    static let POWDER_SUGAR = Ingredient(name: "Powder Sugar", massToVolumeFactor: 2.1508)
    static let COCOA_POWDER = Ingredient(name: "Cocoa Powder", massToVolumeFactor: 1.8927)
    static let WATER = Ingredient(name: "Water", massToVolumeFactor: 1.0)
    static let OIL = Ingredient(name: "Oil", massToVolumeFactor: 1.0)
    static let BUTTER = Ingredient(name: "Butter", massToVolumeFactor: 1.043158009)

    static let Basic = [
        "AP Flour" : AP_FLOUR,
        "Sugar" : SUGAR,
        "Brown Sugar" : BROWN_SUGAR,
        "Powder Sugar" : POWDER_SUGAR,
        "Cocoa Powder" : COCOA_POWDER,
        "Water" : WATER,
        "Oil" : OIL,
        "Butter" : BUTTER
    ]

    static let CAKE_FLOUR = Ingredient(name: "Cake Flour", massToVolumeFactor: 1.971567)
    static let BREAD_FLOUR = Ingredient(name: "Bread Flour", massToVolumeFactor: 1.75250)
    static let CHOC_CHIPS = Ingredient(name: "Chocolate Chips", massToVolumeFactor: 1.35193)
    static let GRATED_CHEESE = Ingredient(name: "Grated Cheese", massToVolumeFactor: 1.89270)

    static let Extended = [
        "Cake Flour" : CAKE_FLOUR,
        "Bread Flour" : BREAD_FLOUR,
        "Chocolate Chips" : CHOC_CHIPS,
        "Grated Cheese" : GRATED_CHEESE
    ]
}
