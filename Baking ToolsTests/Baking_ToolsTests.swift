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
        var result = Conversion.convert(ingredient: "Water", fromUnit: "Milliliters", toUnit: "Milliliters", fromVal: 53.0)
        XCTAssertEqual(53.0, result)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Milliliters", toUnit: "Teaspoons", fromVal: 53.0)
        XCTAssertEqual(10.7529, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Teaspoons", toUnit: "Milliliters", fromVal: 53.0)
        XCTAssertEqual(261.233, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Teaspoons", toUnit: "Cups", fromVal: 2)
        XCTAssertEqual(0.0410743, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Cups", toUnit: "Teaspoons", fromVal: 1)
        XCTAssertEqual(48.6922, result, accuracy: 0.01)
    }
    
    func testMassToMass() {
        var result = Conversion.convert(ingredient: "Water", fromUnit: "Grams", toUnit: "Grams", fromVal: 17)
        XCTAssertEqual(17, result)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Ounces", toUnit: "Grams", fromVal: 17)
        XCTAssertEqual(481.942, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: "Water", fromUnit: "Grams", toUnit: "Ounces", fromVal: 17)
        XCTAssertEqual(0.599657, result, accuracy: 0.01)
    }
    
    func testMassToVolume() {
        var result = Conversion.convert(ingredient: "Water", fromUnit: "Grams", toUnit: "Milliliters", fromVal: 53)
        XCTAssertEqual(53, result)
        
        result = Conversion.convert(ingredient: "AP Flour", fromUnit: "Ounces", toUnit: "Cups", fromVal: 3)
        XCTAssertEqual(0.667, result, accuracy: 0.01)
        
        result = Conversion.convert(ingredient: "Butter", fromUnit: "Grams", toUnit: "Milliliters", fromVal: 1000)
        XCTAssertEqual(1043.15, result, accuracy: 0.01)
    }
    
    func testVolumeToMass() {
        var result = Conversion.convert(ingredient: "Water", fromUnit: "Milliliters", toUnit: "Grams", fromVal: 53)
        XCTAssertEqual(53, result)
        
        result = Conversion.convert(ingredient: "AP Flour", fromUnit: "Cups", toUnit: "Ounces", fromVal: 0.75)
        XCTAssertEqual(3.36, result, accuracy: 0.01)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
