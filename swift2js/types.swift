//
//  types.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 07/07/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

enum SwiftType: Int {
    case STRING = 1
    case BOOLEAN, NUMBER, ARRAY, DICTIONARY
    case TUPLE
    case FUNCTION
    case CLASS
    case STRUCT
    case VOID
    case UNKOWN
}

class GenericType
{
    var type: SwiftType;
    
    init(_ type: SwiftType) {
        self.type = type;
    }
    
    func operate(operator:String, other: GenericType) -> GenericType
    {
        if operator == "===" || operator == "==" || operator == "&&" || operator == "||" {
            return GenericType(SwiftType.BOOLEAN);
        }
        else if operator == "=" {
            return other;
        }
        else if type == .STRING || other.type == .STRING {
            return GenericType(SwiftType.STRING);
        }
        else {
            return self;
        }
    }
    
    func customBinaryOperator(myNode: ASTNode, operator:String, otherNode: ASTNode) -> String?
    {
        return nil;
    }
}

class IndirectionType: GenericType
{
    var pointer:GenericType;
    
    init(pointer:GenericType) {
        self.pointer = pointer;
        super.init(pointer.type);
    }
    
    func update(pointer:GenericType) {
        self.pointer = pointer;
        type = pointer.type;
    }
    
}

@objc class TupleType: GenericType
{
    var names:[String] = [];
    var types:[GenericType] = [];
    
    init(list:ExpressionList?)
    {
        super.init(.TUPLE);
        
        var item:ExpressionList? = list;
        var index = 0;
        while let validItem = item {
            if let namedExpression = validItem.current as? NamedExpression {
                addType(namedExpression.name, type: namedExpression.getType());
            }
            else if let expression = validItem.current {
                addType(String(index), type: expression.getType());
            }
            ++index;
            item = validItem.next;
        }

        
    }
    
    func addType(name:String, type:GenericType)
    {
        names.append(name);
        types.append(type);
    }
}

class ArrayType: GenericType
{
    let innerType: GenericType;
    
    init(innerType: GenericType) {
        self.innerType = innerType;
        super.init(.ARRAY);
    }
    
    override func customBinaryOperator(myNode: ASTNode, operator:String, otherNode: ASTNode) -> String?
    {
        if operator == "+=" {
            
            if otherNode.getType().type == SwiftType.ARRAY {
                return "Array.prototype.push.apply(\(myNode.toJS()),\(otherNode.toJS()))";
            }
            else {
                return myNode.toJS() + ".push(" + otherNode.toJS() + ")";
            }
        }
        
        return super.customBinaryOperator(myNode, operator: operator, otherNode: otherNode);
    }
}

class DictionaryType: GenericType
{
    let innerType: GenericType;
    
    init(innerType: GenericType) {
        self.innerType = innerType;
        super.init(.DICTIONARY);
    }
}

class FunctionType: GenericType
{
    let returnType: GenericType;
    var argumentTypes: [GenericType] = [];
    
    init(argumentTypes: GenericType[], returnType: GenericType) {
        self.argumentTypes = argumentTypes;
        self.returnType = returnType;
        super.init(.DICTIONARY);
    }
}
