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
        
        let frisdrank = Drinks.init(name: "Frisdrank", image: "frisdrank.jpg")
        let alcohol = Drinks.init(name: "Alcohol", image: "alcohol.jpg")
        let frisAlc = Drinks.init(name: "Fris & Alcohol", image: "frisbieren.jpg")
        
        self.bars = [frisdrank, alcohol, frisAlc]
        
    }
    
}
