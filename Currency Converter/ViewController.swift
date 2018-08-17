//
//  ViewController.swift
//  Currency Converter
//
//  Created by Abhi on 14/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    var currency_array1 = ["US Dollar","Canadian Dollar","Indian Rupees"]
    var currency_rate = ["67","51","30"]
    var currency_array2 = ["US Dollar","Canadian Dollar","Indian Rupees"]
    
    var selectedCurrency1:String = "", selectedCurrency2:String = "", current_currency_rate:String = ""
    
    @IBOutlet weak var conversionFromTable: UITableView!
    @IBOutlet weak var conversionToTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == conversionFromTable){
            return currency_array1.count
        }
        else{
            return currency_array1.count;
        }
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(tableView == conversionFromTable){
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? TableViewCell1
            cell?.reflabel_cell1.text = currency_array1[indexPath.row]
            cell?.selectionStyle = .none
            
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? TableViewCell2
            cell?.reflabel_cell2.text = currency_array2[indexPath.row]
            cell?.selectionStyle = .none
           
            return cell!
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
         if(tableView == conversionFromTable){

           if(tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.none){
               
                tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
                selectedCurrency1 = currency_array1[indexPath.row]
                current_currency_rate = currency_rate[indexPath.row]
            }
            else{
                tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
            selectedCurrency1 = ""
            current_currency_rate = ""
            }
        }
         else{
            
            if(tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.none){
               
                tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
                 selectedCurrency2 = currency_array2[indexPath.row]
            }
            else{
                tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
               selectedCurrency2 = ""
            }
            
            
        }
    }
 
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (selectedCurrency1.trimmingCharacters(in: CharacterSet.whitespaces).isEmpty)
        {
           
            // create the alert
            let alert = UIAlertController(title: "Required", message: "Please select Convert From Value", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        else if(selectedCurrency2.trimmingCharacters(in: CharacterSet.whitespaces).isEmpty)
        {
            // create the alert
            let alert = UIAlertController(title: "Required", message: "Please select Convert To Value", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
        
        if segue.identifier == "MainSegue" {
            
            let rateVC = segue.destination as! RateVC
            rateVC.selectedCurrency1 = selectedCurrency1;
            rateVC.selectedCurrency2 = selectedCurrency2;
            rateVC.current_currency_rate = current_currency_rate;
         
        }
        
    }
        
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

