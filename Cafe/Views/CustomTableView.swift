//
//  CustomTableView.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 15/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit

enum error: String, Error{
    
    case notVC = "The parentVC of type agreementOfItems should be of type UIViewController"
    
}

protocol agreementOfItems: class {
    var numberOfRows: Int {get}
    var items: [String] {get set}
    
}


typealias bothVCandprotocol = agreementOfItems & UIViewController

class CustomTableView: UITableView, UITableViewDataSource, UITableViewDelegate{
    
    
    
    weak var parentVC: bothVCandprotocol!
    var Cell: CustomCell!
    //weak var cell: CustomCell!
    
    init(parentVC: bothVCandprotocol){
        
//        if let parentVC = parentVC as? UIViewController{
        
        
        self.parentVC = parentVC
        var parentView = parentVC.view
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .grouped)
        self.delegate = self
        self.dataSource = self
        TableSetUp(parentView: parentVC.view)
//        }else {
//            throw error.notVC
//        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func TableSetUp(parentView: UIView){
        
        self.frame = CGRect(x: 0, y: 0, width: parentView.frame.width, height: parentView.frame.height/2)
       
        
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
      
          return 1
      }
      
    
 

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
    return parentVC.numberOfRows
}

 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
   
    
//    if let parentVC = parentVC as? OrderViewControlle{
    
        Cell = CustomCell(parentVC: parentVC)
    
        Cell.coffeeType.text = parentVC.items[indexPath.row]
 
        return Cell
        
//    }else {
//        return UITableViewCell()
//    }
    
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        var selectedCell = self.cellForRow(at: indexPath)
        
        if selectedCell!.accessoryType == .none {
            selectedCell!.accessoryType = .checkmark
        }else {
            selectedCell!.accessoryType = .none
        }
        
        self.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    

    
}
