//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var characterCount = [Character: Int]()
        var commonChar: Character?
        var commonCharCount = 0
        
        for item in inventory {
            let name = item.name.lowercaseString
            for char in name.characters{
                if characterCount[char] != nil {
                    characterCount[char]! += 1
                }else {
                    characterCount[char] = 1
                }
            }
        }
        for (char, count) in characterCount{
            if commonChar == nil || count > commonCharCount{
                commonChar = char
                commonCharCount = count
            }
        }
        
        return commonChar
    }
}
