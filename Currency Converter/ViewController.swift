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
    var currency_array2 = ["US Dollar","Canadian Dollar","Indian Rupees"]
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
            cell?.refbtn_cell1.addTarget(self, action: #selector(self.btnAction1(_:)), for: .touchUpInside)
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? TableViewCell2
            cell?.reflabel_cell2.text = currency_array1[indexPath.row]
            cell?.selectionStyle = .none
            cell?.refbtn_cell2.addTarget(self, action: #selector(self.btnAction2(_:)), for: .touchUpInside)
            return cell!
        }
        
    }
    
    
    
    @objc func btnAction1(_ sender: UIButton) {
        
        if(sender.isSelected){
            sender.isSelected = false
        
            //  sender.setImage(UIImage(named: "NotSelectedCheckbox" ), for: UIControlState.normal)
        }
        else{
            self.conversionFromTable.reloadData()
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

