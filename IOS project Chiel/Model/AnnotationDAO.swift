//
//  AnnotationDAO.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 04/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation
import MapKit

class AnnotationDAO{
    
    var annotationList:[Annotation]
    
    init() {
        let mainStage = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.161979, longitude: 2.751730), title: "Mainstage")
        let fishstage = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.164729, longitude: 2.759000), title: "Fishstage")
        
        let pizza = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.163068, longitude: 2.757070), title: "Pizza")
        let frieten = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.161911, longitude: 2.754281), title: "Frice")
        let pita = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.161500, longitude: 2.756000), title: "Pita")
        let chinees = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.162590, longitude: 2.756051), title: "Chinees")
        let vegie = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.162011, longitude: 2.757000), title: "Vegie")
        
        let frisdrank = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.163200, longitude: 2.753865), title: "Soft drink")
        let alcohol = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.163531, longitude: 2.755002), title: "Alcohol")
        let frisAlc = Annotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.164177, longitude: 2.756783), title: "Soft drink & Alcohol")
        
        annotationList = [mainStage, fishstage, pizza, frieten, pita, chinees, vegie, frisdrank, alcohol, frisAlc]
        
    }
    
}

