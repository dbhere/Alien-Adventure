//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileUrl = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawData = NSData(contentsOfURL: dataFileUrl)!
        var planetJSON: [[String:AnyObject]]!
        do {
            planetJSON = try! NSJSONSerialization.JSONObjectWithData(rawData, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        
        
        var expectedPlanet: String?
        var topPlanetValue = 0
        
        for planet in planetJSON {
            guard let common = planet["CommonItemsDetected"] as? Int else{
                continue
            }
            guard let uncommon = planet["UncommonItemsDetected"] as? Int else {
                continue
            }
            guard let rare = planet["RareItemsDetected"] as? Int else {
                continue
            }
            guard let legendary = planet["LegendaryItemsDetected"] as? Int else{
                continue
            }
            guard let name = planet["Name"] as? String else {
                continue
            }
            //compute the value
            let planetValue = common + 2 * uncommon + 3 * rare + 4 * legendary
            if expectedPlanet == nil || planetValue > topPlanetValue{
                expectedPlanet = name
                topPlanetValue = planetValue
            }
        }
        
        return expectedPlanet ?? ""
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"