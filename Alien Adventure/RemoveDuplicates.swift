//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {        
        var recordedItem = Set<UDItem>()
        let noDuplicateItem = inventory.filter(){
            if recordedItem.contains($0){
                return false
            }
            recordedItem.insert($0)
            return true
        }
        return noDuplicateItem
    }
    
}
