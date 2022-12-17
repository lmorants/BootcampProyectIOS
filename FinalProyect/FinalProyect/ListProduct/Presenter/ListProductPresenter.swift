//
//  ListProductPresenter.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

protocol ListProductPresenterInputProtocol {
    
    func askProduct()
    
    func detailProduct(_ product : listProductEntity)
}

protocol ListProductPresenterOutputProtocol {
 
    func mostrarProduct(_ product: [listProductEntity])
}

class ListProductPresenter {
    
    var view: ListViewProtocol?
    var router: ListProductRouterProtocol?
    var interactor: ListProductInteractorProtocol?

}

extension ListProductPresenter: ListProductPresenterOutputProtocol {
    func mostrarProduct(_ product: [listProductEntity]) {
        view?.showProduct(product)
    }
}

extension ListProductPresenter: ListProductPresenterInputProtocol {
    func detailProduct(_ product: listProductEntity) {
        router?.detailProduct(product)
    }
    
    func askProduct() {
        interactor?.listProduct()
    }
}
