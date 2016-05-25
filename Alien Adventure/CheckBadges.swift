//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(var badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var found = false
        for requestType in requestTypes{
            found = false
            for index in 0..<badges.count{
                if badges[index].requestType == requestType{
                    found = true
                    badges.removeAtIndex(index)
                    break
                }
            }
            if !found {
                return false
            }
        }
        return true
    }
    
}
