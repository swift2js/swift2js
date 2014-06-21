//
//  main.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

let testFile = "test2.swift";
//test objects are copied automatically to tmp using scode build phase
//TODO: read files from args, from input stream, etc.

var sourceCode = NSString.stringWithContentsOfFile("/tmp/" + testFile);

//println(sourceCode);
var lexer = Lexer(sourceCode as String);
lexer.debugTokens();
//lexer.bisonTokens();

var ast:ASTNode? = bridge_yyparse(lexer);

if let program = ast {
    
    println();
    println("--------------------")
    println("Transpiled JavaScript")
    println("--------------------")
    println();
    println(program.toJS());
}



