//
//  lexer.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

enum TOKEN:Int {
    case IDENTIFIER = 1
    //declaration keywords
    case CLASS, DEINIT, ENUM, EXTENSION, FUNC, IMPORT, INIT, LET, PROTOCOL, STATIC, STRUCT, SUBSCRIPT, TYPEALIAS, VAR
    //statement keywords
    case BREAK, CASE, CONTINUE, DEFAULT, DO, ELSE, FALLTHROUGH, IF, IN, FOR, RETURN, SWITCH, WHERE, WHILE
    //expression keywwords
    case AS, DYNAMICTYPE, IS, NEW, SUPER, SELF, SELF_CLASS, TYPE
    //particular keywords
    case ASSOCIATIVITY, DIDSET, GET, INFIX, INOUT, LEFT, MUTATING, NONE, NONMUTATING, OPERATOR, OVERRIDE
    case POSTFIX, PRECEDENCE, PREFIX, RIGHT, SET, UNOWNED, UNOWNED_SAFE, UNOWNED_UNSAFE, WEAK, WILLSET
    //value literals
    case NUMBER_LITERAL, STRING_LITERAL, BOOLEAN_LITERAL
    //operators /­  =­  -­  +­  !­  *­  %­  <­  >­  &­  |­  ^­  ~­  .­
    case SLASH, EQUAL, MINUS, PLUS, EXCLAMATION, ASTERISK, PERCENT, LT, GT, AMPERSAND, VERTICAL_BAR, CARET, TILDE, DOT
    //grammar symbols ( ) [ ] { } , : ; @ _ # $ ?
    case LPAR, RPAR, LBRACKET, RBRACKET, LBRACE, RBRACE, COMMA, COLON, SEMICOLON, AT, UNDERSCORE, HASH, DOLLAR, QUESTION
    //line or block comment
    case COMMENT
}

class TokenData {
    var token: TOKEN;
    var value: String;
    
    init(_ token:TOKEN,_ value:String) {
        self.token = token;
        self.value = value;
    }
}

@objc class Lexer {
    
    var code: String;
    let cleanRegex = Regex("^[\\s\r\n]+");
    let identifierRegex = Regex("^[a-zA-Z_]+[\\w]*");
    
    //literal
    let binaryNumberRegex = Regex("^0b[01]+");
    let octalNumberRegex = Regex("^0o[0-7]+");
    let hexNumberRegex = Regex("^0x[\\da-f]+");
    let decimalNumberRegex = Regex("^\\d*\\.?\\d+(?:e[+-]?\\d+)?");
    
    let booleanRegex = Regex("^true|^false");
    let stringRegex = Regex("^\"[^\"]*(?:\\[\\s\\S][^\"]*)*\"");
    
    let lineCommentRegex = Regex("^//.*");
    let blockCommentRegex = Regex("^/[*].*?[*]/");
    
    let declarationKeywords = [
        "class":TOKEN.CLASS,
        "deinit":TOKEN.DEINIT,
        "enum":TOKEN.ENUM,
        "extension":TOKEN.EXTENSION,
        "func":TOKEN.FUNC,
        "import":TOKEN.IMPORT,
        "init":TOKEN.INIT,
        "let":TOKEN.LET,
        "protocol":TOKEN.PROTOCOL,
        "static":TOKEN.STATIC,
        "struct":TOKEN.STRUCT,
        "subscript":TOKEN.SUBSCRIPT,
        "typealias":TOKEN.TYPEALIAS,
        "var":TOKEN.VAR
    ];
    
    let statementKeywords = [
        "break":TOKEN.BREAK,
        "case":TOKEN.CASE,
        "continue":TOKEN.CONTINUE,
        "default":TOKEN.DEFAULT,
        "do":TOKEN.DO,
        "else":TOKEN.ELSE,
        "fallthrough":TOKEN.FALLTHROUGH,
        "if":TOKEN.IF,
        "in":TOKEN.IN,
        "for":TOKEN.FOR,
        "return":TOKEN.RETURN,
        "switch":TOKEN.SWITCH,
        "where":TOKEN.WHERE,
        "while":TOKEN.WHILE,
    ];
    
