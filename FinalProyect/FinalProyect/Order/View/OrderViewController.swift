//
//  OrderViewController.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 16/12/22.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var orderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        orderLabel.text = String(Int.random(in: 0..<10000000))
    }
}
