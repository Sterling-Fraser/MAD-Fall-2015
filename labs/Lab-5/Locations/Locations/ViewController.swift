//
//  ViewController.swift
//  Locations
//
//  Created by Sterling Fraser on 10/8/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var annotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        mapView.mapType=MKMapType.Hybrid
        var status:CLAuthorizationStatus = CLLocationManager.authorizationStatus()
        if status==CLAuthorizationStatus.NotDetermined{
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.delegate=self
        locationManager.desiredAccuracy=kCLLocationAccuracyBest
        locationManager.distanceFilter=kCLDistanceFilterNone
        mapView.showsUserLocation=true
    
//        let location = CLLocationCoordinate2D(latitude: 40.74836, longitude: -73.984607)
//        let span = MKCoordinateSpanMake(0.05, 0.05) // defines area spanned by a map region
//        let region = MKCoordinateRegionMake(location, span) // region ofthe amp to be displayed
//        mapView.setRegion(region, animated: true) // animates changing the currently visible region
//        
//        mapView.mapType=MKMapType.Standard
//        
//        let annotation = MKPointAnnotation() // create an annotation
//        annotation.coordinate=location //sets the coordinates of the location
//        annotation.title="Empire State Building" //sets the title of the annotation
//        annotation.subtitle="New York" //sets the subtitle of the annotation
//        mapView.addAnnotation(annotation)//adds the annotation to the map view
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegionMake(manager.location.coordinate, span)
        mapView.setRegion(region, animated: true)
        annotation.coordinate=manager.location.coordinate
        annotation.title="You are here"
        annotation.subtitle="Latitude: \(manager.location.coordinate.latitude), Longitude: \(manager.location.coordinate.longitude)"
        mapView.addAnnotation(annotation)
    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status==CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        var errorType=String()
        if let clError=CLError(rawValue: error.code) {
            if clError == .Denied {
                errorType="access denied"
                let alert=UIAlertController(title: "Error", message:errorType, preferredStyle:UIAlertControllerStyle.Alert)
                let okAction:UIAlertAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.Default, handler:nil)
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

