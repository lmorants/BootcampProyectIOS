//
//  IndexViewController.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 16/12/22.
//

import UIKit

class IndexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func welcomeButton(_ sender: Any) {
        let homeViewController = HomeConfigurator.productList()
        present(homeViewController, animated: true)
    }

}
