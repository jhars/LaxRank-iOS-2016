//
//  ViewController.swift
//  LaxRank03
//
//  Created by JONATHAN HARLAN on 8/1/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var loadWheel: UIActivityIndicatorView!
    var teams = [Team]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "http://localhost:3000/rankings/state"
        let parameters = ["state": "CA", "number_of_teams": "10"]
        
        Alamofire.request(.GET, url, parameters: parameters)
            .responseJSON { response in
                if let JSON = response.result.value {
                    //GET list of Single Articles
                    let teamDictionaries = JSON as! [NSDictionary]
                    //extracts SPECIFIC DATA we want
                    self.teams = teamDictionaries.map {
                        Team(teamName: $0["team_name"] as! String, powerRating: $0["power_rating"] as! Float, laxid: $0["laxid"] as? Int)
                    }
                    print(self.teams[1].teamName)
                    
                    self.performSegueWithIdentifier("showTeams", sender: nil)
                }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let teamsTVC = segue.destinationViewController as! TeamsTableViewController
        teamsTVC.teams = teams
    }



}

