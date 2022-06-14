//
//  FoodTableViewController.swift
//  Organizador
//
//  Created by Tada on 10/06/22.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var foods = [Food(name: "Pizza", happiness:4),
                Food(name: "Spaghetti", happiness:4),
                Food(name: "Sushi", happiness: 5)]
    
    func add(food: Food) {
        foods.append(food)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! ViewController
        view.tableFoodViewController = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let listFood = foods[indexPath.row]
        cell.textLabel?.text = listFood.name
        return cell
        
    }
    
    
}

