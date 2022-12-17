//
//  ListProductInteractor.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

protocol ListProductInteractorProtocol {
    func listProduct()
}

class ListProductInteractor: ListProductInteractorProtocol {
  
    var presenter: ListProductPresenterOutputProtocol?
    
    var api: RemoteRepository?
    
    required init(presenter: ListProductPresenterOutputProtocol, api: RemoteRepository) {
        self.presenter = presenter
        self.api = api
    }
    
    func listProduct() {
        print("called: favoritos en interactor")
        
        if let products = api?.fetchListProducts() {
            let listProductEntity = listProductEntity.make(products)
            presenter?.mostrarProduct(listProductEntity)
        }
        
    }
}
