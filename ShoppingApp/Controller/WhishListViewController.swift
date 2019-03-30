//
//  WhishListViewController.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 30/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class WhishListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var whishListTableView: UITableView!
    var whishlistArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My whishlist"
        whishlistArray.append(Product(productImageName: "5_1", productTitle: "PULL STRUCTURÉS",productPrice: "39$"))
        whishListTableView.separatorStyle = .none
        whishListTableView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return whishlistArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = whishListTableView.dequeueReusableCell(withIdentifier: "WhishListTableViewCell") as! WhishListTableViewCell
        cell.productTitle.text = whishlistArray[indexPath.row].productTitle
        cell.productPrice.text = whishlistArray[indexPath.row].productPrice
        cell.productImageName.image = UIImage(named: whishlistArray[indexPath.row].productImageName!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 117
    }


}
