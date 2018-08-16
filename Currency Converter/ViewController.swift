//
//  ViewController.swift
//  Currency Converter
//
//  Created by Abhi on 14/08/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var selectedIndexPath = NSIndexPath(row: 0, section: 0)
   
    var currency_array1 = ["US Dollar","Canadian Dollar","Indian Rupees"]
    var currency_rate = ["67","51","30"]
    var currency_array2 = ["US Dollar","Canadian Dollar","Indian Rupees"]
    
    var selectedCurrency1:String = "", selectedCurrency2:String = "", current_currency_rate:String = ""
    //var selectedIndex:NSIndexPath?
    
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
           // cell?.refbtn_cell1.addTarget(self, action: #selector(self.btnAction1(_:)), for: .allTouchEvents)
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? TableViewCell2
            cell?.reflabel_cell2.text = currency_array2[indexPath.row]
            cell?.selectionStyle = .none
            //cell?.refbtn_cell2.addTarget(self, action: #selector(self.btnAction2(_:)), for: .allTouchEvents)
            return cell!
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       if(tableView == conversionFromTable){
       // print(self.currency_array1[indexPath.row])
            selectedCurrency1 = currency_array1[indexPath.row]
            current_currency_rate = currency_rate[indexPath.row]
           // print(self.currency_rate[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell1
        if (cell.refbtn_cell1.isSelected){
            cell.refbtn_cell1.isSelected = false
            selectedCurrency1 = " "
            current_currency_rate = " "
        }
        else{
            cell.refbtn_cell1.isSelected = true
            selectedCurrency1 = currency_array1[indexPath.row]
            current_currency_rate = currency_rate[indexPath.row]
        }
        
        }
        else{
        
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell2
        if (cell.refbtn_cell2.isSelected){
            cell.refbtn_cell2.isSelected = false
            selectedCurrency2 = " "
        }
        else{
            cell.refbtn_cell2.isSelected = true
            selectedCurrency2 = currency_array2[indexPath.row]
        }
        
        
            
        }
    }
    
    
    @objc func btnAction1(_ sender: UIButton) {
        
        if(sender.isSelected){
            sender.isSelected = false
        
            //  sender.setImage(UIImage(named: "NotSelectedCheckbox" ), for: UIControlState.normal)
        }
        else{
            //self.conversionFromTable.reloadData()
            sender.isSelected = true
            // sender.setImage(UIImage(named: "SelectedCheckbox" ), for: UIControlState.normal)
        }
    }
    @objc func btnAction2(_ sender: UIButton) {
        
        if(sender.isSelected){
            sender.isSelected = false
            //  sender.setImage(UIImage(named: "NotSelectedCheckbox" ), for: UIControlState.normal)
        }
        else{
            self.conversionToTable.reloadData()
            sender.isSelected = true
            // sender.setImage(UIImage(named: "SelectedCheckbox" ), for: UIControlState.normal)
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.identifier == "MainSegue" {
            
            let rateVC = segue.destination as! RateVC
            rateVC.selectedCurrency1 = selectedCurrency1;
            rateVC.selectedCurrency2 = selectedCurrency2;
            rateVC.current_currency_rate = current_currency_rate;
         
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

