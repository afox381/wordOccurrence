//
//  String+Helper.swift
//  AlienHunter
//
//  Created by Andrew Fox on 18/07/2016.
//  Copyright © 2016 DigitalOrigins. All rights reserved.
//

import UIKit

extension String {

    func occurrenceCountForWord(word: String) -> Int {
        // Make sure we don't contain any non-alphanumberic characters in "word"
        let alphaNumericCharacterSet = NSCharacterSet.alphanumericCharacterSet().invertedSet
        let filteredCharacters = word.characters.filter {
            return String($0).rangeOfCharacterFromSet(alphaNumericCharacterSet) != nil
        }
        guard filteredCharacters.isEmpty else { return -1 }
        
        let pattern = "([-,.:;?!\"\'])(\\s*)"
        do {
            // Replace all punctuation with spaces to split up our words
            let myRegEx = try NSRegularExpression(pattern: pattern, options: [])
            let range = NSRange(location: 0, length: characters.count)
            let newString = myRegEx.stringByReplacingMatchesInString(
                self,
                options: [],
                range: range,
                withTemplate: " ")
            
            // Return the number of words that match our word parameter
            let countedSet = NSCountedSet(array: newString.lowercaseString.componentsSeparatedByString(" "))
            return countedSet.countForObject(word.lowercaseString)
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            return -1
        }
    }
    
}
