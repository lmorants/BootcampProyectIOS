//
//  ListProductResponse.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import Foundation

struct ListProductResponse: Decodable {
    let name: String
    let image : String
    let make: String
    let model: String
    let price: String
}
