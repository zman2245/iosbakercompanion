//
//  FirstViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit

class CheatSheetController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var volumeCheatTableView: UITableView!
    @IBOutlet weak var volToMassCheatTableView: UITableView!
    
    var volCheatData = CheatSheetData.generateVolumeCheatData()
    var volToMassCheatData = CheatSheetData.generateVolumeToMassCheatData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.volumeCheatTableView.delegate = self
        self.volumeCheatTableView.dataSource = self
        self.volToMassCheatTableView.delegate = self
        self.volToMassCheatTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == volumeCheatTableView) {
            return volCheatData.count
        } else {
            return volToMassCheatData.count
        }
    }
    
    func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var item : CheatConversion
        var cell : UITableViewCell
        
        if (tableView == volumeCheatTableView) {
            cell = tableView.dequeueReusableCell(withIdentifier: "VolumeCheatCell", for: indexPath)
            item = volCheatData[indexPath.row]
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "VolumeToMassCheatCell", for: indexPath)
            item = volToMassCheatData[indexPath.row]
        }
        
        cell.textLabel?.text = item.from
        cell.detailTextLabel?.text = item.to
        
        return cell
    }
}
