//
//  CustomCollectionViewCell.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 16/12/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func setup(product:listProductEntity){
        nameLabel.text = product.name
        imageView.image = UIImage(named: product.image)
        makeLabel.text = product.make
        modelLabel.text = product.model
        priceLabel.text = product.price
    }
    
}
