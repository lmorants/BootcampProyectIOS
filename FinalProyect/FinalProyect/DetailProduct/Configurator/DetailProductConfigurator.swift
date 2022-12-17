//
//  DetailProductConfigurator.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import UIKit


public class DetailProductConfigurator {
    
    static func detailProduct(_ product: listProductEntity) -> UIViewController {

        let presenter = DetailProductPresenter(productDetail: product)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        view.presenter = presenter
        
        return view
        
    }
    
}
