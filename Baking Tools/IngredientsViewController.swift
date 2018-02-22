//
//  IngredientsViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/22/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class IngredientsViewController : UITableViewController {
    var recipe : RecipeModel! = nil
    var ingredients : [IngredientModel] = []
    var fetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>! = nil
    var context : NSManagedObjectContext! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ingredients = recipe.ingredients?.allObjects as! [IngredientModel]
        
        print(recipe.name ?? "NIL")
    }
    
    // MARK: - UITableView delegate methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
        
        let ingredient : IngredientModel = self.ingredients[indexPath.row]
        
        cell.textLabel?.text = ingredient.ingredient
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ingredients.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Nothing to do? Long press to delete? TODO
    }
}
