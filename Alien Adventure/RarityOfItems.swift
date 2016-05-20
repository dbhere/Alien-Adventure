//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var inventoryRarity: [UDItemRarity: Int] = [UDItemRarity.Common:0,
                                                    UDItemRarity.Uncommon:0,
                                                    UDItemRarity.Rare:0,
                                                    UDItemRarity.Legendary:0]
        for item in inventory {
            inventoryRarity[item.rarity]! += 1
        }
        return inventoryRarity
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"