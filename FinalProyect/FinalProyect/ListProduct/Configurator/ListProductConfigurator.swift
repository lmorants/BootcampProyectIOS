//
//  ListProductConfigurator.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 13/12/22.
//

import UIKit

class ListProductConfigurator {
    
    static func productList() -> UIViewController {
        
        let presenter = ListProductPresenter()
        
        let api = ListProductMocksAPI()
        let interactor = ListProductInteractor(presenter: presenter, api: api)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController

        let router = ListProductRouter(presenter: presenter)
        
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
        
        view.presenter = presenter
        router.view = view
        
        return view
        
    }
    
}
