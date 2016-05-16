//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == ""{
            return true
        }
        guard s1.characters.count + s2.characters.count == shuffle.characters.count else {
            return false
        }
        
        var s1Index = s1.startIndex
        var s2Index = s2.startIndex
        var shuffleIndex = shuffle.startIndex
        while shuffleIndex != shuffle.endIndex {
            if s1Index != s1.endIndex && s1[s1Index] == shuffle[shuffleIndex]{
                s1Index = s1Index.successor()
            } else if s2Index != s2.endIndex && s2[s2Index] == shuffle[shuffleIndex]{
                s2Index = s2Index.successor()
            } else {
                //shuffle中存在s1,s2没有的元素
                return false
            }
            shuffleIndex = shuffleIndex.successor()
        }
        
        return s1Index == s1.endIndex && s2Index == s2.endIndex
    }
}
