//
//  NotificationsViewController.swift
//  carpoolApp_v1.0
//
//  Created by Matt Hills on 6/17/16.
//  Copyright © 2016 Matthew Hills. All rights reserved.
//

import UIKit

class NotificationsViewController: UITableViewController {
    
    var dataExistsForTableView = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension NotificationsViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        var numOfSections: Int = 0
        
        if (dataExistsForTableView == true) {
            self.tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
            numOfSections = 1
            tableView.backgroundView = nil
        } else {
            let noDataLabel: UILabel = UILabel(frame: CGRectMake(0, 0, tableView.bounds.size.width, tableView.bounds.size.height))
            
            noDataLabel.text = "You have no new notifications."
            noDataLabel.textColor = UIColor.darkGrayColor()
            noDataLabel.textAlignment = NSTextAlignment.Center
            tableView.backgroundView = noDataLabel
            tableView.backgroundColor = UIColor.groupTableViewBackgroundColor()
            tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        }
        
        return numOfSections
        
    }
}