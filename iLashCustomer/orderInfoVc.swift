//
//  orderInfoVc.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/21/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

var lastCut = UIPickerView()
var bagged = UIPickerView()
var salt = UIPickerView()
var dogPoop = UIPickerView()

class orderInfoVc: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        createToolBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var timeSinceLastCut: UITextField!
    @IBOutlet weak var baggedLawn: UITextField!
    @IBOutlet weak var saltTextField: UITextField!
    @IBOutlet weak var dogFecis: UITextField!
    @IBOutlet weak var commentsTextField: UITextField!
    
    var lastCutQuestion = [""]
    var baggedLawnQuestion = [""]
    var saltQuestion = [""]
    var dogFecisQuestion = [""]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == lastCut{
            return lastCutQuestion.count
        }
        if pickerView == bagged{
            return baggedLawnQuestion.count
        }
        if pickerView == salt{
            return saltQuestion.count
        }
        if pickerView == dogPoop{
            return dogFecisQuestion.count
        }else{
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == lastCut{
            return lastCutQuestion[row]
        }
        if pickerView == bagged{
            return baggedLawnQuestion[row]
        }
        if pickerView == salt{
            return saltQuestion[row]
        }
        if pickerView == dogPoop{
            return dogFecisQuestion[row]
        }else{
            return lastCutQuestion[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == lastCut{
            timeSinceLastCut.text = lastCutQuestion[row]
        }
        if pickerView == bagged{
            baggedLawn.text = baggedLawnQuestion[row]
        }
        if pickerView == salt{
            saltTextField.text = saltQuestion[row]
        }
        if pickerView == dogPoop{
            dogFecis.text = dogFecisQuestion[row]
    }
    }
    
    
    
    
    func createToolBar(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector (yardInfoVC.dismissKeyboard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        timeSinceLastCut.inputAccessoryView = toolBar
        baggedLawn.inputAccessoryView = toolBar
        saltTextField.inputAccessoryView = toolBar
        dogFecis.inputAccessoryView = toolBar
        
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

    
}
