//
//  RateVCj.swift
//  Currency Converter
//
//  Created by Abhi on 16/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class RateVC: UIViewController{
 
    var numberLabel:Double = 0;
    var userIsInMiddleOfTyping:Bool = false
    var decimalPlaceWasUsed:Bool = false
    var selectedCurrency1:String = "", selectedCurrency2:String = "", current_currency_rate:String = "" , amount:String = ""
    
    
    @IBOutlet weak var label: UITextField!
    @IBAction func numbers(_ sender: UIButton)
    {
        if(sender.tag != 11 ){
        label.text = label.text! + String(sender.tag-1)
        numberLabel = Double(label.text!)!
        }
        else if (label.text == "" && sender.tag == 11){
            if (label.text?.contains("."))! {
                // "." present
            } else {
                // "." Not present
                label.text = label.text! + "0."
            }
        }
        else{
            if (label.text?.contains("."))! {
                // "." present
            } else {
                // "." Not present
                label.text = label.text! + "."
            }
            
        }
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        label.text = ""
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        amount = label.text!
        if ((label.text ?? "").isEmpty) {
            // create the alert
            let alert = UIAlertController(title: "Currency Conversion", message: "Please add a value before conversion.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
        
        if segue.identifier == "DisplayConversionSegue" {
            
            let displayConversionVC = segue.destination as! DisplayConversionVC
            displayConversionVC.selectedCurrency1 = selectedCurrency1
            displayConversionVC.selectedCurrency2 = selectedCurrency2
            displayConversionVC.current_currency_rate = current_currency_rate
            displayConversionVC.amount = amount
          
        }
        
        if segue.identifier == "NewRateSegue" {
            
            let newRateVC = segue.destination as! NewRateVC
            newRateVC.selectedCurrency1 = selectedCurrency1
            newRateVC.selectedCurrency2 = selectedCurrency2
            newRateVC.current_currency_rate = current_currency_rate
            newRateVC.amount = amount
            
        }
        }
        
  
        
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(selectedCurrency1 + " - " + selectedCurrency2 + " - " + current_currency_rate )
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}
