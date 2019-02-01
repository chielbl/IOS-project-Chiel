//
//  ArtistsDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class ArtistsDAO {
    
    var Artists:[Artist]
    
    init() {
        let reelBigFish = Artist.init(name: "Reel Big Fish", genre: "R&B")
        let swashbuckle = Artist.init(name: "Swashbuckle", genre: "Hardcore")
        let admiralFreebie = Artist.init(name: "Admiral Freebie", genre: "Techno")
        let siameseFighting = Artist.init(name: "Siamese Fighting", genre: "House")
        let goldfish = Artist.init(name: "Goldfish", genre: "Deep House")
        let zander = Artist.init(name: "Zander", genre: "drum and bass")
        
        self.Artists = [reelBigFish, swashbuckle, admiralFreebie, siameseFighting, goldfish, zander]
        
    }
    
}
