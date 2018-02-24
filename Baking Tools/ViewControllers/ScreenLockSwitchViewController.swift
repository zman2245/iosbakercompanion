//
//  ScreenLockSwitchViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/23/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

class ScreenLockSwitchViewController : UIViewController {
    
    @IBOutlet weak var switchView: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isLockOn = UserDefaults.standard.bool(forKey: "LockOn")
        switchView.setOn(isLockOn, animated: false)
        UIApplication.shared.isIdleTimerDisabled = isLockOn
    }
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        let changedToOn = switchView.isOn
        UserDefaults.standard.set(changedToOn, forKey: "LockOn")
        UIApplication.shared.isIdleTimerDisabled = changedToOn
    }
}
