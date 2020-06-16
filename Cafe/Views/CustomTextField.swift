//
//  TextField.swift
//  Cafe
//
//  Created by Abdulaziz Alharbi on 15/10/1441 AH.
//  Copyright © 1441 Abdulaziz Alharbi. All rights reserved.
//

import Foundation
import UIKit

// instance counter, increase inside each init() call, set as global so it won't be reset everytime you create an instance of customTextField, which is acting as a static varible
fileprivate var Counter: Int = 0

//Current height is just away of tracking what the current y-axis of the text field should be
fileprivate var currentYAxis: CGFloat = 0

class CustomTextField: UITextField {
  
    weak var parentViewController: UIViewController!
   
    var textFieldHeight: CGFloat = 0.035
    // MARK: - checkSetUP() will check the instance number using Count
    func checkSetUP(){
        // if it is the first instance Counter == 0,take half of the screen and add 10 y-asix points to start the text field
        if Counter == 0{
            currentYAxis = (parentViewController.view.frame.height / 2) + 100
            // if not take half of the screen + add 10 point for y asix + add the height of the text field * the number of text field objects + the 10 points y axis * the number of instances
        }else {
            var helfHeight = parentViewController.view.frame.height / 2 + 100
            var textFiledHeight = parentViewController.view.frame.height * textFieldHeight
            currentYAxis = (helfHeight + (textFiledHeight * CGFloat(Counter)) + 10) + CGFloat((Counter * 10))
            
        }
    }
    
    // heightIncrementer will just return the current y asix of the current instance
    static var heightIncrementer: CGFloat {
        return currentYAxis
    }

    
    init(parentViewController: UIViewController){
        self.parentViewController = parentViewController
        super.init(frame: CGRect(x: 0 , y: 0, width: 0, height: 0))
        var parentView = parentViewController.view!
        checkSetUP()
        var frame = CGRect(x: CGFloat(parentView.bounds.width/10) , y: CustomTextField.heightIncrementer, width: CGFloat(parentView.bounds.width * 0.8), height: parentView.bounds.height * textFieldHeight)
        ySetUp(frame:frame)
        Counter = Counter + 1
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func ySetUp(frame: CGRect){
        self.frame = frame
        self.layer.cornerRadius = self.bounds.width / 100
        self.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.5)
        self.layer.borderWidth = 0.6
    }
    
}
