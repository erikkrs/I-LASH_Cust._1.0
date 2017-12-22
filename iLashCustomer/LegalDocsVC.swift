//
//  LegalDocsVC.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/13/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

class LegalDocsVC: UIViewController{
    
    override func viewDidLoad() {
        legalDocsTitle.text = documentTitle
        whichLegalDoc()
    }
    
    @IBOutlet weak var legalDocsTitle: UILabel!
    @IBOutlet weak var legalDocsText: UITextView!
    
    var documentTitle = String()
    var documentInfo = String()
    
    
    func whichLegalDoc(){
        if documentTitle == "Terms of Agreement"{
            legalDocsText.text = "The terms of agreement states..."
        }
        if documentTitle == "Licensing Agreements"{
            legalDocsText.text = "The Licensing agreement states..."
        }
    }
    
}
