//
//  ListProductRouter.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import UIKit

protocol ListProductRouterProtocol {
   
    func detailProduct(_ product : listProductEntity)
}

class ListProductRouter: ListProductRouterProtocol {
    func detailProduct(_ product: listProductEntity) {
        let detailViewController = DetailProductConfigurator.detailProduct(product)
        view?.show(detailViewController, sender: nil)
    }
    
    let presenter: ListProductPresenterOutputProtocol?
    var view: UIViewController?
    
    required init(presenter: ListProductPresenterOutputProtocol) {
        self.presenter = presenter
    }
    
}

