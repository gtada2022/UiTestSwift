//
//  Item.swift
//  Organizador
//
//  Created by Tada on 08/06/22.
//
import UIKit

class Item: NSObject {
    var name: String
    var calories: Double

    init(name: String, calories: Double) {
        self.name = name
        self.calories = calories
        
    }
}
