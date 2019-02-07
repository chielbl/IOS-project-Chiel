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
        let rectFrame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        let imgView = UIImageView.init(frame: rectFrame)
        //var pinImage:UIImage
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "annotationView")
        }
        if annotation.title == "Mainstage" ||  annotation.title == "Fishstage" {
            annotationView?.image = UIImage(named: "Stage")!
            
            if annotation.title == "Mainstage" {
                imgView.image = UIImage.init(named: "Mainstage")
            }
            else{
                imgView.image = UIImage.init(named: "Fishstage")
            }
            
        }
        else if annotation.title == "Soft drink" ||  annotation.title == "Alcohol" || annotation.title == "Soft drink & Alcohol"{
            annotationView?.image = UIImage(named: "Drank")!
            
            if annotation.title == "Soft drink" {
                imgView.image = UIImage.init(named: "frisdrank.jpg")
            }
            else if annotation.title == "Alcohol" {
                imgView.image = UIImage.init(named: "alcohol.jpg")
            }
            else{
                imgView.image = UIImage.init(named: "frisbieren.jpg")
            }
            
        }
        else if annotation.title == "Pizza" ||  annotation.title == "Frice" || annotation.title == "Pita" ||  annotation.title == "Chinees" || annotation.title == "Vegie"{
            annotationView?.image = UIImage(named: "Food")!
            
            if annotation.title == "Pizza" {
                imgView.image = UIImage.init(named: "pizza.png")
            }
            else if annotation.title == "Frice" {
                imgView.image = UIImage.init(named: "frieten.jpg")
            }
            else if annotation.title == "Pita" {
                imgView.image = UIImage.init(named: "pita.png")
            }
            else if annotation.title == "Chinees" {
                imgView.image = UIImage.init(named: "chinees.jpg")
            }
            else{
                imgView.image = UIImage.init(named: "vegie.jpg")
            }
            
        }
        else if annotation.title == "Toilets"{
            annotationView?.image = UIImage(named: "Toilets")!
            imgView.image = UIImage.init(named: "WC")
        }
        else if annotation === mapView.userLocation{
            annotationView?.image = UIImage(named: "MyLocation")!
            imgView.image = UIImage.init(named: "Me")
        }

        annotationView!.leftCalloutAccessoryView = imgView
        annotationView?.canShowCallout = true
        return annotationView
    }
    
}
