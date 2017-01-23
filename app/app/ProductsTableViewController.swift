//
//  ProductsTableViewController.swift
//  app
//
//  Created by Dominika on 19.01.2017.
//  Copyright © 2017 Dominika. All rights reserved.
//

import UIKit


class ProductsTableViewController: UITableViewController {

    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        let product5 = Product()
        
        product1.name = "Tofik - M, 11 lat"
        product1.productImage = "phone-fullscreen1-2"
        product1.cellImage = "image-cell1-1"
        
        product2.name = "Misia - K, 3 lata"
        product2.productImage = "phone-fullscreen2-2"
        product2.cellImage = "image-cell2-1"
        
        product3.name = "Leon - M, 4 lata"
        product3.productImage = "phone-fullscreen3-2"
        product3.cellImage = "image-cell3-1"
        
        product4.name = "Mika - K, 8 lat"
        product4.productImage = "phone-fullscreen4-2"
        product4.cellImage = "image-cell4-1"
        
        product5.name = "Baron - M, 5 lat"
        product5.productImage = "phone-fullscreen5-1"
        product5.cellImage = "image-cell5"
        
        products = [product1, product2, product3, product4, product5]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = products {
            return p.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
            cell.imageView?.image = UIImage(named: i)
            }
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            
            productVC?.product = products?[indexPath.row]
        }
    }
    
}
