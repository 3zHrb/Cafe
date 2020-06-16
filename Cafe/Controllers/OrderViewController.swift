//
//  OrderViewController.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 15/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit



class OrderViewControlle: UIViewController, agreementOfItems {
  
    var nameTextField: CustomTextField!
    var emailTextField: CustomTextField!
    var segment: CustomSegmentControl!
    var tableView: CustomTableView!
    
    var items = ["Small", "Medium", "Large"]
    
    var numberOfRows: Int {
        return items.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView = CustomTableView(parentView: self.view)
        tableView = CustomTableView(parentVC: self)
        segment = CustomSegmentControl(parentView: self.view, buttonsNames:items)
        nameTextField = CustomTextField(parentViewController: self)
        emailTextField = CustomTextField(parentViewController: self)
//        tableView = CustomTableView(parentVC: self)

        
        self.view.addSubview(segment)
        self.view.addSubview(nameTextField)
        self.view.addSubview(emailTextField)
        self.view.addSubview(tableView)
        
        
        navBarSetUp()
  
    }
    
    func navBarSetUp(){
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(goBack))
        
    }
    
    @objc func goBack(){
        
//        let CoffeeVC = CoffeeTableViewController()
//
//        self.present(CoffeeVC, animated: true, completion: nil)
                
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
