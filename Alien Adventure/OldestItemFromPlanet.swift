//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem: UDItem? = nil
        var oldestAge = 0
    
        for item in inventory{
            guard let origin = item.historicalData["PlanetOfOrigin"] as? String where origin == planet else {
                continue
            }
            guard let age = item.historicalData["CarbonAge"] as? Int where age > oldestAge else {
                continue
            }
            oldestAge = age
            oldestItem = item
        }
        return oldestItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"