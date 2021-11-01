//
//  CollectionCell.swift
//  Astro
//
//  Created by Vural ÇETİN on 25.10.2021.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var groundView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func displayContent(model:Horoscope) {
        nameLabel.text = model.name
        imageView.image = UIImage(named: model.image)
        groundView.backgroundColor = model.color
        
    }
    
}
