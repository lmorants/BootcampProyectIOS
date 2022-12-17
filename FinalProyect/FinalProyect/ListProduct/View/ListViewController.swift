//
//  ListViewController.swift
//  FinalProyect
//
//  Created by Luis Miguel Morante Santander on 4/12/22.
//

import UIKit

protocol ListViewProtocol {
    
    func showProduct(_ products: [listProductEntity])
}

class ListViewController: UITableViewController {
    
    var presenter: ListProductPresenterInputProtocol?
    
    private var ArrayProducts: [listProductEntity]?

    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        presenter?.askProduct()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ArrayProducts != nil ? ArrayProducts!.count : 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomsTableViewCell else {return UITableViewCell()}
        
        let product = ArrayProducts![indexPath.row]
        cell.setup(product: product)

        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let product = ArrayProducts?[indexPath.row] else {return}
        
        presenter?.detailProduct(product)
    }
     
}

extension ListViewController : ListViewProtocol{
    
    func showProduct(_ products: [listProductEntity]) {
        ArrayProducts = products
        tableView.reloadData()
    }
    
    
}
