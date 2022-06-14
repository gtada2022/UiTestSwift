//
//  Refeicao.swift
//  Organizador
//
//  Created by Tada on 08/06/22.
//

import UIKit

class Food: NSObject {
    var name: String
    var happiness: Int
    var items: Array<Item> = []

    init(name: String, happiness: Int) {
        self.name = name
        self.happiness = happiness
    }

    func totalCalories() -> Double {
        var total = 0.0

        for item in items {
            total += item.calories
        }

        return total
    }
}
