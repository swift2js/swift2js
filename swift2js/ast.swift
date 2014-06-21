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

@objc class BinaryOperator: ASTNode {
    
    let rightOperand: ASTNode;
    let binaryOperator: String;
    
    init(rightOperand: ASTNode, binaryOperator:String ) {
        self.binaryOperator = binaryOperator;
        self.rightOperand = rightOperand;
    }
    
    override func toJS() -> String {
        return " " + binaryOperator + " " + rightOperand.toJS();
    }
}

@objc class AssignmentOperator: ASTNode {
    
    let rightOperand: ASTNode;
    
    init(rightOperand: ASTNode) {
        self.rightOperand = rightOperand;
    }
    
    override func toJS() -> String {
        return " = " + rightOperand.toJS();
    }
}

@objc class TernaryOperator: ASTNode {
    
    let trueOperand: ASTNode;
    let falseOperand: ASTNode;
    
    init(trueOperand: ASTNode, falseOperand: ASTNode) {
        self.trueOperand = trueOperand;
        self.falseOperand = falseOperand;
    }
    
    override func toJS() -> String {
        return " ? " + trueOperand.toJS() + " : " + falseOperand.toJS();
    }
}

@objc class PrefixOperator: ASTNode {
    
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

@objc class PostfixOperator: ASTNode {
    
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

@objc class BinaryExpression: ASTNode {
    
    var current:ASTNode?;
    var next:BinaryExpression?;
    
    init(expression:ASTNode?) {
        self.current = expression;
    }
    
    init(expression:ASTNode, next:BinaryExpression) {
        self.current = expression;
        self.next = next;
    }
    
    override func toJS() -> String {
        var result = "";
        if let currentExpression = current {
            result+=currentExpression.toJS();
        }
        if let nextExpression = next {
            result += nextExpression.toJS();
        }
        return result;
    }
}

@objc class ExpressionList: ASTNode {
    var current:ASTNode?;
    var next:ExpressionList?;
    
    init(expr:ASTNode?, next:ExpressionList?) {
        self.current = expr;
        self.next = next;
    }
    
    
    override func toJS() -> String {
        var result = "";
        if let currentExpression = current {
            result+=currentExpression.toJS();
        }
        if let nextExpression = next {
            result += ", " + nextExpression.toJS();
        }
        return result;
    }
}

@objc class ParenthesizedExpression: ASTNode {
    
    let expression: ASTNode?;
    
    init(expression: ASTNode?) {
        self.expression = expression;
    }
    
    override func toJS() -> String {
        if let expr = expression {
            return "(" + expr.toJS() + ")";
        }
        return "()";
    }
}

@objc class FunctionCallExpression: ASTNode {
    let function: ASTNode;
    let parenthesized: ASTNode;
    
    init(function: ASTNode, parenthesized: ASTNode) {
        self.function = function;
        self.parenthesized = parenthesized;
    }
    
    override func toJS() -> String {
        return function.toJS() + parenthesized.toJS();
    }
}

@objc class StatementsNode: ASTNode {
    
    var current:ASTNode?;
    var next:StatementsNode?;
    
    init(current:ASTNode?) {
        self.current = current;
    }
    
    init(current:ASTNode, next:StatementsNode) {
        self.current = current;
        self.next = next;
    }
    
    override func toJS() -> String {
        var result = "";
        if let currentStatement = current {
            result+=currentStatement.toJS() + ";\n";
        }
        if let nextStatements = next {
            result += nextStatements.toJS();
        }
        return result;
    }
}

