//
//  ViewController.swift
//  Organizador
//
//  Created by Tada on 08/06/22.
//

import UIKit


protocol AddFoodDelegate {
    func add(_ foof: Food)
}

class ViewController: UIViewController {
    

    
    
 
    @IBOutlet weak var nameFood: UITextField?
    @IBOutlet weak var happinessToEat: UITextField?
    var tableFoodViewController: FoodTableViewController?
    
    @IBAction func add2(_ sender: Any) {
    
      guard let name = nameFood?.text else{
            return            
        }
        guard let happyFood = happinessToEat?.text,let happy = Int(happyFood)else{
            return
        }
        let food = Food(name: name, happiness: happy)
        print ("\(food.name) e \(food.happiness)")
        
        tableFoodViewController?.add(food: food)
      
        navigationController?.popViewController(animated: true)
        
    }
    
      

}