    let expressionKeywords = [
        "as":TOKEN.AS,
        "dynamictype":TOKEN.DYNAMICTYPE,
        "is":TOKEN.IS,
        "new":TOKEN.NEW,
        "super":TOKEN.SUPER,
        "self":TOKEN.SELF,
        "Self":TOKEN.SELF_CLASS,
        "Type":TOKEN.TYPE
    ];
    
    let particularKeywords = [
        "associativity":TOKEN.ASSOCIATIVITY,
        "didSet":TOKEN.DIDSET,
        "get":TOKEN.GET,
        "infix":TOKEN.INFIX,
        "inout":TOKEN.INOUT,
        "left":TOKEN.LEFT,
        "mutating":TOKEN.MUTATING,
        "none":TOKEN.NONE,
        "nonmutating":TOKEN.NONMUTATING,
        "operator":TOKEN.OPERATOR,
        "override":TOKEN.OVERRIDE,
        "postfix":TOKEN.POSTFIX,
        "precedence":TOKEN.PRECEDENCE,
        "prefix":TOKEN.PREFIX,
        "right":TOKEN.RIGHT,
        "set":TOKEN.SET,
        "unowned":TOKEN.UNOWNED,
        "unowned(safe)":TOKEN.UNOWNED_SAFE,
        "unowned(unsafe)":TOKEN.UNOWNED_UNSAFE,
        "weak":TOKEN.WEAK,
        "willSet":TOKEN.WILLSET,
    ];
    
    let operatorSymbols = [
        "/": TOKEN.SLASH,       "=": TOKEN.EQUAL,
        "-": TOKEN.MINUS,       "+": TOKEN.PLUS,
        "!": TOKEN.EXCLAMATION, "*": TOKEN.ASTERISK,
        "%": TOKEN.PERCENT,     "<": TOKEN.LT,
        ">": TOKEN.GT,          "&": TOKEN.AMPERSAND,
        "|": TOKEN.VERTICAL_BAR,"^": TOKEN.CARET,
        "~": TOKEN.TILDE,       ".": TOKEN.DOT,
    ];
    
    let grammarSymbols = [
        "(": TOKEN.LPAR,        ")": TOKEN.RPAR,
        "[": TOKEN.LBRACKET,    "]": TOKEN.RBRACKET,
        "{": TOKEN.LBRACE,      "}": TOKEN.RBRACE,
        ",": TOKEN.COMMA,       ":": TOKEN.COLON,
        ";": TOKEN.SEMICOLON,   "@": TOKEN.AT,
        "_": TOKEN.UNDERSCORE,  "#": TOKEN.HASH,
        "$": TOKEN.DOLLAR,      "?": TOKEN.QUESTION,
    ];
    
    init(_ sourceCode: String ){
        self.code = sourceCode;
    }
    
    func cleanCode() {
        if let match = cleanRegex.firstMatch(code) {
            code = code.substringFromIndex(match.utf16count);
        }
    }
    func nextToken() -> TokenData? {
        
        cleanCode(); //clean whitespaces
        
        //sorted token parser functions by precedence
        var checkFunctions = [
            checkIdentifier,
            checkNumberLiteral,
            checkStringLiteral,
            checkComment,
            checkOperator,
            checkGrammarSymbol
        ];
        
        
        var parsedToken: (consumed:Int, token:TokenData)?;
        
        //call parser functions until a token is found
        for checkFunc in checkFunctions {
            parsedToken = checkFunc();
            if (parsedToken) {
                break;
            }
        }
        
        //return the found token and erase the parsed source code
        if let foundToken = parsedToken {
            code = code.substringFromIndex(foundToken.consumed);
            
            if foundToken.token.token == .COMMENT {
                //for now comment tokens are ommited and not pased to the parsed
                return nextToken();
            }
            
            return foundToken.token;
        }
        else {
            
            if (code.utf16count > 0) {
                println("Error, unknown token: " + code);
            }
            
            return nil;
        }
    }
    
