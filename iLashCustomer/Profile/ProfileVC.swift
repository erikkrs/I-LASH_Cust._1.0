//
//  ProfileVC.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/12/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController{
    
    override func viewDidLoad() {
        
    }
    @IBOutlet weak var homeTextField: UILabel!
    @IBOutlet weak var homeSelector: CustomSegmentedController!
    
    var homeOne = String()
    var homeTwo = String()
    var homeThree = String()
    
    
    
    
    @IBAction func selectHomeAction(_ sender: Any) {
        if homeSelector.selectedSegmentIndex == 0{
            homeOne = "This is Home 1:"
            homeTextField.text = homeOne
        }
        if homeSelector.selectedSegmentIndex == 1{
            homeTwo = "This is Home 2:"
            homeTextField.text = homeTwo
        }
        if homeSelector.selectedSegmentIndex == 2{
            homeThree = "This is Home 3:"
            homeTextField.text = homeThree
        }
    }
    
    
    
    
    
}
