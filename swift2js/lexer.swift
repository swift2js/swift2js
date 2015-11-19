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
    case SLASH, EQUAL, MINUS, PLUS, EXCLAMATION, ASTERISK, PERCENT, LT, GT, AMPERSAND, OR, CARET, TILDE, DOT
    //combined operators == === ++ -- ... << >> && || ->
    //+= -= *= %= /= &= |= ^= ~=
    case EQUAL2, EQUAL3, PLUSPLUS, MINUSMINUS, DOT3, LT2, GT2, AMPERSAND2, OR2, ARROW
    case PLUS_EQ, MINUS_EQ, ASTERISK_EQ, SLASH_EQ, PERCENT_EQ, AMPERSAND_EQ, CARET_EQ, TILDE_EQ, OR_EQ
    //grammar symbols ( ) [ ] { } , : ; @ _ # $ ?
    case LPAR, RPAR, LBRACKET, RBRACKET, LBRACE, RBRACE, COMMA, COLON, SEMICOLON, AT, UNDERSCORE, HASH, DOLLAR, QUESTION
    //helper tokens to resolve operator ambiguities
    case PREFIX_OPERATOR, POSTFIX_OPERATOR
    //line or block comment
    case COMMENT
}

@objc class TokenData : NSObject {
    var token: TOKEN;
    var value: String;
    
    init(_ token:TOKEN,_ value:String) {
        self.token = token;
        self.value = value;
    }
}

@objc class Lexer : NSObject {
    
    var code: String;
    var lastParsed = "";
    var consumed = 0;
    var tokenStack:[TokenData] = [];
    var debugYYLex = false;
    
    let cleanRegex = Regex("^[\\s\r\n]+");
    let identifierRegex = Regex("^[a-zA-Z_]+[\\w]*");
    
    //literal
    let binaryNumberRegex = Regex("^0b[01]+");
    let octalNumberRegex = Regex("^0o[0-7]+");
    let hexNumberRegex = Regex("^0x[\\da-f]+");
    let decimalNumberRegex = Regex("^\\d+\\.?\\d*(?:e[+-]?\\d+)?");
    
    let booleanRegex = Regex("^true|^false");
    let stringRegex = Regex("^\"[^\"]*(?:\\[\\s\\S][^\"]*)*\"");
    
    let lineCommentRegex = Regex("^//.*");
    let blockCommentRegex = Regex("^/[*].*?[*]/");
    
