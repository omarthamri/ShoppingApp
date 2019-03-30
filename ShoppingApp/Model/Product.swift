//
//  Product.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 29/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class Product : NSObject {
    
    var productImageName: String?
    var productTitle: String?
    var productPrice: String?
    
    init(productImageName: String, productTitle: String,productPrice: String )
    {
        self.productImageName = productImageName
        self.productTitle = productTitle
        self.productPrice = productPrice
    }
    
}
