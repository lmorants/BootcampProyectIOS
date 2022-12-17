//
//  HomeConfigurator.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 14/12/22.
//

import UIKit

public class HomeConfigurator {
    
    static func productList() -> UIViewController {
        
        let presenter = HomePresenter()
        
        let api = ListProductMocksAPI()
        let interactor = HomeInteractor(presenter: presenter, api: api)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        let router = HomeRouter(presenter: presenter)
        
        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view
        
        view.presenter = presenter
        router.view = view
        
        return view
        
    }
}
