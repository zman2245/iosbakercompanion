//
//  VolumeCheatData.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/23/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

final class CheatSheetData {
    
    static func generateVolumeCheatData() -> [CheatConversion] {
        return [
            CheatConversion(from: "1 Tablespoon", to: "3 teaspoons"),
            CheatConversion(from: "1 Cup", to: "16 Tablespoons"),
            CheatConversion(from: "1 Cup", to: "48 teaspoons"),
            CheatConversion(from: "1/4 Cup", to: "4 Tablespoons")
        ]
    }
    
    static func generateVolumeToMassCheatData() -> [CheatConversion] {
        return [
            CheatConversion(from: "1 Cup AP Flour", to: "125 g; 4.5 oz"),
            CheatConversion(from: "1 Cup Cake Flour", to: "113 g; 4 oz"),
            CheatConversion(from: "1 Cup Whole Wheat Flour", to: "156 g; 5.5 oz"),
            CheatConversion(from: "1 Cup Sugar", to: "200 g; 7 oz"),
            CheatConversion(from: "1 Cup Packed Brown Sugar", to: "200 g; 7 oz"),
            CheatConversion(from: "1 Cup Powder Sugar", to: "112 g; 4 oz"),
            CheatConversion(from: "1 Cup Cocoa Powder", to: "125 g; 4.5 oz"),
            CheatConversion(from: "1 Stick; 1/2 Cup; 8 Tbl Butter", to: "113 g; 4 oz"),
            CheatConversion(from: "1/2 Stick; 1/4 Cup; 4 Tbl Butter", to: "57 g; 2 oz")
        ]
    }
}
