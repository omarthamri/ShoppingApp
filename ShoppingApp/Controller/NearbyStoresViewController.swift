//
//  NearbyStoresViewController.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 30/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit
import MapKit

class NearbyStoresViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nearby Stores"
        let location = CLLocationCoordinate2D(latitude: 36.850721, longitude: 10.183210)
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        mapView.setRegion(region, animated: true)
        let pin = customPin(pinTitle: "Zara", pinSubstitle: "Avenue Habib Bourguiba, Tunisia", pinCoordinate: location)
        mapView.addAnnotation(pin)
    }

}
