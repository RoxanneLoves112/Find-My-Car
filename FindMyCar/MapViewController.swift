//
//  MapViewController.swift
//  FindMyCar
//
//  Created by Roxanne Zhang on 10/8/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//
import UIKit
import MapKit

class MapViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  
  let location = Location()
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    location.getCurrentLocation()
    location.loadLocation()
    let initialLocation = CLLocation(latitude: location.latitude, longitude: location.longitude)
    centerMapOnLocation(location: initialLocation)
    let droppedPin = MKPointAnnotation()
    droppedPin.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
    droppedPin.title = "You Are Here"
    droppedPin.subtitle = "Look it's you!"
    mapView.addAnnotation(droppedPin)
  }
  
  let regionRadius: CLLocationDistance = 400
  
  func centerMapOnLocation(location: CLLocation) {
    let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
    mapView.setRegion(coordinateRegion, animated: true)
  }
  
  
}


