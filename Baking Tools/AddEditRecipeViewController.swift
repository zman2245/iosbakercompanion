//
//  AddEditRecipeViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/22/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class AddEditRecipeViewController : UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var notes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Annoyingly, apple makes it hard to make these behave similarly. UITextView doesn't even
        // support a placeholder text. Sad!
        notes.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        notes.layer.borderWidth = 1.0
        notes.layer.cornerRadius = 5
        name.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        name.layer.borderWidth = 1.0
        name.layer.cornerRadius = 5
    }
    
    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        guard let nameText = name.text, !nameText.isEmpty else {
            self.tapCancel(sender)
            return
        }
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "RecipeModel", in: context)
        let newRecipe = NSManagedObject(entity: entity!, insertInto: context)
        
        newRecipe.setValue(nameText, forKey: "name")
        newRecipe.setValue(notes.text, forKey: "notes")
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        
        self.dismiss(animated: true) {
            
        }
    }
    
    @IBAction func tapCancel(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {
            
        }
    }
}
