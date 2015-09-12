//
//  ScheduleViewController.swift
//  PencilMeIn
//
//  Created by Claire Yuan on 9/12/15.
//  Copyright (c) 2015 PencilMeIn. All rights reserved.
//

import UIKit

class EmployeeViewController: UITableViewController {
    
    var tableData = [String]()
    var indexOfNumbers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var allNumbers = "claire yuan, omri barak, john ha, daphne chen, charles wu"
        tableData = allNumbers.componentsSeparatedByString(", ")
        
        var indexNumbers = "a b c d e f g h i j k l m n o p q r s t u v w x y z"
        indexOfNumbers = indexNumbers.componentsSeparatedByString(" ")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of rows in the section
        return 1
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return indexOfNumbers.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("EmployeeTableCell", forIndexPath: indexPath) as! EmployeeTableCell
        
        cell.textLabel?.text = tableData[indexPath.section] ?? ""
        
        return cell
    }
    
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [AnyObject]! {
        return indexOfNumbers
    }
    
    override func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        var temp = indexOfNumbers as NSArray
        return temp.indexOfObject(title)
    }
    
    
}


