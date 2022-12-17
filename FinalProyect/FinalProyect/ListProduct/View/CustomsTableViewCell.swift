//
//  CustomsTableViewCell.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 30/11/22.
//

import UIKit

class CustomsTableViewCell: UITableViewCell {
   
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var makeText: UILabel!
    @IBOutlet weak var modelText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    
    func setup(product:listProductEntity){
        nameText.text = product.name
        iconImageView.image = UIImage(named: product.image)
        makeText.text = product.make
        modelText.text = product.model
        priceText.text = product.price
    }

}
