//
//  drivewayInfoVC.swift
//  iLashCustomer
//
//  Created by Dominic Saragaglia on 12/21/17.
//  Copyright © 2017 iLash inc. All rights reserved.
//

import UIKit

class drivewayInfoVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var carPicker = UIPickerView()
    var drivewayMaterialPicker = UIPickerView()
    var walkwayPicker = UIPickerView()
    var sidewalkPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createToolBar()
        
        carPicker.delegate = self
        drivewayCapacity.inputView = carPicker
        drivewayMaterialPicker.delegate = self
        drivewayMaterial.inputView = drivewayMaterialPicker
        walkwayPicker.delegate = self
        walkwayLength.inputView = walkwayPicker
        sidewalkPicker.delegate = self
        publicSidewalkLength.inputView = sidewalkPicker
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var drivewayCapacity: UITextField!
    @IBOutlet weak var drivewayMaterial: UITextField!
    @IBOutlet weak var walkwayLength: UITextField!
    @IBOutlet weak var publicSidewalkLength: UITextField!
    
    var howManyCars = ["1-4","5-8","9-12","13-16","17-20","20-25","26-30","31-40","41-50","50+"]
    var drivewayMadeFrom = ["Asphalt","Brick","Cobblestone","Concrete","Exposed Aggregate","Glass","Gravel","Green","Interlocking Pavers","Stamped Concrete","Tar & Chip Sealed"]
    var walkwayAmount = ["Under 10ft","11-20ft","21-30ft","31-40","41-50ft","51-60ft","61-70ft", "71-80ft","81-90ft","91-100ft","100+ft"]
    var sidewalkAmount = ["Under 10ft","11-20ft","21-30ft","31-40","41-50ft","51-60ft","61-70ft", "71-80ft","81-90ft","91-100ft","100+ft"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == carPicker{
            return howManyCars.count
        }
        if pickerView == drivewayMaterialPicker{
            return drivewayMadeFrom.count
        }
        if pickerView == walkwayPicker{
            return walkwayAmount.count
        }
        if pickerView == sidewalkPicker{
            return sidewalkAmount.count
        }
        else{
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == carPicker{
            return howManyCars[row]
        }
        if pickerView == drivewayMaterialPicker{
            return drivewayMadeFrom[row]
        }
        if pickerView == walkwayPicker{
            return walkwayAmount[row]
        }
        if pickerView == sidewalkPicker{
            return sidewalkAmount[row]
        }
        else{
            return howManyCars[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == carPicker{
            drivewayCapacity.text = howManyCars[row]
        }
        if pickerView == drivewayMaterialPicker{
            drivewayMaterial.text = drivewayMadeFrom[row]
        }
        if pickerView == walkwayPicker{
            walkwayLength.text = walkwayAmount[row]
        }
        if pickerView == sidewalkPicker{
            publicSidewalkLength.text = sidewalkAmount[row]
        }
    }
    
    
    func createToolBar(){
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector (yardInfoVC.dismissKeyboard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        drivewayCapacity.inputAccessoryView = toolBar
        drivewayMaterial.inputAccessoryView = toolBar
        walkwayLength.inputAccessoryView = toolBar
        publicSidewalkLength.inputAccessoryView = toolBar
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    
    
    
    
    

}
