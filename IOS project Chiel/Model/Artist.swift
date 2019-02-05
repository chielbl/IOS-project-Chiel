//
//  Artist.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class Artist {
    
    var name:String?
    var genre:String?
    var image:String?
    
    
    init(name:String, genre:String, image:String) {
        self.name = name
        self.genre = genre
        self.image = image
    }
}
