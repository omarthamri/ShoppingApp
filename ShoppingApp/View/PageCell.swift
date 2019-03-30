//
//  PageCell.swift
//  ShoppingApp
//
//  Created by MACBOOK PRO RETINA on 29/03/2019.
//  Copyright © 2019 MACBOOK PRO RETINA. All rights reserved.
//

import UIKit

class PageCell : UICollectionViewCell {
    
    var page: Page?  {
        didSet {
            self.contentMode = .scaleToFill
            self.layer.masksToBounds = true
            MyImgView.image = UIImage(named: (page?.imageName)!)
            MyImgView.contentMode = .scaleToFill
            MyImgView.layer.masksToBounds = true
            let attributedtext = NSMutableAttributedString(string: (page?.headerText)!, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
            attributedtext.append(NSMutableAttributedString(string: "\n\n\n\((page?.subviewText)!)", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 13),NSAttributedStringKey.foregroundColor: UIColor.gray]))
            descriptionTextView.attributedText = attributedtext
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let MyImgView : UIImageView = {
        let Img = UIImageView(image: #imageLiteral(resourceName: "haha"))
        Img.contentMode = .scaleToFill
        Img.layer.masksToBounds = true
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private let descriptionTextView : UITextView = {
        let textview = UITextView()
        textview.contentMode = .scaleToFill
        textview.layer.masksToBounds = true
        let attributedtext = NSMutableAttributedString(string: "Just a simple test", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedtext.append(NSMutableAttributedString(string: "\n\n\njust the secand test", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 13),NSAttributedStringKey.foregroundColor: UIColor.gray]))
        textview.attributedText = attributedtext
        textview.textAlignment = .center
        textview.isEditable = false
        textview.isScrollEnabled = false
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.contentMode = .scaleToFill
        self.layer.masksToBounds = true
        let topViewContainer = UIView()
        topViewContainer.contentMode = .scaleToFill
        topViewContainer.layer.masksToBounds = true
        addSubview(topViewContainer)
        topViewContainer.translatesAutoresizingMaskIntoConstraints = false
        topViewContainer.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        topViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        topViewContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        topViewContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        MyImgView.contentMode = .scaleToFill
        MyImgView.layer.masksToBounds = true
        topViewContainer.addSubview(MyImgView)
        MyImgView.centerXAnchor.constraint(equalTo: topViewContainer.centerXAnchor).isActive = true
        MyImgView.centerYAnchor.constraint(equalTo: topViewContainer.centerYAnchor).isActive = true
        MyImgView.heightAnchor.constraint(equalTo: topViewContainer.heightAnchor, multiplier: 0.6)
        
        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: topViewContainer.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor,constant: 20).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor,constant: -20).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
}
