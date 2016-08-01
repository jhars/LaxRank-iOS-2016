//
//  Team.swift
//  LaxRank03
//
//  Created by JONATHAN HARLAN on 8/1/16.
//  Copyright © 2016 JONATHAN HARLAN. All rights reserved.
//

import Foundation

class Team {
    var teamName:String?
    var powerRating:Float?
    var laxid:Int?
    
    init(teamName:String, powerRating:Float, laxid:Int?) {
        self.teamName = teamName
        self.powerRating = powerRating
        self.laxid = laxid
    }
}