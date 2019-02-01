//
//  LineUpDay.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class LineUpDay {
    
    var day:String?
    var lineUpList:[LineUp]?
    
    init(day:String) {
        self.day = day
        lineUpList = [LineUp]()
    }
    
}
