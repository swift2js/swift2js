//
//  ast.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 15/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

func tabulate(code: String) -> String {
    var result = code.stringByReplacingOccurrencesOfString("\n", withString: "\n\t", options: nil, range: nil);
    if result.hasSuffix("\t") {
        result = result.substringToIndex(result.utf16count - 1);
    }
    result = "\t" + result;
    return result;
}

typealias ASTSymbolTable = Dictionary<String, GenericType>;

class ASTContext {
    
    //exported variable declarations
    var exportedVars:String[][] = [[]];
    var exportedIndex = 0;
    //scoped symbols for type inference
    var symbols: ASTSymbolTable[] = [];
    var symbolsIndex = -1;
    //index for IDS
    var generateIDIndex = 0;
    
    func generateID() -> String {
        return "_ref\(generateIDIndex++)";
    }
    
    func exportVar(name:String) {
        if !find(exportedVars[exportedIndex], name) {
            exportedVars[exportedIndex].append(name);
        }
    }
    
    func getExportedVars() ->String? {
        if exportedVars[exportedIndex].count > 0 {
            var result = "";
            result += "var ";
            for variable in exportedVars[exportedIndex] {
                result += variable + ",";
            }
            result = result.substringToIndex(result.utf16count - 1) + ";\n";
            return result;
        }
        
        return nil;
    }
    
    //exported variable declarations
    func saveExported() {
        exportedIndex++;
        exportedVars.append([]);
    }
    
    func restoreExported() {
        if exportedIndex > 0 {
            exportedVars.removeLast();
            exportedIndex--;
        }
    }
    
    //scoped symbols for type inference
    func saveSymbols() {
        symbolsIndex++;
        symbols.append(ASTSymbolTable());
    }
    
    func restoreSymbols() {
        if (symbolsIndex > 0) {
            symbols.removeLast();
            symbolsIndex--;
        }
    }
    
    func addSymbol(name:String, type:GenericType) {
        symbols[symbolsIndex][name] = type;
    }
    
    func inferSymbol(name: String) -> GenericType? {
        //iterate from top scope to parent scopes
        for var i = symbolsIndex ; i >= 0; --i {
            if let type = symbols[i][name] {
                return type;
            }
        }
        return nil;
    }
}

var ctx = ASTContext();


@objc class ASTNode {
    
    var type: GenericType?;
    
    func toJS() -> String {
        return "";
    }
    
    func getType() -> GenericType
    {
        if let cached = type {
            return cached;
        }
        type = inferType();
        return type ? type! : GenericType(.UNKOWN);
    }
    
    func inferType() -> GenericType? {
        return nil;
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
    
    override func inferType() -> GenericType? {
        if value == "true" || value == "false" {
            return GenericType(.BOOLEAN);
        }
        else if value.hasPrefix("\"") {
            return GenericType(.STRING);
        }
        else {
            return GenericType(.NUMBER);
        }
    }
}

@objc class IdentifierExpression: ASTNode {
    
    let name: String;
    
    init(_ identifier: String) {
        self.name = identifier;
    }
    
    override func toJS() -> String {
        return name;
    }
    
    override func inferType() -> GenericType? {
        return ctx.inferSymbol(name);
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
        if binaryOperator == "." {
            var right = rightOperand.toJS();
            if let index = right.toInt() {
                return "[\(index)]";
            }
            return binaryOperator + right;
        }
        else {
            return " " + binaryOperator + " " + rightOperand.toJS();
        }
    }
    
