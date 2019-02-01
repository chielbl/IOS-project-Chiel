//
//  BarsDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class BarsDAO {
    
    var bars:[Drinks]
    
    init() {
        
        let frisdrank = Drinks.init(name: "Frisdrank")
        let alcohol = Drinks.init(name: "Alcohol")
        let frisAlc = Drinks.init(name: "Frisdrank & Alcohol")
        
        self.bars = [frisdrank, alcohol, frisAlc]
        
    }
    
}
