//
//  main.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

func swift2js(sourceCode: String, debug:Bool) -> (js:String?, error:String?) {
    var lexer = Lexer(sourceCode);
    lexer.debugYYLex = debug;
    if debug {
        println()
        println("---------------------")
        println("Lexer Tokens Debug")
        println("---------------------")
        println()
        lexer.debugTokens();
        
        println()
        println("---------------------")
        println("AST Parser")
        println("---------------------")
        println()
    }
    
    var ast:ASTNode? = bridge_yyparse(lexer, debug ? 1 : 0);
    
    if let program = ast {
        return (program.toJS(),nil);
    }
    
    var error = NSString(UTF8String: bridge_yyerror());
    
    return ("", error);
}

let debug = true;
//Test files are copied automatically to tmp using xcode build phase
//TODO: read files from args, from input stream, etc.
let testFile = "test4.swift";

var sourceCode: AnyObject? = NSString(contentsOfFile: "/tmp/" + testFile, encoding: NSUTF8StringEncoding, error: nil);

if sourceCode != nil {
    
    let (js,error) = swift2js(sourceCode as NSString, debug);
    
    if let translation = js {
        if debug {
            println();
            println("---------------------")
            println("Transpiled JavaScript")
            println("---------------------")
            println();
        }
        println(translation);
    }
    
    if let parseError = error {
        println("Error: \(parseError)");
    }

}
else {
    println("File not found: \(testFile)");
}




