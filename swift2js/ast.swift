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

@objc class LiteralExpression: ASTNode {
    
    let value: String;
    
    init(_ literal: String) {
        self.value = literal;
    }
    
    override func toJS() -> String {
        return value;
    }
}

@objc class BinaryExpression: ASTNode {
    
    let op1: ASTNode;
    let op2: ASTNode;
    let binaryOperator: String;
    
    init(_ op1: ASTNode,_ op2: ASTNode,_ binaryOperator:String ) {
        self.op1 = op1;
        self.op2 = op2;
        self.binaryOperator = binaryOperator;
    }
    
    override func toJS() -> String {
        return op1.toJS() + " " + binaryOperator + " " + op2.toJS();
    }
}

@objc class PrefixExpression: ASTNode {
    
    let operand: ASTNode;
    let prefixOperator: String;
    
    init(_ operand: ASTNode, _ prefixOperator:String ) {
        self.operand = operand;
        self.prefixOperator = prefixOperator;
    }
    
    override func toJS() -> String {
        return prefixOperator + operand.toJS();
    }
}

@objc class PostfixExpression: ASTNode {
    
    let operand: ASTNode;
    let postfixOperator: String;
    
    init(_ operand: ASTNode, _ postfixOperator:String ) {
        self.operand = operand;
        self.postfixOperator = postfixOperator;
    }
    
    override func toJS() -> String {
        return operand.toJS() + postfixOperator;
    }
}

