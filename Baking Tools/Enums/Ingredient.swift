//
//  Ingredients.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/15/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

struct Ingredients {

    static let Basic = [
        "AP Flour": [
            "name": "AP Flour",
            "massToVolumeFactor": 1.8927
        ],
        "Sugar": [
            "name": "Sugar",
            "massToVolumeFactor": 1.1829
        ], "Brown Sugar": [
            "name": "Brown Sugar",
            "massToVolumeFactor": 1.1829
        ], "Powder Sugar": [
            "name": "Powder Sugar",
            "massToVolumeFactor": 2.1508
        ], "Cocoa Powder": [
            "name": "Cocoa Powder",
            "massToVolumeFactor": 1.8927
        ], "Water": [
            "name": "Water",
            "massToVolumeFactor": 1.0
        ], "Oil": [
            "name": "Oil",
            "massToVolumeFactor": 1.0
        ], "Butter": [
            "name": "Butter",
            "massToVolumeFactor": 1.043158009
        ]
    ]

    static let Extended = [
        "Cake Flour": [
            "name": "Cake Flour",
            "massToVolumeFactor": 1.971567
        ], "Bread Flour": [
            "name": "Bread Flour",
            "massToVolumeFactor": 1.75250
        ], "Chocolate Chips": [
            "name": "Chocolate Chips",
            "massToVolumeFactor": 1.35193
        ], "Grated Cheese": [
            "name": "Grated Cheese",
            "massToVolumeFactor": 1.89270
        ]
    ]

}
