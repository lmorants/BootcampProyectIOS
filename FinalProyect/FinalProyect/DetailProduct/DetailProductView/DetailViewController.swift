//
//  DetailViewController.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 5/12/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var presenter : DetailProductPresenterProtocol?
    
    @IBAction func buyButton(_ sender: Any) {
        
        storyboard?.instantiateViewController(withIdentifier: "OrderViewController")
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = presenter?.auxProducts.name
        iconImageView.image = UIImage(named: (presenter?.auxProducts.image)!)
        makeLabel.text = presenter?.auxProducts.make
        modelLabel.text = presenter?.auxProducts.model
        priceLabel.text = presenter?.auxProducts.price
    }

}
