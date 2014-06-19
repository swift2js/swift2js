//
//  ast.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 15/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation


@objc class ASTNode {
     func toJS() -> String {
        return "";
    }
}

@objc class StringLiteralNode {
    
    let value: String;
    init(literal: String) {
        self.value = literal;
    }
    func toJS() -> String {
        return value;
    }
}