//
//  LineUpDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 01/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class LineUpDAO {
    
    var lineUp:[LineUpDay]
    
    init() {
        //Day1
        //Mainstage
        let time1D1M = LineUp.init(time: "14:00 - 16:00", stage: "Mainstage", artist: "Reel Big Fish")
        let time2D1M = LineUp.init(time: "16:00 - 18:00", stage: "Mainstage", artist: "Swashbuckle")
        let time3D1M = LineUp.init(time: "18:00 - 20:00", stage: "Mainstage", artist: "Admiral Freebie")
        let time4D1M = LineUp.init(time: "20:00 - 22:00", stage: "Mainstage", artist: "Siamese Fighting")
        let time5D1M = LineUp.init(time: "22:00 - 00:00", stage: "Mainstage", artist: "Goldfish")
        //Fishstage
        let time1D1F = LineUp.init(time: "14:00 - 16:00", stage: "Fishstage", artist: "Zander")
        let time2D1F = LineUp.init(time: "16:00 - 18:00", stage: "Fishstage", artist: "European Seabass")
        let time3D1F = LineUp.init(time: "18:00 - 20:00", stage: "Fishstage", artist: "Northern Pike")
        let time4D1F = LineUp.init(time: "20:00 - 22:00", stage: "Fishstage", artist: "Sword Fish")
        let time5D1F = LineUp.init(time: "22:00 - 00:00", stage: "Fishstage", artist: "Reel Big Fish")
        
        //Day2
        //Mainstage
        let time1D2M = LineUp.init(time: "14:00 - 16:00", stage: "Mainstage", artist: "Goldfish")
        let time2D2M = LineUp.init(time: "16:00 - 18:00", stage: "Mainstage", artist: "Admiral Freebie")
        let time3D2M = LineUp.init(time: "18:00 - 20:00", stage: "Mainstage", artist: "European Seabass")
        let time4D2M = LineUp.init(time: "20:00 - 22:00", stage: "Mainstage", artist: "Siamese Fighting")
        let time5D2M = LineUp.init(time: "22:00 - 00:00", stage: "Mainstage", artist: "Goldfish")
        //Fishstage
        let time1D2F = LineUp.init(time: "14:00 - 16:00", stage: "Fishstage", artist: "Reel Big Fish")
        let time2D2F = LineUp.init(time: "16:00 - 18:00", stage: "Fishstage", artist: "Siamese Fighting")
        let time3D2F = LineUp.init(time: "18:00 - 20:00", stage: "Fishstage", artist: "Northern Pike")
        let time4D2F = LineUp.init(time: "20:00 - 22:00", stage: "Fishstage", artist: "Sword Fish")
        let time5D2F = LineUp.init(time: "22:00 - 00:00", stage: "Fishstage", artist: "Swashbuckle")
        
        let day1 = LineUpDay.init(day: "Day1")
        let day2 = LineUpDay.init(day: "Day2")
        
        day1.lineUpList = [time1D1M, time2D1M, time3D1M, time4D1M, time5D1M, time1D1F, time2D1F, time3D1F, time4D1F, time5D1F]
        day2.lineUpList = [time1D2M, time2D2M, time3D2M, time4D2M, time5D2M, time1D2F, time2D2F, time3D2F, time4D2F, time5D2F]
        
        self.lineUp = [day1, day2]
        
        
    }
    
}
