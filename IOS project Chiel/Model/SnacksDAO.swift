//
//  SnacksDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class SnackDAO {
    
    var snacks:[Snack]
    
    init() {
        
        let pizza = Snack.init(name: "Pizza", image: "pizza.png")
        let frieten = Snack.init(name: "Frieten", image: "frieten.jpg")
        let pita = Snack.init(name: "Pita", image: "pita.png")
        let veggie = Snack.init(name: "Veggie", image: "vegie.jpg")
        let chinees = Snack.init(name: "Chinees", image: "chinees.jpg")
        
        self.snacks = [pizza, frieten, pita, veggie, chinees]
        
    }
    
}
