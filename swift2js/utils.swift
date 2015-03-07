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
        return self.substringFromIndex(advance(self.startIndex, index))
    }
    
    func substringToIndex(index: Int) -> String {
        return self.substringToIndex(advance(self.startIndex, index))
    }

    
}
