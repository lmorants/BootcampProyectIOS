//
//  HomeInteractor.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 14/12/22.
//

import Foundation

protocol HomeInteractorProtocol {
    func listProduct()
}

class HomeInteractor: HomeInteractorProtocol {
  
    var presenter: HomePresenterOutputProtocol?
    
    var api: RemoteRepository?
    
    required init(presenter: HomePresenterOutputProtocol, api: RemoteRepository) {
        self.presenter = presenter
        self.api = api
    }
    
    func listProduct() {
        
        if let products = api?.fetchListProducts() {
            let listProductEntity = listProductEntity.make(products)
            presenter?.mostrarProduct(listProductEntity)
        }
        
    }
}
