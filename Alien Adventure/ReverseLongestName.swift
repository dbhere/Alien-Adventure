//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longestName = ""
        for item in inventory{
            if item.name.characters.count > longestName.characters.count{
                longestName = item.name
            }
        }
        var reversedName = ""
        for char in longestName.characters{
            reversedName.insert(char, atIndex: reversedName.startIndex)
        }
        
        return reversedName
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"