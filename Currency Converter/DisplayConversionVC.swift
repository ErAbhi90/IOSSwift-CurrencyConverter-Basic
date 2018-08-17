//
//  DisplayConversionVC.swift
//  Currency Converter
//
//  Created by Abhi on 16/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class DisplayConversionVC: UIViewController{
    
     var selectedCurrency1:String = "", selectedCurrency2:String = "", current_currency_rate:String = "" , amount:String = ""
    
    @IBOutlet weak var ConvertFrom: UILabel!
    @IBOutlet weak var ConvertFromValue: UILabel!
    @IBOutlet weak var ConvertTo: UILabel!
    @IBOutlet weak var ConvertToValue: UILabel!
    @IBOutlet weak var CurrencyRate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ConvertFrom.text = selectedCurrency1
        ConvertFromValue.text = amount
        ConvertTo.text = selectedCurrency2
        CurrencyRate.text = current_currency_rate
        let conversionRate = Double(current_currency_rate)
        let convert_value = Double(amount)! * conversionRate!
        ConvertToValue.text = String(convert_value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
