//
//  TeamsTableViewController.swift
//  LaxRank03
//
//  Created by JONATHAN HARLAN on 8/1/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {
    
    var teams = [Team]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teams.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("teamCell", forIndexPath: indexPath)
        let team = teams[indexPath.row]
        cell.textLabel?.text = team.teamName
        return cell
    }
}
