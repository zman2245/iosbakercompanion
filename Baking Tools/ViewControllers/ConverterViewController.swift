//
//  ConverterViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/23/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    let COMPONENT_INGREDIENT = 0
    let COMPONENT_FROM_UNIT = 1
    let COMPONENT_TO_UNIT = 2
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var fromUnitVal: BroChefTextField!
    @IBOutlet weak var toUnitVal: UITextField!
    
    var tableData: [[String]] = [[String]]()
    var nameToUnitDict : Dictionary<String, Unit> = [:]
    var nameToIngredientDict : Dictionary<String, Ingredient> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        self.fromUnitVal.delegate = self
        self.fromUnitVal.addTarget(self, action: #selector(recalculateToValue), for: .editingChanged)
        
        var unitNames = [String]()
        for (_, value) in Units.Basic {
            unitNames.append(value.name)
            nameToUnitDict[value.name] = value
        }
        
        var ingredientNames = [String]()
        for (_, value) in Ingredients.Basic {
            ingredientNames.append(value.name)
            nameToIngredientDict[value.name] = value
        }
        
        tableData = [ingredientNames, unitNames, unitNames]
        
        fromUnitVal.addDoneButtonOnKeyboard()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Ingredients  |  from Unit  |  to Unit
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tableData[component].count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tableData[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if (component == 0) {
            return pickerView.frame.size.width * 0.55
        } else {
            return pickerView.frame.size.width * 0.225
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        recalculateToValue()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let inverseSet = NSCharacterSet(charactersIn:"0123456789").inverted
        
        let components = string.components(separatedBy: inverseSet)
        
        let filtered = components.joined(separator: "")
        
        if filtered == string {
            return true
        } else {
            if string == "." {
                let countdots = textField.text!.components(separatedBy:".").count - 1
                if countdots == 0 {
                    return true
                } else {
                    if countdots > 0 && string == "." {
                        return false
                    } else {
                        return true
                    }
                }
            } else {
                return false
            }
        }
    }
    
    @objc func recalculateToValue() {
        // get data from the UI, run the conversion algorithm, display the results in "to value"
        let ingredientName = tableData[COMPONENT_INGREDIENT][pickerView.selectedRow(inComponent: COMPONENT_INGREDIENT)]
        let fromUnitName = tableData[COMPONENT_FROM_UNIT][pickerView.selectedRow(inComponent: COMPONENT_FROM_UNIT)]
        let toUnitName = tableData[COMPONENT_TO_UNIT][pickerView.selectedRow(inComponent: COMPONENT_TO_UNIT)]
        let fromVal = (fromUnitVal.text! as NSString).doubleValue
        
        let result = Conversion.convert(ingredient: nameToIngredientDict[ingredientName]!, fromUnit: nameToUnitDict[fromUnitName]!, toUnit: nameToUnitDict[toUnitName]!, fromVal: fromVal)
        
        toUnitVal.text = String(format: "%.2f", result)
    }
}
