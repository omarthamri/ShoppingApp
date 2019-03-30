//
//  DetailProductViewController.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 29/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class DetailProductViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    var pages = [
        Page(imageName: "1_1", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
        Page(imageName: "1_3", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
        Page(imageName: "1_4", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
        Page(imageName: "1_5", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
        Page(imageName: "1_6", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
        Page(imageName: "1_7", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant.")
    ]
    
    var sentId = 0
    var sentChoice = 0
    var price = "32 $"
    let pagecontrol : UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 6
        pc.currentPageIndicatorTintColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
        pc.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return pc
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    
    @objc func backAction(_ sender : UIButton){
        tabBarController?.tabBar.isHidden = false
        self.navigationController?.popViewController(animated: true)
    }
    
    func setupView() {
        tabBarController?.tabBar.isHidden = true
        if sentChoice == 0 {
            if sentId == 0 {
                self.title = "MINI JUPE ÉVASÉE"
                pages = [
                    Page(imageName: "1_1", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
                    Page(imageName: "1_3", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
                    Page(imageName: "1_4", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
                    Page(imageName: "1_5", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
                    Page(imageName: "1_6", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant."),
                    Page(imageName: "1_7", headerText: "MINI JUPE ÉVASÉE", subviewText: "Jupe courte avec coupe évasée et poches avant. Fermeture par zip et crochets en métal sur le devant.")
                ]
            }else if sentId == 1 {
                price = "39 $"
                self.title = "JUPE À POCHES"
                pages = [
                    Page(imageName: "2_1", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique."),
                    Page(imageName: "2_3", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique."),
                    Page(imageName: "2_4", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique."),
                    Page(imageName: "2_5", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique."),
                    Page(imageName: "2_6", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique."),
                    Page(imageName: "2_7", headerText: "JUPE À POCHES", subviewText: "Mini jupe avec poches avant et arrière. Poche plaquée avec rabat et bouton sur le bas. Ourlet au fini effrangé. Fermeture avant par zip dissimulé sous une patte de boutonnage et bouton métallique.")
                ]
            } else if sentId == 2 {
                price = "36 $"
                self.title = "PULL AVEC NOEUD À LA TAILLE"
                pages = [
                    Page(imageName: "3_1", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. "),
                    Page(imageName: "3_3", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. "),
                    Page(imageName: "3_4", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. "),
                    Page(imageName: "3_5", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. "),
                    Page(imageName: "3_6", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. "),
                    Page(imageName: "3_2", headerText: "PULL AVEC NOEUD À LA TAILLE", subviewText: "Pull en maille à col rond et manches longues. Noeud à la taille. ")
                ]
            }
        } else if sentChoice == 1 {
            if sentId == 0 {
                self.title = "POLO COLOR BLOCK"
                pages = [
                    Page(imageName: "4_1", headerText: "POLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant."),
                    Page(imageName: "4_2", headerText: "POLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant."),
                    Page(imageName: "4_3", headerText: "POLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant."),
                    Page(imageName: "4_4", headerText: "POLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant."),
                    Page(imageName: "4_5", headerText: "POLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant."),
                    Page(imageName: "4_6", headerText: "MPOLO COLOR BLOCK", subviewText: "Polo en maille à coupe droite. Col classique et manches courtes. Fermeture par boutons sur le devant.")
                ]
            }else if sentId == 1 {
                price = "39 $"
                self.title = "PULL STRUCTURÉ"
                pages = [
                    Page(imageName: "5_1", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés."),
                    Page(imageName: "5_3", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés."),
                    Page(imageName: "5_4", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés."),
                    Page(imageName: "5_5", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés."),
                    Page(imageName: "5_6", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés."),
                    Page(imageName: "5_2", headerText: "PULL STRUCTURÉ", subviewText: "Pull en maille structuré. Col rond et manches longues à bords côtelés.")
                ]
            } else if sentId == 2 {
                price = "36 $"
                self.title = "PULL À CAPUCHE ET IMPRIMÉ VISAGES"
                pages = [
                    Page(imageName: "6_1", headerText: "PULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées"),
                    Page(imageName: "6_3", headerText: "PULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées"),
                    Page(imageName: "6_4", headerText: "PULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées"),
                    Page(imageName: "6_5", headerText: "PULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées"),
                    Page(imageName: "6_6", headerText: "PPULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées"),
                    Page(imageName: "6_2", headerText: "PULL À CAPUCHE ET IMPRIMÉ VISAGES", subviewText: "Pull avec col, capuche réglable et manches longues. Poche avant style kangourou. Impression photographique en contraste sur la poitrine. Finitions côtelées")
                ]
            }
        } else if sentChoice == 2 {
            if sentId == 0 {
                self.title = "SHIRT WITH TEXTURED WEAVE AND POCKET"
                pages = [
                    Page(imageName: "7_1", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket."),
                    Page(imageName: "7_2", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket."),
                    Page(imageName: "7_3", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket."),
                    Page(imageName: "7_4", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket."),
                    Page(imageName: "7_5", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket."),
                    Page(imageName: "7_6", headerText: "SHIRT WITH TEXTURED WEAVE AND POCKET", subviewText: "Stand-up collar shirt featuring 3/4 sleeves with adjustable buttons, a button-up front and a chest pocket.")
                ]
            }else if sentId == 1 {
                price = "39 $"
                self.title = "COMBINAISON À BOUTONS"
                pages = [
                    Page(imageName: "8_1", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures"),
                    Page(imageName: "8_3", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures"),
                    Page(imageName: "8_4", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures"),
                    Page(imageName: "8_5", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures"),
                    Page(imageName: "8_6", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures"),
                    Page(imageName: "8_2", headerText: "COMBINAISON À BOUTONS", subviewText: "Combinaison avec col rond et bretelles. Fermeture par boutons devant et détail nid d'abeille au dos. Imprimé à rayures")
                ]
            }
        }
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height) , collectionViewLayout: layout)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = UIColor.white
        var backbutton = UIButton(type: .custom)
        backbutton.setImage(UIImage(named: "backBtn"), for: .normal)
        backbutton.addTarget(self, action: #selector(backAction(_:)), for: .touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backbutton)
        settingBottomControl()
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
    }
    
    func settingBottomControl() {
        
        let BottomStackView = UIStackView(arrangedSubviews: [pagecontrol])
        BottomStackView.translatesAutoresizingMaskIntoConstraints = false
        BottomStackView.distribution = .fillEqually
        view.addSubview(BottomStackView)
        NSLayoutConstraint.activate([
            BottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.4),
            BottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            BottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            BottomStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
        let priceLabel = UILabel()
        priceLabel.text = "\(price)"
        priceLabel.textColor = UIColor.black
        priceLabel.frame = CGRect(x: 0, y: view.frame.height - 182, width: view.frame.width - 25, height: 30)
        priceLabel.textAlignment = .right
        priceLabel.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(priceLabel)
        let priceButton = UIButton(frame: CGRect(x: 20, y: view.frame.height - 150, width: view.frame.width - 40, height: 50))
        priceButton.backgroundColor = UIColor.black
        priceButton.layer.cornerRadius = 10
        priceButton.setTitle("ADD TO WHISLIST ", for: .normal)
        priceButton.setTitleColor(UIColor.white, for: .normal)
        view.addSubview(priceButton)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        cell.contentMode = .scaleToFill
        cell.layer.masksToBounds = true
        cell.page = pages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        pagecontrol.currentPage = Int(targetContentOffset.pointee.x / view.frame.width)
    }
    
    
}
