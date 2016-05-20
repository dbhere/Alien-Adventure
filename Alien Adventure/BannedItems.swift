//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileUrl = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: dataFileUrl)!
        
        var itemsToBeBaned = [Int]()
        for item in itemArray{
            guard let name = item["Name"] as? String where name.lowercaseString.containsString("laser") else {
                continue
            }
            guard let historicalData = item["HistoricalData"] as? [String: AnyObject] else {
                continue
            }
            guard let age = historicalData["CarbonAge"] as? Int where age < 30 else {
                continue
            }
            guard let numberId = item["ItemID"] as? Int else {
                continue
            }
            itemsToBeBaned.append(numberId)
        }
        
        return itemsToBeBaned
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"