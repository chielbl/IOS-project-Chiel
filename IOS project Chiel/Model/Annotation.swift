//
//  Annotation.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 04/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation
import MapKit

class Annotation : NSObject, MKAnnotation{
    
    var coordinate:CLLocationCoordinate2D
    var title: String?
    
    
    init(coordinate:CLLocationCoordinate2D, title:String) {
        self.coordinate = coordinate
        self.title = title
    }
    
}
