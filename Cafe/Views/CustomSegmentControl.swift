//
//  SegmentControl.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 15/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit

class CustomSegmentControl: UISegmentedControl{
    
    weak var parentView: UIView!
    var buttonsNames: [String]!
    
   convenience init(parentView: UIView, buttonsNames: [String]){
        
    self.init(items: buttonsNames)
    self.parentView = parentView
    self.buttonsNames = buttonsNames
    segmentSetUp()
    //self.init(frame:segmentSetUp())
    
    }
    
    override init(items: [Any]?) {
        super.init(items: items)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func segmentSetUp() {
        self.frame = CGRect(x: parentView.frame.width/10, y: (parentView.frame.height/2) + 10, width: parentView.frame.width * 0.8, height: parentView.frame.height * 0.035)
        
        
        //for i in 0..<buttonsNames.count{
            
            //self.setTitle(buttonsNames[i], forSegmentAt: i)
        
        }
    }
    


