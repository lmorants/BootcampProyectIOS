//
//  DetailProductPresenter.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

protocol DetailProductPresenterProtocol{
    func getDetail(_ product : listProductEntity)
    var auxProducts : listProductEntity{get}
}

class DetailProductPresenter: DetailProductPresenterProtocol {
    
    var auxProducts: listProductEntity{productDetail}
    
    func getDetail(_ product: listProductEntity) {
        productDetail = product
    }
    
    private var productDetail: listProductEntity
    
    required init(productDetail: listProductEntity) {
        self.productDetail = productDetail
    }
    
}