    override func inferType() -> GenericType? {
        return rightOperand.getType();
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
    
    override func inferType() -> GenericType? {
        return rightOperand.getType();
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
    
    override func inferType() -> GenericType? {
        return trueOperand.getType();
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
    
    override func inferType() -> GenericType? {
        return operand.getType(); //TODO !
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
    
    override func inferType() -> GenericType? {
        return operand.getType(); //TODO !
    }
}

@objc class BinaryExpression: ASTNode {
    
    var current:ASTNode?;
    var next:BinaryExpression?;
    
    init(expression:ASTNode?) {
        self.current = expression;
    }
    
    init(expression:ASTNode, next:BinaryExpression?) {
        self.current = expression;
        self.next = next;
    }
    
    //multiple assignmens from a tuple literal. Example: let (a,b) = (1,2)
    func leftAndRightTupleToJS(left: ParenthesizedExpression,_ right: ParenthesizedExpression) -> String {
        var result = "";
        let names = left.toExpressionArray();
        let values = right.toExpressionArray();
        
        for var i = 0; i < names.count; ++i {
            if i >= values.count {
                break;
            }
            result += "\(names[i]) = \(values[i]), ";
        }
        result = result.substringToIndex(result.utf16count - 2); //remove last ", "
        return result;
    }
    
    //multiple assignmens from a expression supposed tu be a tuple. Example: let (a,b) = instance
    func leftTupleAndRightExpressionToJS(left: ParenthesizedExpression,_ right: ASTNode) -> String {
        
        var tupleID = "";
        if let literal = right as? LiteralExpression {
            tupleID = literal.toJS();
        }
        else if let identifier = right as? IdentifierExpression {
            tupleID = identifier.toJS();
        }
        else {
            tupleID = ctx.generateID();
            ctx.exportVar(tupleID + " = " + right.toJS());
        }
        
        let names = left.toExpressionArray();
        var result = "";
        
        if let tupleType = right.getType() as? TupleType {
            //known tuple type
            let tupleMembers = tupleType.names;
            for var i = 0; i < names.count; ++i {
                if let number = tupleMembers[i].toInt() {
                    result += "\(names[i]) = \(tupleID)[\(number)], ";
                }
                else {
                    result += "\(names[i]) = \(tupleID).\(tupleMembers[i]), ";
                }
            }
        }
        else {
            //unkown tuple type
            for var i = 0; i < names.count; ++i {
                result += "\(names[i]) = \(tupleID)[Object.keys(\(tupleID))[\(i)]], ";
            }
        }
        
        result = result.substringToIndex(result.utf16count - 2); //remove last ", "
        
        return result;
    }
    
    
    override func toJS() -> String {
        
        
        //Check Tuple assignment binary expressions
        
        if let assignment = next?.current as? AssignmentOperator {
            current!.type = assignment.rightOperand.getType();
            //check left to right tuple assignment
            let leftTuple = current as? ParenthesizedExpression;
            let rightTuple = assignment.rightOperand as? ParenthesizedExpression;
            if leftTuple && leftTuple!.isList() && rightTuple && rightTuple!.isList() {
                return leftAndRightTupleToJS(leftTuple!, rightTuple!);
            }
            else if leftTuple && leftTuple!.isList() {
                return leftTupleAndRightExpressionToJS(leftTuple!, assignment.rightOperand);
            }
        }
        
        //check for custom operators. Example array +=
        if let binaryOperator = next?.current as? BinaryOperator {
            var soto = current!.getType();
            if let customOperator = current!.getType().customBinaryOperator(current!, operator: binaryOperator.binaryOperator, otherNode: binaryOperator.rightOperand) {
                return customOperator;
            }
        }
        
        //Generic binary expression
        var result = "";
        if let currentExpression = current {
            result+=currentExpression.toJS();
        }
        if let nextExpression = next {
            result += nextExpression.toJS();
        }
        return result;
    }
    
    override func inferType() -> GenericType? {
        if !self.current {
            return nil;
        }
        
        var leftType = current!.getType();
        if let op = next?.current as? BinaryOperator {
            return leftType.operate(op.binaryOperator, other: op.getType());
        }
        else if let op = next?.current as? AssignmentOperator {
            current!.type = op.getType();
            return op.getType();
        }
        else {
            return leftType;
        }

    }
}

@objc class NamedExpression: ASTNode {
    
    let name:String;
    let expr:ASTNode;
    
    init(name:String, expr: ASTNode) {
        self.name = name;
        self.expr = expr;
    }
    
    override func toJS() -> String {
        return expr.toJS();
    }
    
    override func inferType() -> GenericType? {
        return expr.getType();
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
    
    override func inferType() -> GenericType? {
        var types:GenericType[] = [];
        var item:ExpressionList? = self;
        //infere al the types of the list
        while let valid = item {
            if let expr = valid.current {
                types += expr.getType();
            }
            item = valid.next;
        }
        //TODO: get less restrictive type instead of the first one
        return types.count > 0 ? types[0] : nil;
    }
}

@objc class ParenthesizedExpression: ASTNode {
    
    let expression: ASTNode?;
    var allowInlineTuple = true;
    
    
    init(expression: ASTNode?) {
        self.expression = expression;
    }
    
    func toInlineTuple(list: ExpressionList) -> String {
        var result = "{";
        
        var item:ExpressionList? = list;
        var index = 0;
        while let validItem = item {
            
            if let namedExpression = validItem.current as? NamedExpression {
                result += "\(namedExpression.name): \(namedExpression.expr.toJS()), ";
            }
            else if let expression = validItem.current {
                result += "\(index): \(expression.toJS()), ";
            }
            ++index;
            item = validItem.next;
        }
        
        result = result.substringToIndex(result.utf16count - 2); //remove last ', '
        result += "}";
        
        return result;
    }
    
    func isList() ->Bool {
        if let list = expression as? ExpressionList {
            if list.next {
                return true;
            }
        }
        return false;
    }
    
    func toExpressionArray() -> String[] {
        var result = String[]();
        
        var node = expression as? ExpressionList;
        while let item = node {
            result.append(item.current!.toJS());
            node = item.next;
        }
        
        return result;
    }
    
    func toTypesArray() -> GenericType[] {
        var result = GenericType[]();
        
        var node = expression as? ExpressionList;
        while let item = node {
            result.append(item.current!.getType());
            node = item.next;
        }
        return result;
    }
    
    func toTupleInitializer(variableName: String) -> String {
        let list = expression as ExpressionList;
        var result = variableName + " = ";
        result += variableName + " = " + toInlineTuple(list);
        return result;
    }
    
    override func toJS() -> String {

        if allowInlineTuple {
            if let list = expression as? ExpressionList {
                if list.next {
                    return self.toInlineTuple(list);
                }
            }
        }
        
        if let expr = expression {
            return "(" + expr.toJS() + ")";
        }
        return "()";
    }
    
    override func inferType() -> GenericType? {
        if allowInlineTuple {
            if let list = expression as? ExpressionList {
                if list.next {
                    //mutiple elements = > tuple
                    return TupleType(list:list);
                }
                else if let item = list.current {
                    //single element => not a tuple
                    return item.getType();
                }
            }
        }
        if let expr = expression {
            return expr.getType();
        }
        return nil;
    }
}

@objc class FunctionCallExpression: ASTNode {
    let function: ASTNode;
    let parenthesized: ParenthesizedExpression;
    
    init(function: ASTNode, parenthesized: ParenthesizedExpression) {
        self.function = function;
        self.parenthesized = parenthesized;
    }
    
    override func toJS() -> String {
        parenthesized.allowInlineTuple = false;
        return function.toJS() + parenthesized.toJS();
    }
    
    override func inferType() -> GenericType? {
        if let funcType = function.getType() as? FunctionType {
            return funcType.returnType;
        }
        return GenericType(.VOID);
    }
}

@objc class VariableDeclaration: ASTNode {
    let initializer: ExpressionList;
    var exportVariables = true;
    
    init(initializer:ExpressionList) {
        self.initializer = initializer;
    }
    
    func exportSymbols(expression:BinaryExpression) {
        
        //multiple var initiliazation via tuples
        if let tuple = expression.current as? ParenthesizedExpression {
            var names = tuple.toExpressionArray();
            var types = tuple.toTypesArray();
            for var i = 0; i < names.count; ++i {
                if (exportVariables) {
                    ctx.exportVar(names[i]);
                }
                ctx.addSymbol(names[i], type:types[i]);
            }
            
        } //single var initialization
        else if let expr = expression.current{
            var name = expr.toJS();
            if exportVariables {
                ctx.exportVar(name)
            }
            ctx.addSymbol(name, type: expr.getType());
        }
    }
    
    override func toJS() -> String {
        
        var result = initializer.toJS();

        //export symbols and vars
        var node:ExpressionList? = initializer;
        while let item = node {
            if let expression = item.current as? BinaryExpression {
                exportSymbols(expression);
            }
            node = item.next;
        }
        
        //avoid var if exporting variables
        if exportVariables {
            return result;
        }
        else {
            return "var " + result;
        }
    }
}

@objc class ArrayLiteral: ASTNode {
    let items: ASTNode?;
    
    init(items:ASTNode?){
        self.items = items;
    }
    
    override func toJS() -> String {
        var result = "[";
        if let data = items {
            result+=data.toJS();
        }
        result+="]";
        return result;
    }
    
    override func inferType() -> GenericType? {
        if let item = (items as? ExpressionList)?.current? {
            return ArrayType(innerType: item.getType());
        }
        return ArrayType(innerType: GenericType(.UNKOWN));
    }
}

@objc class DictionaryLiteral: ASTNode {
    let pairs: ASTNode?;
    
    init(pairs:ASTNode?){
        self.pairs = pairs;
    }
    
    override func toJS() -> String {
        var result = "{";
        if let data = pairs {
            result += tabulate(data.toJS()) + "\n";
        }
        result+="}";
        return result;
    }
    
    override func inferType() -> GenericType? {
        if let item = (pairs as? ExpressionList)?.current {
            return DictionaryType(innerType: item.getType());
        }
        return DictionaryType(innerType: GenericType(.UNKOWN));
    }
}

@objc class DictionaryItem: ASTNode {
    let key: ASTNode;
    let value: ASTNode;
    
    init(key:ASTNode, value:ASTNode){
        self.key = key;
        self.value = value;
    }
    
    override func toJS() -> String {
        return "\n" + key.toJS() + " : " + value.toJS();
    }
    
    override func inferType() -> GenericType? {
        return value.getType();
    }
}

@objc class FunctionParameter: ASTNode {
    let inoutVal:Boolean;
    let letVal:Boolean;
    let hashVal:Boolean;
    let external:String;
    let local:String?;
    let defVal:ASTNode?;
    
    init(inoutVal:Boolean, letVal:Boolean, hashVal:Boolean, external:String, local:String?, defVal:ASTNode?) {
        self.inoutVal = inoutVal;
        self.letVal = letVal;
        self.hashVal = hashVal;
        self.external = external;
        self.local = local;
        self.defVal = defVal;
    }
    
    override func toJS() -> String {
        //TODO: default value, inout, etc...
        return local ? local! : external;
    }
    
}

@objc class FunctionDeclaration: ASTNode {
    let name:String;
    let signature:ASTNode?;
    let body:ASTNode?;
    
    init(name:String, signature:ASTNode?, body:ASTNode?) {
        self.name = name;
        self.signature = signature;
        self.body = body;
    }
    
    override func toJS() -> String {
        var result = "function " + name + "(";
        if let parameters = signature {
            result += parameters.toJS();
        }
        result += ") {\n";
        if let statements = body {
            result += tabulate(statements.toJS());
        }
        result += "}";
        return result;
    }
}


@objc class WhileStatement: ASTNode {
    let whileCondition: ASTNode;
    let codeBlock: ASTNode?;
    
    init(whileCondition:ASTNode, codeBlock:ASTNode?) {
        self.whileCondition = whileCondition;
        self.codeBlock = codeBlock;
    }
    
    override func toJS() -> String {
        var result = "while";
        result += "(" + whileCondition.toJS() + "){ \n";
        if let statements = codeBlock {
            result += tabulate(statements.toJS());
        }
        result += "}";
        return result;
    }

}

@objc class LabelStatement: ASTNode {
    let labelName: String;
    let loop: ASTNode;
    
    init(labelName:String, loop: ASTNode) {
        self.labelName = labelName;
        self.loop = loop;
    }
    
    override func toJS() -> String {
        return labelName + ":\n" + loop.toJS();
    }
}


@objc class BreakStatement: ASTNode {
    let labelName: String?;
    
    init(labelId: String?) {
        self.labelName = labelId;
    }
    
    override func toJS() -> String {
        if let identifier = labelName{
            return "break " + identifier + ";";
        }
        return "break;";
    }
}


@objc class ReturnStatement: ASTNode {
    let returnExpr: ASTNode?;
    
    init(returnExpr: ASTNode?) {
        self.returnExpr = returnExpr;
    }
    
    override func toJS() -> String {
        if let expr = returnExpr {
            return "return " + expr.toJS() + ";";
        }
        return "return;"
    }
    
    override func inferType() -> GenericType? {
        if let expr = returnExpr {
            return expr.getType();
        }
        else {
            return GenericType(.VOID);
        }
    }
}

@objc class OptionalChainExprStatement: ASTNode {
    let optChainExpr: ASTNode?;
    
    init(optChainExpr: ASTNode?) {
        self.optChainExpr = optChainExpr;
    }
    
    override func toJS() -> String {
        if let expr = optChainExpr {
            return expr.toJS();
        }
        return "";
    }
}

@objc class IfStatement: ASTNode {
    let ifCondition:ASTNode;
    let body:ASTNode?;
    let elseClause:ASTNode?;
    var mustCheckDeclarations = true;
    
    init(ifCondition:ASTNode, body:ASTNode?, elseClause:ASTNode?) {
        self.ifCondition = ifCondition;
        self.body = body;
        self.elseClause = elseClause;
    }
    
    override func toJS() -> String {
        var result = "if (";
        result += ifCondition.toJS();
        result += ") {\n";
        if let statements = body {
            result += tabulate(statements.toJS());
        }
        result += "}";
        if let next = elseClause {
            result += "\nelse "
            if next is IfStatement { //nested if
                 result += next.toJS();
            }
            else {
                result += "{\n" + tabulate(next.toJS()) + "}";
            }
        }
        return result;
        
    }
}

@objc class StatementNode: ASTNode {
    let statement:ASTNode;
    init(statement:ASTNode) {
        self.statement = statement;
    }
    
    override func toJS() -> String {
        return statement.toJS() + ";";
    }
}

@objc class DeclarationStatement: ASTNode {
    let declaration:ASTNode;
    init(declaration:ASTNode) {
        self.declaration = declaration;
    }
    
    override func toJS() -> String {
        if let varDeclaration = declaration as? VariableDeclaration {
            varDeclaration.exportVariables = false;
        }
        return declaration.toJS() + ";";
    }
}

@objc class StatementsNode: ASTNode {
    
    var current:ASTNode?;
    var next:StatementsNode?;
    var firstStatement = true;
    
    init(current:ASTNode?) {
        self.current = current;
    }
    
    init(current:ASTNode, next:StatementsNode) {
        self.current = current;
        self.next = next;
    }
    
    override func toJS() -> String {
        if firstStatement {
            ctx.saveSymbols();
        }
        var result = "";
        if let currentStatement = current {
            ctx.saveExported();
            var tmp = currentStatement.toJS() + "\n";
            if let exported = ctx.getExportedVars() {
                result += exported;
            }
            result += tmp;
            ctx.restoreExported();
        }
        if let nextStatements = next {
            nextStatements.firstStatement = false;
            result += nextStatements.toJS();
        }
        if firstStatement {
            ctx.restoreSymbols();
        }

        return result;
    }
    
    func getStatementsCount() -> Int {
        var result = 1;
        var item = next;
        while let valid = item {
            result++;
            item = valid.next;
        }
        return result;
    }
}

