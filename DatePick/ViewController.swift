//
//  ViewController.swift
//  DatePick
//
//  Created by Alivelu Ravula on 4/16/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFld: UITextField!
    
    
    
      var datPckr = UIDatePicker()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      createDatePicker()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createDatePicker()
    {
        
        let toolBarrr=UIToolbar()
        toolBarrr.sizeToFit()
        
        let doneBtn=UIBarButtonItem(barButtonSystemItem: .done, target:nil, action:#selector(doneActn))
        toolBarrr.setItems([doneBtn], animated: false)
        txtFld.inputAccessoryView=toolBarrr
        txtFld.inputView = datPckr
        datPckr.datePickerMode = .date
    }
    
    
    @objc func doneActn()
    {
        let formatr=DateFormatter()
        formatr.dateStyle = .medium
        formatr.timeStyle = .none
        
        datPckr.maximumDate=NSDate() as Date
   
      let datStrng=formatr.string(from: datPckr.date)
      txtFld.text="\(datStrng)"
      self.view.endEditing(true)
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

