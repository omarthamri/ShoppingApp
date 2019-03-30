//
//  ViewController.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 29/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class ListProductsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var tabbarButtonSeparatorView: UIView!
    @IBOutlet weak var WomenButton: UIButton!
    @IBOutlet weak var MenButton: UIButton!
    @IBOutlet weak var KidsButton: UIButton!
    
    
    @IBOutlet weak var tabbarButtonSeparatorViewLeadingConstraint: NSLayoutConstraint!
    
    var products = [Product(productImageName: "1_1", productTitle: "MINI JUPE ÉVASÉE",productPrice: "32$"),Product(productImageName: "2_1", productTitle: "JUPE À POCHES",productPrice: "39$"),Product(productImageName: "3_1", productTitle: "PULL AVEC NŒUD À LA TAILLE",productPrice: "36$")]
    var selectedColor : UIColor?
    var unselectedColor : UIColor?
    var choice = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        productTableView.separatorStyle = .none
        selectedColor = WomenButton.currentTitleColor
        unselectedColor = MenButton.currentTitleColor
    }
    
    @IBAction func womenButtonTapped(_ sender: UIButton) {
        choice = 0
        products = [Product(productImageName: "1_1", productTitle: "MINI JUPE ÉVASÉE",productPrice: "32$"),Product(productImageName: "2_1", productTitle: "JUPE À POCHES",productPrice: "39$"),Product(productImageName: "3_1", productTitle: "PULL AVEC NŒUD À LA TAILLE",productPrice: "36$")]
        productTableView.reloadData()
        tabbarButtonSeparatorViewLeadingConstraint.constant = 0
        WomenButton.setTitleColor(selectedColor, for: .normal)
        MenButton.setTitleColor(unselectedColor, for: .normal)
        KidsButton.setTitleColor(unselectedColor, for: .normal)
    }
    
    @IBAction func menButtonTapped(_ sender: UIButton) {
        choice = 1
        products = [Product(productImageName: "4_1", productTitle: "POLO COLOR BLOCK",productPrice: "32$"),Product(productImageName: "5_1", productTitle: "PULL STRUCTURÉS",productPrice: "39$"),Product(productImageName: "6_1", productTitle: "PULL À CAPUCHE ET IMPRIMÉ VISAGES",productPrice: "36$")]
        productTableView.reloadData()
        tabbarButtonSeparatorViewLeadingConstraint.constant = view.frame.width / 3
        MenButton.setTitleColor(selectedColor, for: .normal)
        WomenButton.setTitleColor(unselectedColor, for: .normal)
        KidsButton.setTitleColor(unselectedColor, for: .normal)
    }
    
    @IBAction func kidsButtonTapped(_ sender: UIButton) {
        choice = 2
        products = [Product(productImageName: "7_1", productTitle: "SHIRT WITH TEXTURED WEAVE AND POCKET",productPrice: "32$"),Product(productImageName: "8_1", productTitle: "COMBINAISON À BOUTONS",productPrice: "39$")]
        productTableView.reloadData()
        tabbarButtonSeparatorViewLeadingConstraint.constant = (view.frame.width * 2) / 3
        KidsButton.setTitleColor(selectedColor, for: .normal)
        WomenButton.setTitleColor(unselectedColor, for: .normal)
        MenButton.setTitleColor(unselectedColor, for: .normal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailProductViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailProductViewController") as! DetailProductViewController
        detailProductViewController.sentId = indexPath.row
        detailProductViewController.sentChoice = choice
        self.navigationController?.pushViewController(detailProductViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        cell.productTitle.text = products[indexPath.row].productTitle
        cell.productPrice.text = products[indexPath.row].productPrice
        cell.productImageView.image = UIImage(named: products[indexPath.row].productImageName!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 471
    }


}

