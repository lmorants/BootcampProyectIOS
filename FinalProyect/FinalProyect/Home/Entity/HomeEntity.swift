//
//  HomeEntity.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 14/12/22.
//

import Foundation

struct listProductHomeEntity{

    let name: String
    let image: String
    let make: String
    let model: String
    let price: String

    static func make(_ products: [ListProductResponse]) -> [listProductHomeEntity]{

        return products.map({listProductHomeEntity(name: $0.name,image: $0.image,make: $0.make,

                                              model: $0.model,price: $0.price)})

    }

}
