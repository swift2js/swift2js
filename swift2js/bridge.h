//
//  cliinput-Bridging-Header.h
//  swift2js
//
//  Created by Imanol Fernandez Gorostizaga on 16/06/14.
//  Copyright (c) 2014 swiftjs. All rights reserved.
//

@class Lexer;
@class ASTNode;
ASTNode* bridge_yyparse(Lexer * lexer, int debug);
const char * bridge_yyerror();