    //bridge function used by bison grammar
    func yylex()-> CInt {
        if let data = nextToken() {
            let number = data.token.toRaw() as NSNumber;
            return number.intValue;
        }
        return 0;
    }
    
    func checkIdentifier()-> (consumed:Int, token:TokenData)? {
        var match = identifierRegex.firstMatch(code);
        if !match {
            return nil;
        }
        var identifier = match!
        
        if let declarationToken = declarationKeywords[identifier] {
            return (identifier.utf16count, TokenData(declarationToken, identifier));
        }
        
        if let statementToken = statementKeywords[identifier] {
            return (identifier.utf16count, TokenData(statementToken, identifier));
        }
        
        if let expressionToken = expressionKeywords[identifier] {
            return (identifier.utf16count, TokenData(expressionToken, identifier));
        }
        
        if let particularToken = particularKeywords[identifier] {
            //TODO: These keywords are only reserved in particular contexts
            //but outside the context in which they appear in the grammar, they can be used as identifiers.
            return (identifier.utf16count, TokenData(particularToken, identifier));
        }
        
        if booleanRegex.test(identifier) {
            return (identifier.utf16count, TokenData(TOKEN.BOOLEAN_LITERAL, identifier));
        }
        
        //user defined identifier
        return (identifier.utf16count, TokenData(TOKEN.IDENTIFIER, identifier));
    }
    
    func checkNumberLiteral()-> (consumed:Int, token:TokenData)? {
        
        for regex in [binaryNumberRegex, octalNumberRegex, hexNumberRegex, decimalNumberRegex] {
            if let match = regex.firstMatch(code) {
                return (match.utf16count, TokenData(TOKEN.NUMBER_LITERAL, match));
            }
        }
        
        return nil;
    }
    
    func checkStringLiteral()-> (consumed:Int, token:TokenData)? {
        if let match = stringRegex.firstMatch(code) {
            return (match.utf16count, TokenData(TOKEN.STRING_LITERAL, match));
        }
        return nil;
    }
    
    func checkComment()-> (consumed:Int, token:TokenData)? {
        
        if let match = lineCommentRegex.firstMatch(code) {
            return (match.utf16count, TokenData(TOKEN.COMMENT, match));
        }
        else if let match = blockCommentRegex.firstMatch(code) {
            return (match.utf16count, TokenData(TOKEN.COMMENT, match));
        }
        else  {
            return nil;
        }
        
    }
    
    func checkOperator()-> (consumed:Int, token:TokenData)? {
        if (code.utf16count <= 0) {
            return nil;
        }
        
        let firstChar = code.substringToIndex(1);
        
        if let match = operatorSymbols[firstChar] {
            return (firstChar.utf16count, TokenData(match, firstChar));
        }
        
        return nil;
    }
    
    func checkGrammarSymbol()-> (consumed:Int, token:TokenData)? {
        if (code.utf16count <= 0) {
            return nil;
        }
        
        let firstChar = code.substringToIndex(1);
        
        if let match = grammarSymbols[firstChar] {
            return (firstChar.utf16count, TokenData(match, firstChar));
        }
        
        return nil;
    }
    
    //debug helper function
    func tokenToString(token: TOKEN) -> String {
        switch (token) {
            case .IDENTIFIER: return "ID";
            case .BOOLEAN_LITERAL: return "bool";
            case .STRING_LITERAL: return "string";
            case .BOOLEAN_LITERAL: return "bool";
            case .NUMBER_LITERAL: return "number";
            default: break;
        }
        
        let dics = [declarationKeywords, statementKeywords, expressionKeywords, expressionKeywords,
            particularKeywords, operatorSymbols, grammarSymbols
        ]
        
        for dic in dics {
            for (key, value) in dic {
                if value == token {
                    return key;
                }
            }
        }
        
        return "unkown";
    }
    
    //debug function
    func debugTokens() {
        let codeCopy = code;
        
        while let data = nextToken() {
            let tokenType = tokenToString(data.token);
            println("TOKEN code: \(String(data.token.toRaw())) type:\(tokenType) value:\(data.value)");
        }
        
        code = codeCopy;
    }

    
}
