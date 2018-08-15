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
    var currency_array2 = ["US Dollar","Canadian Dollar","Indian Rupees"]
    var selectedIndex:NSIndexPath?
    
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
            cell?.refbtn_cell1.addTarget(self, action: #selector(checkmarkButtonClick( sender:)), for: .touchUpInside)
            
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? TableViewCell2
            cell?.reflabel_cell2.text = currency_array1[indexPath.row]
            return cell!
        }
        
    }
    
    @objc func checkmarkButtonClick(sender: UIButton){
        if(sender.isSelected){
            //Uncheck
        }
        else{
            //Checkmark it
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

