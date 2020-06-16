//
//  CoffeeTableViewController.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 13/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit

class CoffeeTableViewController: UITableViewController, agreementOfItems{
    
    
    
    var items: [String] = ["Mocka", "Capaccino", "American coffee", "Hot Chocolate"]
    
    var numberOfRows: Int {
        return items.count
    }
    
  
    override func viewDidLoad() {
        self.view = CustomTableView(parentVC: self)
        setNavBar()
    }
    
    func setNavBar(){
        //let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        self.navigationItem.title = "Coffee"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        var navItems = UIBarButtonItem()
        navItems.tintColor = .blue
        navItems.style = .plain
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Order Now", style: .done , target: self, action: #selector(goToOrders))
        
    }
    
    @objc func goToOrders(){
        
        let goToVC = OrderViewControlle()
        
        self.navigationController?.modalPresentationStyle = .popover
        
        self.navigationController?.pushViewController(goToVC, animated: true)
    }
           
    
}
