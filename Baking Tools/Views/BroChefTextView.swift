//
//  BroChefTextView.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/25/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

@IBDesignable
class BroChefTextView : UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
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
