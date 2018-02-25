//
//  AddIngredientViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/22/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit
import Foundation
import CoreData

protocol AddIngredientResultDelegate {
    func ingredientAdded(_ ingredient : IngredientModel)
}

class AddIngredientViewController : UIViewController {
    
    @IBOutlet weak var ingredientName: UITextField!
    
    var recipe : RecipeModel? = nil
    var resultDelegate : AddIngredientResultDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapSave(_ sender: UIBarButtonItem) {
        guard let nameText = ingredientName.text, !nameText.isEmpty else {
            self.tapCancel(sender)
            return
        }
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "IngredientModel", in: context)
        let newIngredient : IngredientModel = NSManagedObject(entity: entity!, insertInto: context) as! IngredientModel
        
        newIngredient.ingredient = nameText
        newIngredient.recipe = self.recipe
        
        do {
            try context.save()
        } catch {
            print("Failed saving new Ingredient to Recipe")
        }
        
        self.resultDelegate?.ingredientAdded(newIngredient)
        
        self.dismiss(animated: true) {
            
        }
    }
    
    @IBAction func tapCancel(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {
            
        }
    }
}
