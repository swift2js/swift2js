//
//  main.swift
//  swift2js
//
//  Created by Imanol Fernandez @MortimerGoro on 14/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

import Foundation

func swift2js(sourceCode: String, debug:Bool) -> (js:String?, error:String?) {
    let lexer = Lexer(sourceCode);
    lexer.debugYYLex = debug;
    if debug {
        print("")
        print("---------------------")
        print("Lexer Tokens Debug")
        print("---------------------")
        print("")
        lexer.debugTokens();
        
        print("")
        print("---------------------")
        print("AST Parser")
        print("---------------------")
        print("")
    }
    
    let ast:ASTNode? = bridge_yyparse(lexer, debug ? 1 : 0);
    
    if let program = ast {
        return (program.toJS(),nil);
    }
    
    let error = NSString(UTF8String: bridge_yyerror());
    
    return ("", error as? String);
}

let debug = true;
//Test files are copied automatically to tmp using xcode build phase
//TODO: read files from args, from input stream, etc.
let testFile = "test1.swift";

var sourceCode: AnyObject? = try? NSString(contentsOfFile: "/tmp/" + testFile, encoding: NSUTF8StringEncoding);

if sourceCode != nil {
    
    let (js,error) = swift2js(sourceCode as! String, debug: debug);
    
    if let translation = js {
        if debug {
            print("");
            print("---------------------")
            print("Transpiled JavaScript")
            print("---------------------")
            print("");
        }
        print(translation);
    }
    
    if let parseError = error {
        print("Error: \(parseError)");
    }

}
else {
    print("File not found: \(testFile)");
}




