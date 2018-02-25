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
}
