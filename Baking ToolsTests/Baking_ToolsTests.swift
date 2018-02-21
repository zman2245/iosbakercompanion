//
//  Baking_ToolsTests.swift
//  Baking ToolsTests
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import XCTest
@testable import Baking_Tools

class Baking_ToolsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testVolumeToVolume() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.MILLILITERS, toUnit: Units.MILLILITERS, fromVal: 53.0)
        XCTAssertEqual(53.0, result)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.MILLILITERS, toUnit: Units.TEASPOONS, fromVal: 53.0)
        XCTAssertEqual(10.7529, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.TEASPOONS, toUnit: Units.MILLILITERS, fromVal: 53.0)
        XCTAssertEqual(261.233, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.TEASPOONS, toUnit: Units.CUPS, fromVal: 2)
        XCTAssertEqual(0.0410743, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.CUPS, toUnit: Units.TEASPOONS, fromVal: 1)
        XCTAssertEqual(48.6922, result, accuracy: 0.01)
    }
    
    func testMassToMass() {
        var result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.GRAMS, toUnit: Units.GRAMS, fromVal: 17)
        XCTAssertEqual(17, result)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.OUNCES, toUnit: Units.GRAMS, fromVal: 17)
        XCTAssertEqual(481.942, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.GRAMS, toUnit: Units.OUNCES, fromVal: 17)
        XCTAssertEqual(0.599657, result, accuracy: 0.01)
    }
    
    func testMassToVolume() {
        var result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.GRAMS, toUnit: Units.MILLILITERS, fromVal: 53)
        XCTAssertEqual(53, result)
        
        result = Conversion.convert(ingredient: Ingredients.AP_FLOUR, fromUnit: Units.OUNCES, toUnit: Units.CUPS, fromVal: 3)
        XCTAssertEqual(0.667, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: Ingredients.BUTTER, fromUnit: Units.GRAMS, toUnit: Units.MILLILITERS, fromVal: 1000)
        XCTAssertEqual(1043.15, result, accuracy: 0.01)
    }
    
    func testVolumeToMass() {
        var result = Conversion.convert(ingredient: Ingredients.WATER, fromUnit: Units.MILLILITERS, toUnit: Units.GRAMS, fromVal: 53)
        XCTAssertEqual(53, result)
        
        result = Conversion.convert(ingredient: Ingredients.AP_FLOUR, fromUnit: Units.CUPS, toUnit: Units.OUNCES, fromVal: 0.75)
        XCTAssertEqual(3.36, result, accuracy: 0.01)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
