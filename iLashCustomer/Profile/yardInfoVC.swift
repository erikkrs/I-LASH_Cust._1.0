//
//  yardInfoVC.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/21/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

class yardInfoVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var acrePicker = UIPickerView()
    var percentagePicker = UIPickerView()
    var treePicker = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createToolBar()
        
        acrePicker = UIPickerView()
        acrePicker.delegate = self
        landAcres.inputView = acrePicker
        percentagePicker = UIPickerView()
        percentagePicker.delegate = self
        acresPercentage.inputView = percentagePicker
        treePicker = UIPickerView()
        treePicker.delegate = self
        howManyTrees.inputView = treePicker

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var landAcres: UITextField!
    @IBOutlet weak var acresPercentage: UITextField!
    @IBOutlet weak var howManyTrees: UITextField!

    var howManyAcres = [".1-.3 acres",".3-.6 acres",".6-.9acres","1-1.5 acres","1.5-2 acres","2-3 acres","3-4 acres","4-5 acres","5+ acres"]
    var whatPercent = ["20%","25%","30%","35%","40%","45%","50%","55%","60%","65%","70%"]
    var treeQuestion = ["0-5","6-10","11-15","16-20","21-30","30-40","40-50","50+"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == acrePicker{
            return howManyAcres.count
        }
        if pickerView == percentagePicker{
            return whatPercent.count
        }
        if pickerView == treePicker{
            return treeQuestion.count
        }
        else{
          return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == acrePicker{
            return howManyAcres[row]
        }
        if pickerView == percentagePicker{
            return whatPercent[row]
        }
        if pickerView == treePicker{
            return treeQuestion[row]
        }
        else{
        return howManyAcres[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == acrePicker{
            landAcres.text = howManyAcres[row]
        }
        if pickerView == percentagePicker{
            acresPercentage.text = whatPercent[row]
        }
        if pickerView == treePicker{
            howManyTrees.text = treeQuestion[row]
        }
    }
    
    
    func createToolBar(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector (yardInfoVC.dismissKeyboard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        landAcres.inputAccessoryView = toolBar
        acresPercentage.inputAccessoryView = toolBar
        howManyTrees.inputAccessoryView = toolBar
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}//class
