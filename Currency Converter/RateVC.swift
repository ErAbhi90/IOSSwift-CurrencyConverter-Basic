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
    
    @IBOutlet weak var label: UITextField!
    @IBAction func numbers(_ sender: UIButton)
    {
        if(sender.tag != 11 ){
        label.text = label.text! + String(sender.tag-1)
        numberLabel = Double(label.text!)!
        }
        else if (label.text == " " && sender.tag == 11){
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
        label.text = "0"
    }
    
    @IBAction func digitBtn(_ sender: UIButton) {
        if (self.label.text?.contains("."))! {
            // "." present
        } else {
            // "." Not present
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        /* if segue.destination is TertiaryViewController
         {
         let vc = segue.destination as? TertiaryViewController
         vc?.username = "Arthur Dent"
         }
         */
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}
