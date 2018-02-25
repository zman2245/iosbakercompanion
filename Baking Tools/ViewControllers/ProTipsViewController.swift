//
//  ProTipsViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

class ProTipsViewController: UITableViewController {

    var proTips = ProTipData.generateProTipData()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


// MARK: - UITableViewDataSource
extension ProTipsViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proTips.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProTipCell", for: indexPath)

        let proTip = proTips[indexPath.row]
        cell.textLabel?.text = proTip.title
        cell.detailTextLabel?.text = proTip.description
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping

        return cell
    }
}
