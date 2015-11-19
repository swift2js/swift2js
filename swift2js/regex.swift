//
//  regex.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

@objc class Regex : NSObject {
    let pattern: String
    let regex: NSRegularExpression
    
    
    init(_ pattern:String) {
        self.pattern = pattern
        regex = try! NSRegularExpression(pattern: pattern, options: [])
    }
    
    func test(data:String) -> Bool {
        let match = regex.firstMatchInString(data, options: [], range: NSMakeRange(0, data.utf16.count))
        return match != nil
    }
    
    func firstMatch(data:String) -> String? {
        
        let range = regex.rangeOfFirstMatchInString(data, options: [], range: NSMakeRange(0, data.utf16.count))
        if range.location != NSNotFound {
            return data.substringFromIndex(range.location).substringToIndex(range.length)
        }
        else {
            return nil
        }
    }
    
    
}