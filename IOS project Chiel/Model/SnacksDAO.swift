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
        
        let pizza = Snack.init(name: "Pizza")
        let frieten = Snack.init(name: "Frieten")
        let pita = Snack.init(name: "Pita")
        let veggie = Snack.init(name: "Veggie")
        let chinees = Snack.init(name: "Chinees")
        
        self.snacks = [pizza, frieten, pita, veggie, chinees]
        
    }
    
}
