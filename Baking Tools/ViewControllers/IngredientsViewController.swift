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

class IngredientsViewController : UITableViewController, AddIngredientResultDelegate {
    
    var recipe : RecipeModel! = nil
    var ingredients : [IngredientModel] = []
    var fetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>! = nil
    var context : NSManagedObjectContext! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ingredients = recipe.ingredients?.allObjects as! [IngredientModel]
        
        self.navigationItem.title = recipe.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is UINavigationController && segue.destination.childViewControllers.first is AddIngredientViewController {
            let vc = segue.destination.childViewControllers.first as? AddIngredientViewController
            vc?.recipe = self.recipe
            vc?.resultDelegate = self
        }
    }
    
    // MARK: - UITableView delegate methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == self.ingredients.count) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NotesCell", for: indexPath)
            cell.textLabel?.text = "Notes"
            cell.detailTextLabel?.text = self.recipe.notes
            cell.detailTextLabel?.numberOfLines = 0
            cell.detailTextLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientsCell", for: indexPath)
            
            let ingredient : IngredientModel = self.ingredients[indexPath.row]
            
            cell.textLabel?.text = ingredient.ingredient
            
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ingredients.count + 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Nothing to do? Long press to delete? TODO
    }
    
    // MARK: - AddIngredientResultDelegate methods
    
    func ingredientAdded(_ ingredient: IngredientModel) {
        self.ingredients.append(ingredient)
        tableView.reloadData()
    }
}
