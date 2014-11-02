//
//  regex.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

class Regex {
    let pattern: String
    let regex: NSRegularExpression
    
    
    init(_ pattern:String) {
        self.pattern = pattern
        regex = NSRegularExpression(pattern: pattern, options: nil, error: nil)!
    }
    
    func test(data:String) -> Bool {
        var match = regex.firstMatchInString(data, options: nil, range: NSMakeRange(0, data.utf16Count));
        return match != nil;
    }
    
    func firstMatch(data:String) -> String? {
        
        var range = regex.rangeOfFirstMatchInString(data, options: nil, range: NSMakeRange(0, data.utf16Count));
        if range.location != NSNotFound {
            return data.substringFromIndex(range.location).substringToIndex(range.length);
        }
        else {
            return nil;
        }
    }
    
    
}