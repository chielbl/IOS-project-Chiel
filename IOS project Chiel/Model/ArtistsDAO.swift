//
//  ArtistsDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class ArtistsDAO {
    
    var artists:[Artist]
    
    init() {
        let reelBigFish = Artist.init(name: "Reel Big Fish", genre: "R&B")
        let swashbuckle = Artist.init(name: "Swashbuckle", genre: "Hardcore")
        let admiralFreebie = Artist.init(name: "Admiral Freebie", genre: "Techno")
        let siameseFighting = Artist.init(name: "Siamese Fighting", genre: "House")
        let goldfish = Artist.init(name: "Goldfish", genre: "Deep House")
        let zander = Artist.init(name: "Zander", genre: "drum and bass")
        let europeanSeabass = Artist.init(name: "European Seabass", genre: "drum and bass")
        let northernPike = Artist.init(name: "Northern Pike", genre: "Hardcore")
        let swordFish = Artist.init(name: "Sword Fish", genre: "R&B")
        
        
        self.artists = [reelBigFish, swashbuckle, admiralFreebie, siameseFighting, goldfish, zander, europeanSeabass, northernPike, swordFish]
        
    }
    
}
