//
//  ViewController.swift
//  from_iOS_to_RN
//
//  Created by Armando-MBP-463 on 2/9/19.
//  Copyright © 2019 luisarmandodv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTask.count
        case 1:
            return weeklyTask.count
        case 2:
            return monthlyTask.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTask[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTask[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTask[indexPath.row]
        default:
            cell.textLabel?.text = "this shouldn't happend"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daidly Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    let dailyTask = [
    "Check all windows",
    "Check all doors",
    "is the boiler fueled?",
    "Check the mailbox",
    "Empty trash containers",
    "If freezing, check water pipes",
    "Document  \"strange and unusual\" ocurrences", ]
    
    let weeklyTask = [
        "Check inside all cabins",
        "Flush all lavatories in cabins",
        "Walk perimeter of property", ]
    
    let monthlyTask = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms", ]

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
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

