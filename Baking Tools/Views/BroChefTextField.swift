//
//  BroChefTextField.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/25/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

@IBDesignable
class BroChefTextField : UITextField {
    
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        applyStyles()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        applyStyles()
    }
    
    func applyStyles(){
        self.layer.borderColor = BroColors.SECONDARY.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}