    let prefixOperatorRegex = Regex("^[^\\s,:;\\{\\(\\[]+");
    let postfixOperatorRegex = Regex("[^\\s,:;\\)\\}\\]]+$");
    
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
        "|": TOKEN.OR,          "^": TOKEN.CARET,
        "~": TOKEN.TILDE,       ".": TOKEN.DOT,
        //combined
        "==": TOKEN.EQUAL2,     "===": TOKEN.EQUAL3,
        "++": TOKEN.PLUSPLUS,   "--": TOKEN.MINUSMINUS,
        "...":TOKEN.DOT3,       "->": TOKEN.ARROW,
        "<<": TOKEN.LT2,        ">>": TOKEN.GT2,
        "&&": TOKEN.AMPERSAND2, "||": TOKEN.OR2,
        "+=": TOKEN.PLUS_EQ,    "-=": TOKEN.MINUS_EQ,
        "*=": TOKEN.ASTERISK_EQ, "%=": TOKEN.PERCENT_EQ,
        "/=": TOKEN.SLASH_EQ,   "|=": TOKEN.OR_EQ,
        "&=": TOKEN.AMPERSAND_EQ, "^=": TOKEN.CARET_EQ,
        "~=": TOKEN.TILDE_EQ,
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
            code = code.substringFromIndex(match.utf16.count);
            lastParsed = match;
        }
    }
    func nextToken() -> TokenData? {
        
        if tokenStack.count == 0 {
            
            cleanCode(); //clean whitespaces
            
            //sorted token parser functions by precedence
            let checkFunctions = [
                checkIdentifier,
                checkNumberLiteral,
                checkStringLiteral,
                checkComment,
                checkOperator,
                checkGrammarSymbol
            ];
            
            
            //var parsedToken: (consumed:Int, token:TokenData)?;
            
            //call parser functions until a token is found
            for checkFunc in checkFunctions {
                checkFunc();
                if (consumed > 0) {
                    lastParsed = code.substringToIndex(consumed);
                    code = code.substringFromIndex(consumed);
                    consumed = 0;
                }
                if (tokenStack.count > 0) {
                    break;
                }
            }
        }
        
        //return the found token and erase the parsed source code
        if tokenStack.count  > 0 {
            let foundToken = tokenStack.removeAtIndex(0);
            
            if foundToken.token == .COMMENT {
                //for now comment tokens are ommited and not pased to the parsed
                return nextToken();
            }
            
            return foundToken;
        }
        else {
            
            if (code.utf16.count > 0) {
                print("Lexer Error, unknown token: " + code);
            }
            
            return nil;
        }
    }
    
    //bridge function used by bison grammar
    var lastyylexToken: TokenData?;
    func yylex()-> CInt {
        lastyylexToken = nextToken();
        if let data = lastyylexToken {
            let number = data.token.rawValue as NSNumber;
            if debugYYLex {
                print("yylex: \(tokenToString(data.token))")
            }
            return number.intValue;
        }
        return 0;
    }

    func yylexstr()-> String {
        if let data = lastyylexToken {
            return data.value;
        }
        return "";
    }
    
    func checkIdentifier() {
        let match = identifierRegex.firstMatch(code);
        if match == nil {
            return;
        }
        let identifier = match!
        consumed += identifier.utf16.count
        
        if let declarationToken = declarationKeywords[identifier] {
            tokenStack.append(TokenData(declarationToken, identifier))
        }
        else if let statementToken = statementKeywords[identifier] {
            tokenStack.append(TokenData(statementToken, identifier))
        }
        else if let expressionToken = expressionKeywords[identifier] {
            tokenStack.append(TokenData(expressionToken, identifier))
        }
        else if let particularToken = particularKeywords[identifier] {
            //TODO: These keywords are only reserved in particular contexts
            //but outside the context in which they appear in the grammar, they can be used as identifiers.
            tokenStack.append(TokenData(particularToken, identifier))
        }
        else if booleanRegex.test(identifier) {
            tokenStack.append(TokenData(TOKEN.BOOLEAN_LITERAL, identifier))
        }
        else {
            //user defined identifier
            tokenStack.append(TokenData(TOKEN.IDENTIFIER, identifier))
        }
    }
    
    func checkNumberLiteral(){
        for regex in [binaryNumberRegex, octalNumberRegex, hexNumberRegex, decimalNumberRegex] {
            if let match = regex.firstMatch(code) {
                consumed += match.utf16.count
                tokenStack.append(TokenData(TOKEN.NUMBER_LITERAL, match))
                return;
            }
        }
    }
    
    func checkStringLiteral() {
        if let match = stringRegex.firstMatch(code) {
            consumed += match.utf16.count
            tokenStack.append(TokenData(TOKEN.STRING_LITERAL, match))
        }
    }
    
    func checkComment() {
        
        if let match = lineCommentRegex.firstMatch(code) {
            consumed += match.utf16.count
            tokenStack.append(TokenData(TOKEN.COMMENT, match));
        }
        else if let match = blockCommentRegex.firstMatch(code) {
            consumed += match.utf16.count
            tokenStack.append(TokenData(TOKEN.COMMENT, match));
        }
    }
    
    func checkOperator() {
        
        var found:TOKEN?;
        var value = "";
        //check operators by precedence (test combined operators first)
        for var i = 3; i > 0; --i {
            if code.utf16.count < i {
                continue
            }
            value = code.substringToIndex(i)
            if let match = operatorSymbols[value] {
                found = match
                break
            }
        }
        
        if let token = found {
            consumed += value.utf16.count
            //check if the operator is prefix, postfix or binary
            let prefix = prefixOperatorRegex.test(code.substringFromIndex(value.utf16.count))
            let postfix = postfixOperatorRegex.test(lastParsed)
            
            if (prefix == postfix) {
                //If an operator has whitespace around both sides or around neither side, 
                //it is treated as a binary operator
                tokenStack.append(TokenData(token, value));
            }
            else if (prefix) {
                //prefix unary operator
                tokenStack.append(TokenData(TOKEN.PREFIX_OPERATOR, ""));
                tokenStack.append(TokenData(token, value));
            }
            else if (postfix) {
                //postfix unary operator
                tokenStack.append(TokenData(TOKEN.POSTFIX_OPERATOR, ""));
                tokenStack.append(TokenData(token, value));
            }
        }
    }
    
    func checkGrammarSymbol(){
        if (code.utf16.count <= 0) {
            return
        }
        
        let firstChar = code.substringToIndex(1);
        
        if let match = grammarSymbols[firstChar] {
            consumed += firstChar.utf16.count
            tokenStack.append(TokenData(match, firstChar))
        }
    }
    
    //debug helper function
    func tokenToString(token: TOKEN) -> String {
        switch (token) {
            case .IDENTIFIER: return "ID";
            case .BOOLEAN_LITERAL: return "bool";
            case .STRING_LITERAL: return "string";
            case .NUMBER_LITERAL: return "number";
            case .PREFIX_OPERATOR: return "prefix_op";
            case .POSTFIX_OPERATOR: return "postfix_op";
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
            print("TOKEN code: \(String(data.token.rawValue)) type:\(tokenType) value:\(data.value)");
        }
        
        code = codeCopy;
    }
    
    //helper function to generate bison tokens
    func bisonTokens() {
        
        //autogenerated values from text editor
        let values = [
                "IDENTIFIER",
                "CLASS",
                "DEINIT",
                "ENUM",
                "EXTENSION",
                "FUNC",
                "IMPORT",
                "INIT",
                "LET",
                "PROTOCOL",
                "STATIC",
                "STRUCT",
                "SUBSCRIPT",
                "TYPEALIAS",
                "VAR",
                "BREAK",
                "CASE",
                "CONTINUE",
                "DEFAULT",
                "DO",
                "ELSE",
                "FALLTHROUGH",
                "IF",
                "IN",
                "FOR",
                "RETURN",
                "SWITCH",
                "WHERE",
                "WHILE",
                "AS",
                "DYNAMICTYPE",
                "IS",
                "NEW",
                "SUPER",
                "SELF",
                "SELF_CLASS",
                "TYPE",
                "ASSOCIATIVITY",
                "DIDSET",
                "GET",
                "INFIX",
                "INOUT",
                "LEFT",
                "MUTATING",
                "NONE",
                "NONMUTATING",
                "OPERATOR",
                "OVERRIDE",
                "POSTFIX",
                "PRECEDENCE",
                "PREFIX",
                "RIGHT",
                "SET",
                "UNOWNED",
                "UNOWNED_SAFE",
                "UNOWNED_UNSAFE",
                "WEAK","WILLSET",
                "NUMBER_LITERAL",
                "STRING_LITERAL",
                "BOOLEAN_LITERAL",
                "SLASH",
                "EQUAL",
                "MINUS",
                "PLUS",
                "EXCLAMATION",
                "ASTERISK",
                "PERCENT",
                "LT",
                "GT",
                "AMPERSAND",
                "OR",
                "CARET",
                "TILDE",
                "DOT",
                "EQUAL2",
                "EQUAL3",
                "PLUSPLUS",
                "MINUSMINUS",
                "DOT3",
                "LT2",
                "GT2",
                "AMPERSAND2",
                "OR2",
                "ARROW",
                "PLUS_EQ",
                "MINUS_EQ",
                "ASTERISK_EQ",
                "SLASH_EQ",
                "PERCENT_EQ",
                "AMPERSAND_EQ",
                "CARET_EQ",
                "TILDE_EQ",
                "OR_EQ",
                "LPAR",
                "RPAR",
                "LBRACKET",
                "RBRACKET",
                "LBRACE",
                "RBRACE",
                "COMMA",
                "COLON",
                "SEMICOLON",
                "AT",
                "UNDERSCORE",
                "HASH",
                "DOLLAR",
                "QUESTION",
                "PREFIX_OPERATOR",
                "POSTFIX_OPERATOR",
                "COMMENT"
            ];
        
        var index = 1;
        for _ in values {
            
            let token = TOKEN(rawValue:index)!
            let str = tokenToString(token)
            
            print("%token <val> \(values[index-1]) \(String(index)) \"\(str)\"")

            index++
        }
    }

    
}
