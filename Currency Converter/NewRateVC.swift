//
//  NewRateVC.swift
//  Currency Converter
//
//  Created by Abhi on 16/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class NewRateVC: UIViewController{
    
    var newRateLabel:Double = 0
    @IBOutlet weak var label: UITextField!
    @IBAction func numbers(_ sender: UIButton)
    {
        label.text = label.text! + String(sender.tag-1)
        newRateLabel = Double(label.text!)!
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        label.text = " "
    }
    @IBAction func digitBtn(_ sender: UIButton) {
       
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
