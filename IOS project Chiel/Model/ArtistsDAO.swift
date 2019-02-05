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
        let reelBigFish = Artist.init(name: "Reel Big Fish", genre: "R&B", image: "reelBigFish.jpg")
        let swashbuckle = Artist.init(name: "Swashbuckle", genre: "Hardcore", image: "Swashbuckle.jpg")
        let admiralFreebie = Artist.init(name: "Admiral Freebie", genre: "Techno", image: "AdmiralFreebie.png")
        let siameseFighting = Artist.init(name: "Siamese Fighting", genre: "House", image: "SiameseFighting.jpg")
        let goldfish = Artist.init(name: "Goldfish", genre: "Deep House", image: "Goldfish.jpg")
        let zander = Artist.init(name: "Zander", genre: "drum and bass", image: "Zander.jpg")
        let europeanSeabass = Artist.init(name: "European Seabass", genre: "drum and bass", image: "EuropeanSeabass.jpeg")
        let northernPike = Artist.init(name: "Northern Pike", genre: "Hardcore", image: "NorthernPike.jpg")
        let swordFish = Artist.init(name: "Sword Fish", genre: "R&B", image: "SwordFish.jpg")
        
        
        self.artists = [reelBigFish, swashbuckle, admiralFreebie, siameseFighting, goldfish, zander, europeanSeabass, northernPike, swordFish]
        
    }
    
}
