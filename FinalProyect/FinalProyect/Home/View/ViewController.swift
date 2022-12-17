//
//  ViewController.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 27/11/22.
//

import UIKit

protocol HomeProtocol {
    //func mostrar(_ numero: Int)
    func showProduct(_ products: [listProductEntity])
}

class ViewController: UIViewController , UICollectionViewDataSource{
    
    var presenter: HomePresenterInputProtocol?
    
    private let myCellWidth = UIScreen.main.bounds.width / 2
    
    private var ArrayProducts: [listProductEntity]?

    @IBOutlet weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        presenter?.askProduct()
    }

    @IBAction func seeMoreButton(_ sender: Any) {
        
        let homeViewController = ListProductConfigurator.productList()
        present(homeViewController, animated: true)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return ArrayProducts != nil ? ArrayProducts!.count : 4
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        presenter?.detailProduct()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "custom", for: indexPath) as? CustomCollectionViewCell else {return UICollectionViewCell()}
        
        let product = ArrayProducts![indexPath.row]
        cell.setup(product: product)

        return cell
    }
    
    
}

extension ViewController : HomeProtocol{
    
    func showProduct(_ products: [listProductEntity]) {
        ArrayProducts = products
        CollectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellWidth, height: myCellWidth)
    }
}

