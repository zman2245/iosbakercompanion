//
//  FirstViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var fromUnitVal: UITextField!
    @IBOutlet weak var toUnitVal: UITextField!
    
    var ingredientsData: [String] = [String]()
    var unitsData: [String] = [String]()
    var tableData: [[String]] = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        ingredientsData = Array(Ingredients.Basic.keys)
        unitsData = Array(Units.Basic.keys)
        
        tableData = [ingredientsData, unitsData, unitsData]
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
            return pickerView.frame.size.width/2.0
        } else {
            return pickerView.frame.size.width/4.0
        }
    }
}

