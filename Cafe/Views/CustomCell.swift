//
//  CustomCell.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 20/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell{
    
    var coffeeType: UILabel!
    
    weak var parentVC: bothVCandprotocol!
    
    convenience init(parentVC: bothVCandprotocol){
        self.init(style: .default, reuseIdentifier: "myCustomCell")
        self.parentVC = parentVC
        cellSetUp()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
       super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func cellSetUp(){
        self.accessoryType = .none
        coffeeType = UILabel()
        coffeeType.frame = CGRect(x: 5, y: 5, width: self.frame.width, height: self.frame.height/2)
       
        self.addSubview(coffeeType)
    }
    
}
