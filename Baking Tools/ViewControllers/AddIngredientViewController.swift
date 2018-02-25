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
        
        // To keep element consistent with AddEditRecipeViewController
        ingredientName.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        ingredientName.layer.borderWidth = 1.0
        ingredientName.layer.cornerRadius = 5
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
//        newIngredient.setValue(nameText, forKey: "name")
//        newIngredient.setValue(recipe, forKey: "recipe")
        
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
