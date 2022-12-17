//
//  ListProductEntity.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

    struct listProductEntity{

        let name: String
        let image: String
        let make: String
        let model: String
        let price: String

        static func make(_ products: [ListProductResponse]) -> [listProductEntity]{

            return products.map({listProductEntity(name: $0.name,image: $0.image,make: $0.make,

                                                  model: $0.model,price: $0.price)})

        }

    }
    

