//
//  LegalVC.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/12/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

class LegalVC: UIViewController {
    
    override func viewDidLoad() {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "termsSegue"{
            let goToLegalDocs : LegalDocsVC = segue.destination as! LegalDocsVC
            goToLegalDocs.documentTitle = "Terms of Agreement"
    }
        if segue.identifier == "licensingSegue"{
            let goToLegalDocs : LegalDocsVC = segue.destination as! LegalDocsVC
            goToLegalDocs.documentTitle = "Licensing Agreements"
        }
    }
    
    
    
    
   @IBAction func termsAction(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "termsSegue", sender: nil)
    }
    @IBAction func licensingAction(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "licensingSegue", sender: nil)
    }
    
    
    
}
