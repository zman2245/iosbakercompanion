//
//  SecondViewController.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import UIKit
import CoreData

class RecipesViewController : UITableViewController, NSFetchedResultsControllerDelegate {
        
    var fetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>!
    var context : NSManagedObjectContext! = nil
    var selectedRecipe : RecipeModel? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "RecipeModel")
        let departmentSort = NSSortDescriptor(key: "modified", ascending: true)
        request.sortDescriptors = [departmentSort]
        let delegate = UIApplication.shared.delegate as! AppDelegate
        context = delegate.persistentContainer.viewContext
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is IngredientsViewController {
            let vc = segue.destination as? IngredientsViewController
            vc?.context = self.context
            vc?.recipe = self.selectedRecipe
        }
    }
    
    // MARK: - UITableView delegate methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        
        // Set up the cell
        guard let object = self.fetchedResultsController?.object(at: indexPath) else {
            fatalError("Attempt to configure cell without a managed object")
        }
        
        let recipe = object as! RecipeModel
        
        cell.textLabel?.text = recipe.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sections = fetchedResultsController.sections else {
            fatalError("No sections in fetchedResultsController")
        }
        let sectionInfo = sections[section]
        return sectionInfo.numberOfObjects
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let object = self.fetchedResultsController?.object(at: indexPath) else {
            fatalError("Couldn't get object at selected row. Very strange.")
        }
        
        self.selectedRecipe = (object as! RecipeModel)
        self.performSegue(withIdentifier: "ShowRecipeIngredients", sender: self)
    }
    
    // MARK: - NSFetchedResultsControllerDelegate methods
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
        switch type {
        case .insert:
            tableView.insertSections(IndexSet(integer: sectionIndex), with: .fade)
        case .delete:
            tableView.deleteSections(IndexSet(integer: sectionIndex), with: .fade)
        case .move:
            break
        case .update:
            break
        }
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch type {
        case .insert:
            tableView.insertRows(at: [newIndexPath!], with: .fade)
        case .delete:
            tableView.deleteRows(at: [indexPath!], with: .fade)
        case .update:
            tableView.reloadRows(at: [indexPath!], with: .fade)
        case .move:
            tableView.moveRow(at: indexPath!, to: newIndexPath!)
        }
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
}

