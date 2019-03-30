//
//  customPin.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 31/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit
import MapKit

class customPin: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle: String,pinSubstitle: String,pinCoordinate: CLLocationCoordinate2D) {
        coordinate = pinCoordinate
        title = pinTitle
        subtitle = pinSubstitle
    }
}
