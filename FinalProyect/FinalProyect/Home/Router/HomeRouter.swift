//
//  HomeRouter.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 14/12/22.
//

import UIKit

protocol HomeRouterProtocol {
   
    func detailProduct()
}

class HomeRouter: HomeRouterProtocol {
    func detailProduct() {
        let homeViewController = HomeConfigurator.productList()
        view?.show(homeViewController, sender: nil)
    }
    
    
    
    let presenter: HomePresenterOutputProtocol?
    var view: UIViewController?
    
    required init(presenter: HomePresenterOutputProtocol) {
        self.presenter = presenter
    }
    
}
