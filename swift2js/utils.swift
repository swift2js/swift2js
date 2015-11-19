//
//  utils.swift
//  swift2js
//
//  Created by Carlos Hernández on 24/07/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

extension String {
    
    func substringFromIndex(index: Int) -> String {
        return self.substringFromIndex(self.startIndex.advancedBy(index))
    }
    
    func substringToIndex(index: Int) -> String {
        return self.substringToIndex(self.startIndex.advancedBy(index))
    }

    
}
