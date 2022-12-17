//
//  HomePresenter.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 14/12/22.
//

import Foundation

protocol HomePresenterInputProtocol {
    
    func askProduct()
    
    func detailProduct()
}

protocol HomePresenterOutputProtocol {
 
    func mostrarProduct(_ product: [listProductEntity])
}

class HomePresenter {
    
    var view: HomeProtocol?
    var router: HomeRouterProtocol?
    var interactor: HomeInteractorProtocol?

}

extension HomePresenter: HomePresenterOutputProtocol {
    func mostrarProduct(_ product: [listProductEntity]) {
        view?.showProduct(product)
    }
}

extension HomePresenter: HomePresenterInputProtocol {
    func detailProduct() {
        router?.detailProduct()
    }
    
    func askProduct() {
        interactor?.listProduct()
    }
}
