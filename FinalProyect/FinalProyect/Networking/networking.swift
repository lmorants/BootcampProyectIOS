//
//  networking.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

    
    protocol RemoteRepository {
        func fetchListProducts() -> [ListProductResponse]
    }

    class ListProductAPI: RemoteRepository {
        
        func fetchListProducts() -> [ListProductResponse] {
            []
        }

    }

    class ListProductMocksAPI: RemoteRepository {
        
        func fetchListProducts() -> [ListProductResponse] {
            
            let resource = "products"
            
            if let url = Bundle.main.url(forResource: resource, withExtension: "json") {
                
                do {
                    let data = try Data(contentsOf: url)
                    
                    let decoder = JSONDecoder()
                    let result = try decoder.decode([ListProductResponse].self, from: data)
                    return result
                } catch let error {
                    print(error.localizedDescription)
                }

            }
            return []
        }

    }
