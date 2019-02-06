//
//  MapViewController.swift
//  IOS project Chiel
//
//  Created by chiel bleyenbergh on 04/02/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var annotations:[Annotation] = AnnotationDAO.init().annotationList
    var myLocation:CLLocationManager = CLLocationManager.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLocation.delegate = self
        myLocation.requestWhenInUseAuthorization()
        mapView.addAnnotations(annotations)
        //Zoom to user location
        if let userLocation = myLocation.location?.coordinate {
            let viewRegion = MKCoordinateRegion(center: userLocation, latitudinalMeters: 600, longitudinalMeters: 600)
            mapView.setRegion(viewRegion, animated: false)
        }
        // Do any additional setup after loading the view.
    }
    
    //Welke toestemming heeft een gebruiker gegeven
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            //starten locatie update
            myLocation.startUpdatingLocation()
            //kaarten update
            mapView.showsUserLocation = true
        }
        if status == .denied {
            //Je mag niet
        }
        if status == .notDetermined {
            //gebruiker heeft het nog niet bepaald / inegsteld
            myLocation.requestWhenInUseAuthorization()
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "annotationView")
        //var pinImage:UIImage
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "annotationView")
        }
        if annotation.title == "Mainstage" ||  annotation.title == "Fishstage" {
            annotationView?.image = UIImage(named: "Stage")!
            
        }
        else if annotation.title == "Frisdrank" ||  annotation.title == "Alcohol" || annotation.title == "Frisdrank & Alcohol"{
            annotationView?.image = UIImage(named: "Drank")!
            
        }
        else if annotation.title == "Pizza" ||  annotation.title == "Frietjes" || annotation.title == "Pita" ||  annotation.title == "Chinees" || annotation.title == "Vegie"{
            annotationView?.image = UIImage(named: "Food")!
            
        }
        else if annotation === mapView.userLocation{
            annotationView?.image = UIImage(named: "MyLocation")!
        }

        annotationView?.canShowCallout = true
        return annotationView
    }
}
