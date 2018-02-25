//
//  BroColors.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/25/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hex: UInt) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
}

struct BroColors {
    static let PRIMARY = UIColor(hex: 0x1954A0)
    static let SECONDARY = UIColor(hex: 0xFF9933)
}
