//
//  Units.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/15/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

struct Units {
    static let Basic = [
        "Grams": [
            "name": "Grams",
            "isMass": true,
            "toCommonFactor": 1.0
        ], "Ounces": [
            "name": "Ounces",
            "isMass": true,
            "toCommonFactor": 28.3495
        ], "Milliliters": [
            "name": "Milliliters",
            "isMass": false,
            "toCommonFactor": 1.0
        ], "Cups": [
            "name": "Cups",
            "isMass": false,
            "toCommonFactor": 240.0
        ], "Teaspoons": [
            "name": "Teaspoons",
            "isMass": false,
            "toCommonFactor": 4.92892
        ], "Tablespoons": [
            "name": "Tablespoons",
            "isMass": false,
            "toCommonFactor": 14.78676
        ], "Fluid Ounces": [
            "name": "Fluid Ounces",
            "isMass": false,
            "toCommonFactor": 29.5735
        ]
    ]

    static let Extended = [
        "Kilograms": [
            "name": "Kilograms",
            "isMass": true,
            "toCommonFactor": 1000.0
        ], "Pounds": [
            "name": "Pounds",
            "isMass": true,
            "toCommonFactor": 453.592
        ], "Liters": [
            "name": "Liters",
            "isMass": false,
            "toCommonFactor": 1000.0
        ]
    ]
}
