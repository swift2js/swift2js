%{
    #include <iostream>
    @class NSArray;
    #include <Foundation/NSString.h>
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();
    static ASTNode * ast = NULL;
    
    inline NSString * toSwift(const char * c) {
        return c ? [NSString stringWithUTF8String:c] : nil;
    }
    
    static bool debugRules = false;
    
    #define LOG(...) if (debugRules)printf(__VA_ARGS__);
    
    union YYSTYPE;
    static ASTNode * statementsMerge(YYSTYPE & a, YYSTYPE & b);
%}

%glr-parser
%error-verbose
%debug

%union {
    ASTNode * node;
    char *    str;
    GenericType * type;
}

%token <str> identifier 1 "ID"
%token <str> CLASS 2 "class"
%token <str> DEINIT 3 "deinit"
%token <str> ENUM 4 "enum"
%token <str> EXTENSION 5 "extension"
%token <str> FUNC 6 "func"
%token <str> IMPORT 7 "import"
%token <str> INIT 8 "init"
%token <str> LET 9 "let"
%token <str> PROTOCOL 10 "protocol"
%token <str> STATIC 11 "static"
%token <str> STRUCT 12 "struct"
%token <str> SUBSCRIPT 13 "subscript"
%token <str> TYPEALIAS 14 "typealias"
%token <str> VAR 15 "var"
%token <str> BREAK 16 "break"
%token <str> CASE 17 "case"
%token <str> CONTINUE 18 "continue"
%token <str> DEFAULT 19 "default"
%token <str> DO 20 "do"
%token <str> ELSE 21 "else"
%token <str> FALLTHROUGH 22 "fallthrough"
%token <str> IF 23 "if"
%token <str> IN 24 "in"
%token <str> FOR 25 "for"
%token <str> RETURN 26 "return"
%token <str> SWITCH 27 "switch"
%token <str> WHERE 28 "where"
%token <str> WHILE 29 "while"
%token <str> AS 30 "as"
%token <str> DYNAMICTYPE 31 "dynamictype"
%token <str> IS 32 "is"
%token <str> NEW 33 "new"
%token <str> SUPER 34 "super"
%token <str> SELF 35 "self"
%token <str> SELF_CLASS 36 "Self"
%token <str> TYPE 37 "Type"
%token <str> ASSOCIATIVITY 38 "associativity"
%token <str> DIDSET 39 "didSet"
%token <str> GET 40 "get"
%token <str> INFIX 41 "infix"
%token <str> INOUT 42 "inout"
%token <str> LEFT 43 "left"
%token <str> MUTATING 44 "mutating"
%token <str> NONE 45 "none"
%token <str> NONMUTATING 46 "nonmutating"
%token <str> OPERATOR 47 "operator"
%token <str> OVERRIDE 48 "override"
%token <str> POSTFIX 49 "postfix"
%token <str> PRECEDENCE 50 "precedence"
%token <str> PREFIX 51 "prefix"
%token <str> RIGHT 52 "right"
%token <str> SET 53 "set"
%token <str> UNOWNED 54 "unowned"
%token <str> UNOWNED_SAFE 55 "unowned(safe)"
%token <str> UNOWNED_UNSAFE 56 "unowned(unsafe)"
%token <str> WEAK 57 "weak"
%token <str> WILLSET 58 "willSet"
%token <str> NUMBER_LITERAL 59 "number"
%token <str> STRING_LITERAL 60 "string"
%token <str> BOOLEAN_LITERAL 61 "bool"
%token <str> SLASH 62 "/"
%token <str> EQUAL 63 "="
%token <str> MINUS 64 "-"
%token <str> PLUS 65 "+"
%token <str> EXCLAMATION 66 "!"
%token <str> ASTERISK 67 "*"
%token <str> PERCENT 68 "%"
%token <str> LT 69 "<"
%token <str> GT 70 ">"
%token <str> AMPERSAND 71 "&"
%token <str> OR 72 "|"
%token <str> CARET 73 "^"
%token <str> TILDE 74 "~"
%token <str> DOT 75 "."
%token <str> EQUAL2 76 "=="
%token <str> EQUAL3 77 "==="
%token <str> PLUSPLUS 78 "++"
%token <str> MINUSMINUS 79 "--"
%token <str> DOT3 80 "..."
%token <str> LT2 81 "<<"
%token <str> GT2 82 ">>"
%token <str> AMPERSAND2 83 "&&"
%token <str> OR2 84 "||"
%token <str> ARROW 85 "->"
%token <str> PLUS_EQ 86 "+="
%token <str> MINUS_EQ 87 "-="
%token <str> ASTERISK_EQ 88 "*="
%token <str> SLASH_EQ 89 "/="
%token <str> PERCENT_EQ 90 "%="
%token <str> AMPERSAND_EQ 91 "&="
%token <str> CARET_EQ 92 "^="
%token <str> TILDE_EQ 93 "~="
%token <str> OR_EQ 94 "|="
%token <str> LPAR 95 "("
%token <str> RPAR 96 ")"
%token <str> LBRACKET 97 "["
%token <str> RBRACKET 98 "]"
%token <str> LBRACE 99 "{"
%token <str> RBRACE 100 "}"
%token <str> COMMA 101 ","
%token <str> COLON 102 ":"
%token <str> SEMICOLON 103 ";"
%token <str> AT 104 "@"
%token <str> UNDERSCORE 105 "_"
%token <str> HASH 106 "#"
%token <str> DOLLAR 107 "$"
%token <str> QUESTION 108 "?"
%token <str> PREFIX_OPERATOR 109 "prefix_op"
%token <str> POSTFIX_OPERATOR 110 "postfix_op"

%type <node> statement
%type <node> statements
%type <node> loop_statement
%type <node> for_statement
%type <node> for_init_opt
%type <node> expression_opt
%type <node> for_init
%type <node> for_in_statement
%type <node> while_statement
%type <node> while_condition
%type <node> do_while_statement
%type <node> branch_statement
%type <node> if_statement
%type <node> else_clause_opt
%type <node> if_condition
%type <node> else_clause
%type <node> switch_statement
%type <node> switch_cases_opt
%type <node> switch_cases
%type <node> switch_case
%type <node> case_label
%type <node> case_item_list
%type <node> guard_clause_opt
%type <node> default_label
%type <node> guard_clause
%type <node> guard_expression
%type <node> labeled_statement
%type <str> statement_label
%type <str> label_name
%type <node> control_transfer_statement
%type <node> break_statement
%type <str> label_name_opt
%type <node> continue_statement
%type <node> fallthrough_statement
%type <node> return_statement
%type <node> generic_parameter_clause
%type <node> requirement_clause_opt
%type <node> generic_parameter_list
%type <node> generic_parameter
%type <node> requirement_clause
%type <node> requirement_list
%type <node> requirement
%type <node> conformance_requirement
%type <node> same_type_requirement
%type <node> generic_argument_clause
%type <node> generic_argument_list
%type <node> generic_argument
%type <node> declaration
%type <node> declarations
%type <node> declarations_opt
%type <node> declaration_specifiers
%type <node> declaration_specifiers_opt
%type <node> declaration_specifier
%type <node> code_block
%type <node> import_declaration
%type <node> attributes_opt
%type <node> import_kind_opt
%type <node> import_kind
%type <str> import_path
%type <str> import_path_identifier
%type <node> constant_declaration
%type <node> pattern_initializer_list
%type <node> pattern_initializer
%type <node> initializer_opt
%type <node> initializer
%type <node> variable_declaration
%type <node> variable_declaration_head
%type <node> variable_name
%type <node> getter_setter_block
%type <node> setter_clause_opt
%type <node> getter_clause
%type <node> setter_clause
%type <node> setter_name_opt
%type <node> setter_name
%type <node> getter_setter_keyword_block
%type <node> setter_keyword_clause_opt
%type <node> getter_keyword_clause
%type <node> setter_keyword_clause
%type <node> willSet_didSet_block
%type <node> didSet_clause_opt
%type <node> willSet_clause
%type <node> didSet_clause
%type <node> typealias_declaration
%type <node> typealias_head
%type <node> typealias_name
%type <node> typealias_assignment
%type <node> function_declaration
%type <node> generic_parameter_clause_opt
%type <node> function_head
%type <str> function_name
%type <node> function_signature
%type <node> function_result_opt
%type <node> function_result
%type <node> function_body
%type <node> parameter_clauses
%type <node> parameter_clauses_opt
%type <node> parameter_clause
%type <node> tripledot_opt
%type <node> parameter_list
%type <node> parameter
%type <node> inout_opt
%type <node> let_opt
%type <node> hash_opt
%type <str> local_parameter_name_opt
%type <node> default_argument_clause_opt
%type <str> parameter_name
%type <str> local_parameter_name
%type <node> default_argument_clause
%type <node> enum_declaration
%type <node> union_style_enum
%type <node> union_style_enum_members_opt
%type <node> union_style_enum_members
%type <node> union_style_enum_member
%type <node> union_style_enum_case_clause
%type <node> union_style_enum_case_list
%type <node> union_style_enum_case
%type <type> tuple_type_opt
%type <node> enum_name
%type <node> enum_case_name
%type <node> raw_value_style_enum
%type <node> raw_value_style_enum_members_opt
%type <node> raw_value_style_enum_members
%type <node> raw_value_style_enum_member
%type <node> raw_value_style_enum_case_clause
%type <node> raw_value_style_enum_case_list
%type <node> raw_value_style_enum_case
%type <node> raw_value_assignment_opt
%type <node> raw_value_assignment
%type <node> struct_declaration
%type <node> type_inheritance_clause_opt
%type <node> struct_name
%type <node> struct_body
%type <node> class_declaration
%type <node> class_name
%type <node> class_body
%type <node> protocol_declaration
%type <node> protocol_name
%type <node> protocol_body
%type <node> protocol_member_declarations_opt
%type <node> protocol_member_declaration
%type <node> protocol_member_declarations
%type <node> protocol_property_declaration
%type <node> protocol_method_declaration
%type <node> protocol_initializer_declaration
%type <node> protocol_subscript_declaration
%type <node> protocol_associated_type_declaration
%type <node> typealias_assignment_opt
%type <node> initializer_declaration
%type <node> initializer_head
%type <node> convenience_opt
%type <node> initializer_body
%type <node> deinitializer_declaration
%type <node> extension_declaration
%type <node> extension_body
%type <node> subscript_declaration
%type <node> subscript_head
%type <node> subscript_result
%type <node> operator_declaration
%type <node> prefix_operator_declaration
%type <node> postfix_operator_declaration
%type <node> infix_operator_declaration
%type <node> infix_operator_attributes_opt
%type <node> infix_operator_attributes
%type <node> precedence_clause_opt
%type <node> associativity_clause_opt
%type <node> precedence_clause
%type <node> precedence_level
%type <node> associativity_clause
%type <node> associativity
%type <node> pattern
%type <type> type_annotation_opt
%type <node> wildcard_pattern
%type <str> identifier_pattern
%type <node> value_binding_pattern
%type <node> tuple_pattern
%type <node> tuple_pattern_element_list_opt
%type <node> tuple_pattern_element_list
%type <node> tuple_pattern_element
%type <node> enum_case_pattern
%type <type> type_identifier_opt
%type <node> tuple_pattern_opt
%type <node> type_casting_pattern
%type <node> is_pattern
%type <node> as_pattern
%type <node> expression_pattern
%type <node> attribute
%type <node> attribute_argument_clause_opt
%type <node> attribute_name
%type <node> attribute_argument_clause
%type <node> balanced_tokens_opt
%type <node> attributes
%type <node> balanced_tokens
%type <node> balanced_token
%type <node> expression
%type <node> expression_list
%type <node> prefix_expression
%type <str> prefix_operator_opt
%type <node> in_out_expression
%type <node> binary_expression
%type <node> binary_expressions
%type <node> type_casting_operator
%type <node> question_opt
%type <node> primary_expression
%type <node> generic_argument_clause_opt
%type <node> literal_expression
%type <node> array_literal
%type <node> array_literal_items_opt
%type <node> array_literal_items
%type <node> comma_opt
%type <node> array_literal_item
%type <node> dictionary_literal
%type <node> dictionary_literal_items
%type <node> dictionary_literal_item
%type <node> self_expression
%type <node> superclass_expression
%type <node> superclass_method_expression
%type <node> superclass_subscript_expression
%type <node> superclass_initializer_expression
%type <node> closure_expression
%type <node> closure_signature_opt
%type <node> closure_signature
%type <node> capture_list
%type <node> capture_specifier
%type <node> implicit_member_expression
%type <node> parenthesized_expression
%type <node> expression_element_list_opt
%type <node> expression_element_list
%type <node> expression_element
%type <node> wildcard_expression
%type <node> postfix_expression
%type <node> function_call_expression
%type <node> parenthesized_expression_opt
%type <node> trailing_closure
%type <node> initializer_expression
%type <node> explicit_member_expression
%type <node> postfix_self_expression
%type <node> dynamic_type_expression
%type <node> subscript_expression
%type <node> forced_value_expression
%type <node> optional_chaining_expression
%type <str> literal
%type <str> operator
%type <str> binary_operator
%type <str> prefix_operator
%type <str> postfix_operator
%type <type> type
%type <type> type_annotation
%type <type> type_identifier
%type <str> type_name
%type <type> tuple_type
%type <node> tuple_type_body_opt
%type <node> tuple_type_body
%type <node> tuple_type_element_list
%type <node> tuple_type_element
%type <str> element_name
%type <type> function_type
%type <type> array_type
%type <type> optional_type
%type <type> implicitly_unwrapped_optional_type
%type <type> protocol_composition_type
%type <node> protocol_identifier_list_opt
%type <node> protocol_identifier_list
%type <node> protocol_identifier
%type <type> metatype_type
%type <node> type_inheritance_clause
%type <node> type_inheritance_list

%%

/******* STATEMENTS *******/

program: statements {ast = $1;}

/******* STATEMENTS *******/


// GRAMMAR OF A STATEMENT

statement :  expression semicolon_opt		 { $$ = [[StatementNode alloc] initWithStatement:$1]; LOG("statement (0)\n"); }
semicolon_opt: {} | ";"		 { LOG("semicolon_opt\n"); }
statement :  declaration semicolon_opt		 { $$ = [[DeclarationStatement alloc] initWithDeclaration:$1]; LOG("statement (0)\n"); }
statement :  loop_statement semicolon_opt		 { LOG("statement (0)\n"); }
statement :  branch_statement semicolon_opt		 { LOG("statement (0)\n"); }
statement :  labeled_statement		 { LOG("statement (0)\n"); }
statement :  control_transfer_statement semicolon_opt		 { LOG("statement (0)\n"); }
statements :  statement %merge <statementsMerge> {$$ = [[StatementsNode alloc] initWithCurrent:$1]; }
|  statement statements %merge <statementsMerge> {$$ = [[StatementsNode alloc] initWithCurrent:$1 next:(StatementsNode*)$2]; }

// GRAMMAR OF A LOOP STATEMENT

loop_statement :  for_statement		 { LOG("loop_statement (0)\n"); }
loop_statement :  for_in_statement		 { LOG("loop_statement (0)\n"); }
loop_statement :  while_statement		 { LOG("loop_statement (0)\n"); }
loop_statement :  do_while_statement		 { LOG("loop_statement (0)\n"); }

// GRAMMAR OF A FOR STATEMENT

for_statement :  "for" for_init_opt ";" expression_opt ";" expression_opt code_block		 { LOG("for_statement (0)\n"); }
for_init_opt: {} | for_init		 { LOG("for_init_opt\n"); }
expression_opt: {} | expression		 { LOG("expression_opt\n"); }
for_statement :  "for" "(" for_init_opt ";" expression_opt ";" expression_opt ")" code_block		 { LOG("for_statement (0)\n"); }
for_init :  variable_declaration		 { LOG("for_init (0)\n"); }
| expression_list		 { LOG("for_init (1)\n"); }

// GRAMMAR OF A FOR_IN STATEMENT

for_in_statement :  "for" pattern "in" expression code_block		 { LOG("for_in_statement (0)\n"); }

// GRAMMAR OF A WHILE STATEMENT

while_statement :  "while" while_condition code_block		 { $$ = [[WhileStatement alloc] initWithWhileCondition:$2 codeBlock:$3]; LOG("while_statement (0)\n"); }
while_condition :  expression		 { LOG("while_condition (0)\n"); }
| declaration		 { LOG("while_condition (1)\n"); }

// GRAMMAR OF A DO_WHILE STATEMENT

do_while_statement :  "do" code_block "while" while_condition		 { LOG("do_while_statement (0)\n"); }

// GRAMMAR OF A BRANCH STATEMENT

branch_statement :  if_statement		 { LOG("branch_statement (0)\n"); }
branch_statement :  switch_statement		 { LOG("branch_statement (0)\n"); }

// GRAMMAR OF AN IF STATEMENT

if_statement :  "if" if_condition code_block else_clause_opt		 {$$ = [[IfStatement alloc] initWithIfCondition:$2 body:$3 elseClause:$4]; LOG("if_statement (0)\n"); }
else_clause_opt: {} | else_clause		 { LOG("else_clause_opt\n"); }
if_condition :  expression		 { LOG("if_condition (0)\n"); }
| declaration		 { LOG("if_condition (1)\n"); }
else_clause :  "else" code_block		 {$$ = $2; LOG("else_clause (0)\n"); }
| "else" if_statement		 {$$ = $2; LOG("else_clause (1)\n"); }

// GRAMMAR OF A SWITCH STATEMENT

switch_statement :  "switch" expression "{" switch_cases_opt "}"		 { LOG("switch_statement (0)\n"); }
switch_cases_opt: {} | switch_cases		 { LOG("switch_cases_opt\n"); }
switch_cases :  switch_case switch_cases_opt		 { LOG("switch_cases (0)\n"); }
switch_case :  case_label statements		 { LOG("switch_case (0)\n"); }
| default_label statements		 { LOG("switch_case (1)\n"); }
switch_case :  case_label ";"		 { LOG("switch_case (0)\n"); }
| default_label ";"		 { LOG("switch_case (1)\n"); }
case_label :  "case" case_item_list ":"		 { LOG("case_label (0)\n"); }
case_item_list :  pattern guard_clause_opt		 { LOG("case_item_list (0)\n"); }
| pattern guard_clause_opt "," case_item_list		 { LOG("case_item_list (1)\n"); }
guard_clause_opt: {} | guard_clause		 { LOG("guard_clause_opt\n"); }
default_label :  "default" ":"		 { LOG("default_label (0)\n"); }
guard_clause :  "where" guard_expression		 { LOG("guard_clause (0)\n"); }
guard_expression :  expression		 { LOG("guard_expression (0)\n"); }

// GRAMMAR OF A LABELED STATEMENT

labeled_statement :  statement_label loop_statement		 { $$ = [[LabelStatement alloc] initWithLabelName:toSwift($1) loop:$2]; LOG("labeled_statement (0)\n"); }
| statement_label switch_statement		 { $$ = NULL; LOG("labeled_statement (1)\n"); }
statement_label :  label_name ":"		 { LOG("statement_label (0)\n"); }
label_name :  identifier		 { LOG("label_name (0)\n"); }

// GRAMMAR OF A CONTROL TRANSFER STATEMENT

control_transfer_statement :  break_statement		 { LOG("control_transfer_statement (0)\n"); }
control_transfer_statement :  continue_statement		 { LOG("control_transfer_statement (0)\n"); }
control_transfer_statement :  fallthrough_statement		 { LOG("control_transfer_statement (0)\n"); }
control_transfer_statement :  return_statement		 { LOG("control_transfer_statement (0)\n"); }

// GRAMMAR OF A BREAK STATEMENT

break_statement :  "break" label_name_opt		 {$$ = [[BreakStatement alloc] initWithLabelId:toSwift($2)]; LOG("break_statement (0)\n"); }
label_name_opt: {} | label_name		 {  LOG("label_name_opt\n"); }

// GRAMMAR OF A CONTINUE STATEMENT

continue_statement :  "continue" label_name_opt		 { LOG("continue_statement (0)\n"); }

// GRAMMAR OF A FALLTHROUGH STATEMENT

fallthrough_statement :  "fallthrough"		 { LOG("fallthrough_statement (0)\n"); }

// GRAMMAR OF A RETURN STATEMENT

return_statement :  "return" expression_opt		 {$$ = [[ReturnStatement alloc] initWithReturnExpr:$2]; LOG("return_statement (0)\n"); }

/******* GENERIC PARAMETERS AND ARGUMENTS *******/


// GRAMMAR OF A GENERIC PARAMETER CLAUSE

generic_parameter_clause :  "<" generic_parameter_list requirement_clause_opt ">"		 { LOG("generic_parameter_clause (0)\n"); }
requirement_clause_opt: {} | requirement_clause		 { LOG("requirement_clause_opt\n"); }
generic_parameter_list :  generic_parameter		 { LOG("generic_parameter_list (0)\n"); }
| generic_parameter "," generic_parameter_list		 { LOG("generic_parameter_list (1)\n"); }
generic_parameter :  type_name		 { LOG("generic_parameter (0)\n"); }
generic_parameter :  type_name ":" type_identifier		 { LOG("generic_parameter (0)\n"); }
generic_parameter :  type_name ":" protocol_composition_type		 { LOG("generic_parameter (0)\n"); }
requirement_clause :  "where" requirement_list		 { LOG("requirement_clause (0)\n"); }
requirement_list :  requirement		 { LOG("requirement_list (0)\n"); }
| requirement "," requirement_list		 { LOG("requirement_list (1)\n"); }
requirement :  conformance_requirement		 { LOG("requirement (0)\n"); }
| same_type_requirement		 { LOG("requirement (1)\n"); }
conformance_requirement :  type_identifier ":" type_identifier		 { LOG("conformance_requirement (0)\n"); }
conformance_requirement :  type_identifier ":" protocol_composition_type		 { LOG("conformance_requirement (0)\n"); }
same_type_requirement :  type_identifier "==" type_identifier		 { LOG("same_type_requirement (0)\n"); }

// GRAMMAR OF A GENERIC ARGUMENT CLAUSE

generic_argument_clause :  "<" generic_argument_list ">"		 { LOG("generic_argument_clause (0)\n"); }
generic_argument_list :  generic_argument		 { LOG("generic_argument_list (0)\n"); }
| generic_argument "," generic_argument_list		 { LOG("generic_argument_list (1)\n"); }
generic_argument :  type		 { LOG("generic_argument (0)\n"); }

/******* DECLARATIONS *******/


// GRAMMAR OF A DECLARATION

declaration :  import_declaration		 { LOG("declaration (0)\n"); }
declaration :  constant_declaration		 { LOG("declaration (0)\n"); }
declaration :  variable_declaration		 { LOG("declaration (0)\n"); }
declaration :  typealias_declaration		 { LOG("declaration (0)\n"); }
declaration :  function_declaration		 { LOG("declaration (0)\n"); }
declaration :  enum_declaration		 { LOG("declaration (0)\n"); }
declaration :  struct_declaration		 { LOG("declaration (0)\n"); }
declaration :  class_declaration		 { LOG("declaration (0)\n"); }
declaration :  protocol_declaration		 { LOG("declaration (0)\n"); }
declaration :  initializer_declaration		 { LOG("declaration (0)\n"); }
declaration :  deinitializer_declaration		 { LOG("declaration (0)\n"); }
declaration :  extension_declaration		 { LOG("declaration (0)\n"); }
declaration :  subscript_declaration		 { LOG("declaration (0)\n"); }
declaration :  operator_declaration		 { LOG("declaration (0)\n"); }
declarations :  declaration declarations_opt		 { LOG("declarations (0)\n"); }
declarations_opt: {} | declarations		 { LOG("declarations_opt\n"); }
declaration_specifiers :  declaration_specifier declaration_specifiers_opt		 { LOG("declaration_specifiers (0)\n"); }
declaration_specifiers_opt: {} | declaration_specifiers		 { LOG("declaration_specifiers_opt\n"); }
declaration_specifier :  "class"		 { LOG("declaration_specifier (0)\n"); }
| "mutating"		 { LOG("declaration_specifier (1)\n"); }
| "nonmutating"		 { LOG("declaration_specifier (2)\n"); }
| "override"		 { LOG("declaration_specifier (3)\n"); }
| "static"		 { LOG("declaration_specifier (4)\n"); }
| "unowned"		 { LOG("declaration_specifier (5)\n"); }
| "unowned(safe)"		 { LOG("declaration_specifier (6)\n"); }
| "unowned(unsafe)"		 { LOG("declaration_specifier (7)\n"); }
| "weak"		 { LOG("declaration_specifier (8)\n"); }

// GRAMMAR OF A CODE BLOCK

code_block :  "{" statements "}"		 {$$ = $2; LOG("code_block (0)\n"); }
| "{" "}"		 { $$ = NULL; LOG("code_block (1)\n"); }

// GRAMMAR OF AN IMPORT DECLARATION

import_declaration :  attributes_opt "import" import_kind_opt import_path		 { $$ = [[ImportStatement alloc] initWithPath:toSwift($4)]; LOG("import_declaration (0)\n"); }
attributes_opt: {} | attributes		 { LOG("attributes_opt\n"); }
import_kind_opt: {} | import_kind		 { LOG("import_kind_opt\n"); }
import_kind :  "typealias"		 { LOG("import_kind (0)\n"); }
| "struct"		 { LOG("import_kind (1)\n"); }
| "class"		 { LOG("import_kind (2)\n"); }
| "enum"		 { LOG("import_kind (3)\n"); }
| "protocol"		 { LOG("import_kind (4)\n"); }
| "var"		 { LOG("import_kind (5)\n"); }
| "func"		 { LOG("import_kind (6)\n"); }
import_path :  import_path_identifier		 { LOG("import_path (0)\n"); }
| import_path_identifier "." import_path		 { LOG("import_path (1)\n"); }
import_path_identifier :  identifier		 { LOG("import_path_identifier (0)\n"); }
| operator		 { LOG("import_path_identifier (1)\n"); }

// GRAMMAR OF A CONSTANT DECLARATION

constant_declaration :  attributes_opt declaration_specifiers_opt "let" pattern_initializer_list		 {$$ = [[VariableDeclaration alloc] initWithInitializer:(ExpressionList*)$4]; LOG("constant_declaration (0)\n"); }
pattern_initializer_list :  pattern_initializer		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:nil];  LOG("pattern_initializer_list (0)\n"); }
| pattern_initializer "," pattern_initializer_list		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3]; LOG("pattern_initializer_list (1)\n"); }
pattern_initializer :  pattern initializer %dprec 1         {$$ = [[BinaryExpression alloc] initWithExpression:$1 next:[[BinaryExpression alloc] initWithExpression:$2 next:nil]]; LOG("pattern_initializer (0)\n"); }
| pattern %dprec 2                                          { LOG("pattern_initializer (1)\n"); }
initializer_opt: {} | initializer		 { LOG("initializer_opt\n"); }
initializer :  "=" expression		 {$$ = [[AssignmentOperator alloc] initWithRightOperand:$2];  LOG("initializer (0)\n"); }

// GRAMMAR OF A VARIABLE DECLARATION

variable_declaration :  variable_declaration_head pattern_initializer_list 		 {$$ = [[VariableDeclaration alloc] initWithInitializer:(ExpressionList*)$2]; LOG("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation code_block		 { LOG("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_block		 { LOG("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { LOG("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation initializer_opt willSet_didSet_block		 { LOG("variable_declaration (0)\n"); }
variable_declaration_head :  attributes_opt declaration_specifiers_opt "var"		 { LOG("variable_declaration_head (0)\n"); }
variable_name :  identifier		 { LOG("variable_name (0)\n"); }
getter_setter_block :  "{" getter_clause setter_clause_opt "}"		 { LOG("getter_setter_block (0)\n"); }
setter_clause_opt: {} | setter_clause		 { LOG("setter_clause_opt\n"); }
getter_setter_block :  "{" setter_clause getter_clause "}"		 { LOG("getter_setter_block (0)\n"); }
getter_clause :  attributes_opt "get" code_block		 { LOG("getter_clause (0)\n"); }
setter_clause :  attributes_opt "set" setter_name_opt code_block		 { LOG("setter_clause (0)\n"); }
setter_name_opt: {} | setter_name		 { LOG("setter_name_opt\n"); }
setter_name :  "(" identifier ")"		 { LOG("setter_name (0)\n"); }
getter_setter_keyword_block :  "{" getter_keyword_clause setter_keyword_clause_opt "}"		 { LOG("getter_setter_keyword_block (0)\n"); }
setter_keyword_clause_opt: {} | setter_keyword_clause		 { LOG("setter_keyword_clause_opt\n"); }
getter_setter_keyword_block :  "{" setter_keyword_clause getter_keyword_clause "}"		 { LOG("getter_setter_keyword_block (0)\n"); }
getter_keyword_clause :  attributes_opt "get"		 { LOG("getter_keyword_clause (0)\n"); }
setter_keyword_clause :  attributes_opt "set"		 { LOG("setter_keyword_clause (0)\n"); }
willSet_didSet_block :  "{" willSet_clause didSet_clause_opt "}"		 { LOG("willSet_didSet_block (0)\n"); }
didSet_clause_opt: {} | didSet_clause		 { LOG("didSet_clause_opt\n"); }
willSet_didSet_block :  "{" didSet_clause willSet_clause "}"		 { LOG("willSet_didSet_block (0)\n"); }
willSet_clause :  attributes_opt "willSet" setter_name_opt code_block		 { LOG("willSet_clause (0)\n"); }
didSet_clause :  attributes_opt "didSet" setter_name_opt code_block		 { LOG("didSet_clause (0)\n"); }

// GRAMMAR OF A TYPE ALIAS DECLARATION

typealias_declaration :  typealias_head typealias_assignment		 { LOG("typealias_declaration (0)\n"); }
typealias_head :  "typealias" typealias_name		 { LOG("typealias_head (0)\n"); }
typealias_name :  identifier		 { LOG("typealias_name (0)\n"); }
typealias_assignment :  "=" type		 { LOG("typealias_assignment (0)\n"); }

// GRAMMAR OF A FUNCTION DECLARATION

function_declaration :  function_head function_name generic_parameter_clause_opt function_signature function_body		 {
    $$ = [[FunctionDeclaration alloc] initWithName:toSwift($2) signature:$4 body:$5];
    LOG("function_declaration (0)\n");
}
generic_parameter_clause_opt: {} | generic_parameter_clause		 { LOG("generic_parameter_clause_opt\n"); }
function_head :  attributes_opt declaration_specifiers_opt "func"		 { LOG("function_head (0)\n"); }
function_name :  identifier		 { LOG("function_name (0)\n"); }
| operator		 { LOG("function_name (1)\n"); }
function_signature :  parameter_clauses function_result_opt		 {$$ = $1; LOG("function_signature (0)\n"); }
function_result_opt: {} | function_result		 { LOG("function_result_opt\n"); }
function_result :  "->" attributes_opt type		 { LOG("function_result (0)\n"); }
function_body :  code_block		 { LOG("function_body (0)\n"); }
parameter_clauses :  parameter_clause parameter_clauses_opt		 { LOG("parameter_clauses (0)\n"); }
parameter_clauses_opt: {} | parameter_clauses		 { LOG("parameter_clauses_opt\n"); }
parameter_clause :  "(" ")"		 {$$ = NULL; LOG("parameter_clause (0)\n"); }
| "(" parameter_list tripledot_opt ")"		 {$$ = $2; LOG("parameter_clause (1)\n"); }
tripledot_opt: {} | "..."		 { LOG("tripledot_opt\n"); }
parameter_list :  parameter		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:nil]; LOG("parameter_list (0)\n"); }
| parameter "," parameter_list		 { $$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3];LOG("parameter_list (1)\n"); }
parameter :  inout_opt let_opt hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 {
    $$ = [[FunctionParameter alloc] initWithInoutVal:!!$1 letVal:!!$2 hashVal:!!$3 external:toSwift($4) local:toSwift($5) defVal:$7];
    LOG("parameter (0)\n");
}
inout_opt: {} | "inout"		 { LOG("inout_opt\n"); }
let_opt: {} | "let"		 { LOG("let_opt\n"); }
hash_opt: {} | "#"		 { LOG("hash_opt\n"); }
local_parameter_name_opt: {} | local_parameter_name		 { LOG("local_parameter_name_opt\n"); }
default_argument_clause_opt: {} | default_argument_clause		 { LOG("default_argument_clause_opt\n"); }
parameter :  inout_opt "var" hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 { LOG("parameter (0)\n"); }
parameter :  attributes_opt type		 { LOG("parameter (0)\n"); }
parameter_name :  identifier		 { LOG("parameter_name (0)\n"); }
| "_"		 { LOG("parameter_name (1)\n"); }
local_parameter_name :  identifier		 { LOG("local_parameter_name (0)\n"); }
| "_"		 { LOG("local_parameter_name (1)\n"); }
default_argument_clause :  "=" expression		 {$$ = $2; LOG("default_argument_clause (0)\n"); }

// GRAMMAR OF AN ENUMERATION DECLARATION

enum_declaration :  attributes_opt union_style_enum		 { LOG("enum_declaration (0)\n"); }
| attributes_opt raw_value_style_enum		 { LOG("enum_declaration (1)\n"); }
union_style_enum :  enum_name generic_parameter_clause_opt "{" union_style_enum_members_opt "}"		 { LOG("union_style_enum (0)\n"); }
union_style_enum_members_opt: {} | union_style_enum_members		 { LOG("union_style_enum_members_opt\n"); }
union_style_enum_members :  union_style_enum_member union_style_enum_members_opt		 { LOG("union_style_enum_members (0)\n"); }
union_style_enum_member :  declaration		 { LOG("union_style_enum_member (0)\n"); }
| union_style_enum_case_clause		 { LOG("union_style_enum_member (1)\n"); }
union_style_enum_case_clause :  attributes_opt "case" union_style_enum_case_list		 { LOG("union_style_enum_case_clause (0)\n"); }
union_style_enum_case_list :  union_style_enum_case		 { LOG("union_style_enum_case_list (0)\n"); }
| union_style_enum_case "," union_style_enum_case_list		 { LOG("union_style_enum_case_list (1)\n"); }
union_style_enum_case :  enum_case_name tuple_type_opt		 { LOG("union_style_enum_case (0)\n"); }
tuple_type_opt: {} | tuple_type		 { LOG("tuple_type_opt\n"); }
enum_name :  identifier		 { LOG("enum_name (0)\n"); }
enum_case_name :  identifier		 { LOG("enum_case_name (0)\n"); }
raw_value_style_enum :  enum_name generic_parameter_clause_opt ":" type_identifier "{" raw_value_style_enum_members_opt "}"		 { LOG("raw_value_style_enum (0)\n"); }
raw_value_style_enum_members_opt: {} | raw_value_style_enum_members		 { LOG("raw_value_style_enum_members_opt\n"); }
raw_value_style_enum_members :  raw_value_style_enum_member raw_value_style_enum_members_opt		 { LOG("raw_value_style_enum_members (0)\n"); }
raw_value_style_enum_member :  declaration		 { LOG("raw_value_style_enum_member (0)\n"); }
| raw_value_style_enum_case_clause		 { LOG("raw_value_style_enum_member (1)\n"); }
raw_value_style_enum_case_clause :  attributes_opt "case" raw_value_style_enum_case_list		 { LOG("raw_value_style_enum_case_clause (0)\n"); }
raw_value_style_enum_case_list :  raw_value_style_enum_case		 { LOG("raw_value_style_enum_case_list (0)\n"); }
| raw_value_style_enum_case "," raw_value_style_enum_case_list		 { LOG("raw_value_style_enum_case_list (1)\n"); }
raw_value_style_enum_case :  enum_case_name raw_value_assignment_opt		 { LOG("raw_value_style_enum_case (0)\n"); }
raw_value_assignment_opt: {} | raw_value_assignment		 { LOG("raw_value_assignment_opt\n"); }
raw_value_assignment :  "=" literal		 { LOG("raw_value_assignment (0)\n"); }

// GRAMMAR OF A STRUCTURE DECLARATION

struct_declaration :  attributes_opt "struct" struct_name generic_parameter_clause_opt type_inheritance_clause_opt struct_body		 { LOG("struct_declaration (0)\n"); }
type_inheritance_clause_opt: {} | type_inheritance_clause		 { LOG("type_inheritance_clause_opt\n"); }
struct_name :  identifier		 { LOG("struct_name (0)\n"); }
struct_body :  "{" declarations_opt "}"		 { LOG("struct_body (0)\n"); }

// GRAMMAR OF A CLASS DECLARATION

class_declaration :  attributes_opt "class" class_name generic_parameter_clause_opt type_inheritance_clause_opt class_body		 { LOG("class_declaration (0)\n"); }
class_name :  identifier		 { LOG("class_name (0)\n"); }
class_body :  "{" declarations_opt "}"		 { LOG("class_body (0)\n"); }

// GRAMMAR OF A PROTOCOL DECLARATION

protocol_declaration :  attributes_opt "protocol" protocol_name type_inheritance_clause_opt protocol_body		 { LOG("protocol_declaration (0)\n"); }
protocol_name :  identifier		 { LOG("protocol_name (0)\n"); }
protocol_body :  "{" protocol_member_declarations_opt "}"		 { LOG("protocol_body (0)\n"); }
protocol_member_declarations_opt: {} | protocol_member_declarations		 { LOG("protocol_member_declarations_opt\n"); }
protocol_member_declaration :  protocol_property_declaration		 { LOG("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_method_declaration		 { LOG("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_initializer_declaration		 { LOG("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_subscript_declaration		 { LOG("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_associated_type_declaration		 { LOG("protocol_member_declaration (0)\n"); }
protocol_member_declarations :  protocol_member_declaration protocol_member_declarations_opt		 { LOG("protocol_member_declarations (0)\n"); }

// GRAMMAR OF A PROTOCOL PROPERTY DECLARATION

protocol_property_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { LOG("protocol_property_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL METHOD DECLARATION

protocol_method_declaration :  function_head function_name generic_parameter_clause_opt function_signature		 { LOG("protocol_method_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL INITIALIZER DECLARATION

protocol_initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause		 { LOG("protocol_initializer_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL SUBSCRIPT DECLARATION

protocol_subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { LOG("protocol_subscript_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL ASSOCIATED TYPE DECLARATION

protocol_associated_type_declaration :  typealias_head type_inheritance_clause_opt typealias_assignment_opt		 { LOG("protocol_associated_type_declaration (0)\n"); }
typealias_assignment_opt: {} | typealias_assignment		 { LOG("typealias_assignment_opt\n"); }

// GRAMMAR OF AN INITIALIZER DECLARATION

initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause initializer_body		 { LOG("initializer_declaration (0)\n"); }
initializer_head :  attributes_opt convenience_opt "init"		 { LOG("initializer_head (0)\n"); }
convenience_opt: {} | "convenience"		 { LOG("convenience_opt\n"); }
initializer_body :  code_block		 { LOG("initializer_body (0)\n"); }

// GRAMMAR OF A DEINITIALIZER DECLARATION

deinitializer_declaration :  attributes_opt "deinit" code_block		 { LOG("deinitializer_declaration (0)\n"); }

// GRAMMAR OF AN EXTENSION DECLARATION

extension_declaration :  "extension" type_identifier type_inheritance_clause_opt extension_body		 { LOG("extension_declaration (0)\n"); }
extension_body :  "{" declarations_opt "}"		 { LOG("extension_body (0)\n"); }

// GRAMMAR OF A SUBSCRIPT DECLARATION

subscript_declaration :  subscript_head subscript_result code_block		 { LOG("subscript_declaration (0)\n"); }
subscript_declaration :  subscript_head subscript_result getter_setter_block		 { LOG("subscript_declaration (0)\n"); }
subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { LOG("subscript_declaration (0)\n"); }
subscript_head :  attributes_opt "subscript" parameter_clause		 { LOG("subscript_head (0)\n"); }
subscript_result :  "->" attributes_opt type		 { LOG("subscript_result (0)\n"); }

// GRAMMAR OF AN OPERATOR DECLARATION

operator_declaration :  prefix_operator_declaration		 { LOG("operator_declaration (0)\n"); }
| postfix_operator_declaration		 { LOG("operator_declaration (1)\n"); }
| infix_operator_declaration		 { LOG("operator_declaration (2)\n"); }
prefix_operator_declaration :  "operator" "prefix" operator "{" "}"		 { LOG("prefix_operator_declaration (0)\n"); }
postfix_operator_declaration :  "operator" "postfix" operator "{" "}"		 { LOG("postfix_operator_declaration (0)\n"); }
infix_operator_declaration :  "operator" "infix" operator "{" infix_operator_attributes_opt "}"		 { LOG("infix_operator_declaration (0)\n"); }
infix_operator_attributes_opt: {} | infix_operator_attributes		 { LOG("infix_operator_attributes_opt\n"); }
infix_operator_attributes :  precedence_clause_opt associativity_clause_opt		 { LOG("infix_operator_attributes (0)\n"); }
precedence_clause_opt: {} | precedence_clause		 { LOG("precedence_clause_opt\n"); }
associativity_clause_opt: {} | associativity_clause		 { LOG("associativity_clause_opt\n"); }
precedence_clause :  "precedence" precedence_level		 { LOG("precedence_clause (0)\n"); }
precedence_level : 		 { LOG("precedence_level (0)\n"); }
associativity_clause :  "associativity" associativity		 { LOG("associativity_clause (0)\n"); }
associativity :  "left"		 { LOG("associativity (0)\n"); }
| "right"		 { LOG("associativity (1)\n"); }
| "none"		 { LOG("associativity (2)\n"); }

/******* PATTERNS *******/


// GRAMMAR OF A PATTERN

pattern :  wildcard_pattern type_annotation_opt		 { LOG("pattern (0)\n"); }
type_annotation_opt: {} | type_annotation		 { LOG("type_annotation_opt\n"); }
pattern :  identifier_pattern type_annotation_opt %dprec 1  {$$ = [[LiteralExpression alloc] init:toSwift($1)]; $$.type=$2; LOG("pattern (1)\n"); }
pattern :  value_binding_pattern		 { LOG("pattern (3)\n"); }
pattern :  tuple_pattern type_annotation_opt		 { LOG("pattern (4)\n"); }
pattern :  enum_case_pattern		 { LOG("pattern (5)\n"); }
pattern :  type_casting_pattern		 { LOG("pattern (6)\n"); }
pattern :  expression_pattern %dprec 2		 { LOG("pattern (7)\n"); }

// GRAMMAR OF A WILDCARD PATTERN

wildcard_pattern :  "_"		 { LOG("wildcard_pattern (0)\n"); }

// GRAMMAR OF AN IDENTIFIER PATTERN

identifier_pattern :  identifier		 { LOG("identifier_pattern (0)\n"); }

// GRAMMAR OF A VALUE_BINDING PATTERN

value_binding_pattern :  "var" pattern		 { LOG("value_binding_pattern (0)\n"); }
| "let" pattern		 { LOG("value_binding_pattern (1)\n"); }

// GRAMMAR OF A TUPLE PATTERN

tuple_pattern :  "(" tuple_pattern_element_list_opt ")"		 { LOG("tuple_pattern (0)\n"); }
tuple_pattern_element_list_opt: {} | tuple_pattern_element_list		 { LOG("tuple_pattern_element_list_opt\n"); }
tuple_pattern_element_list :  tuple_pattern_element		 { LOG("tuple_pattern_element_list (0)\n"); }
| tuple_pattern_element "," tuple_pattern_element_list		 { LOG("tuple_pattern_element_list (1)\n"); }
tuple_pattern_element :  pattern		 { LOG("tuple_pattern_element (0)\n"); }

// GRAMMAR OF AN ENUMERATION CASE PATTERN

enum_case_pattern :  type_identifier_opt "." enum_case_name tuple_pattern_opt		 { LOG("enum_case_pattern (0)\n"); }
type_identifier_opt: {} | type_identifier		 { LOG("type_identifier_opt\n"); }
tuple_pattern_opt: {} | tuple_pattern		 { LOG("tuple_pattern_opt\n"); }

// GRAMMAR OF A TYPE CASTING PATTERN

type_casting_pattern :  is_pattern		 { LOG("type_casting_pattern (0)\n"); }
| as_pattern		 { LOG("type_casting_pattern (1)\n"); }
is_pattern :  "is" type		 { LOG("is_pattern (0)\n"); }
as_pattern :  pattern "as" type		 { LOG("as_pattern (0)\n"); }

// GRAMMAR OF AN EXPRESSION PATTERN

expression_pattern :  expression		 { LOG("expression_pattern (0)\n"); }

/******* ATTRIBUTES *******/


// GRAMMAR OF AN ATTRIBUTE

attribute :  "@" attribute_name attribute_argument_clause_opt		 { LOG("attribute (0)\n"); }
attribute_argument_clause_opt: {} | attribute_argument_clause		 { LOG("attribute_argument_clause_opt\n"); }
attribute_name :  identifier		 { LOG("attribute_name (0)\n"); }
attribute_argument_clause :  "(" balanced_tokens_opt ")"		 { LOG("attribute_argument_clause (0)\n"); }
balanced_tokens_opt: {} | balanced_tokens		 { LOG("balanced_tokens_opt\n"); }
attributes :  attribute attributes_opt		 { LOG("attributes (0)\n"); }
balanced_tokens :  balanced_token balanced_tokens_opt		 { LOG("balanced_tokens (0)\n"); }
balanced_token :  "(" balanced_tokens_opt ")"		 { LOG("balanced_token (0)\n"); }
balanced_token :  "[" balanced_tokens_opt "]"		 { LOG("balanced_token (0)\n"); }
balanced_token :  "{" balanced_tokens_opt "}"		 { LOG("balanced_token (0)\n"); }
balanced_token : 		 { LOG("balanced_token (0)\n"); }
balanced_token : 		 { LOG("balanced_token (0)\n"); }

/******* EXPRESSIONS *******/


// GRAMMAR OF AN EXPRESSION

expression :  prefix_expression	%merge <statementsMerge> {LOG("expression (0)\n"); }
| prefix_expression binary_expressions %merge <statementsMerge> {$$ = [[BinaryExpression alloc] initWithExpression:$1 next:(BinaryExpression*)$2];}
expression_list :  expression		 { LOG("expression_list (0)\n"); }
| expression "," expression_list		 { LOG("expression_list (1)\n"); }

// GRAMMAR OF A PREFIX EXPRESSION

prefix_expression :  prefix_operator_opt postfix_expression	{$$ = $1 ? [[PrefixOperator alloc] init:$2:toSwift($1)] : $2;  LOG("prefix_expression\n"); }
prefix_operator_opt: {$$ = NULL}  | prefix_operator		 { LOG("prefix_operator_opt\n"); }
prefix_expression :  in_out_expression		 { LOG("prefix_expression (0)\n"); }
in_out_expression :  "&" identifier		 { LOG("in_out_expression (0)\n"); }

// GRAMMAR OF A BINARY EXPRESSION

binary_expression :  binary_operator prefix_expression  {$$ = [[BinaryOperator alloc] initWithRightOperand:$2 binaryOperator:toSwift($1)]; LOG("binary_expression (0)\n"); }
binary_expression :  "=" prefix_expression		 {$$ = [[AssignmentOperator alloc] initWithRightOperand:$2]; LOG("binary_expression (0)\n"); }
binary_expression :  "?" expression ":" prefix_expression   {$$ = [[TernaryOperator alloc] initWithTrueOperand:$2 falseOperand:$4]; LOG("binary_expression (0)\n"); }
binary_expression :  type_casting_operator		 { LOG("binary_expression (0)\n"); }
binary_expressions :  binary_expression 		 {$$ = [[BinaryExpression alloc] initWithExpression:$1]; }
| binary_expression binary_expressions           {$$ = [[BinaryExpression alloc] initWithExpression:$1 next:(BinaryExpression*)$2];  }



// GRAMMAR OF A TYPE_CASTING OPERATOR

type_casting_operator :  "is" type		 { LOG("type_casting_operator (0)\n"); }
| "as" question_opt type		 { LOG("type_casting_operator (1)\n"); }
question_opt: {} | "?"		 { LOG("question_opt\n"); }

// GRAMMAR OF A PRIMARY EXPRESSION

primary_expression :  identifier generic_argument_clause_opt		 { $$ = [[IdentifierExpression alloc] init:toSwift($1)]; LOG("primary_expression (1)\n"); }
generic_argument_clause_opt: {} | generic_argument_clause		 { LOG("generic_argument_clause_opt\n"); }
primary_expression :  literal_expression		 { LOG("primary_expression (2)\n"); }
primary_expression :  self_expression		 { LOG("primary_expression (3)\n"); }
primary_expression :  superclass_expression		 { LOG("primary_expression (4)\n"); }
primary_expression :  closure_expression		 { LOG("primary_expression (5)\n"); }
primary_expression :  parenthesized_expression		 { LOG("primary_expression (6)\n"); }
primary_expression :  implicit_member_expression		 { LOG("primary_expression (7)\n"); }
primary_expression :  wildcard_expression		 { LOG("primary_expression (8)\n"); }

// GRAMMAR OF A LITERAL EXPRESSION

literal_expression :  literal		 { $$ = [[LiteralExpression alloc] init:toSwift($1)]; LOG("Literal: %s\n", $1)}
literal_expression :  array_literal		 { LOG("literal_expression (0)\n"); }
| dictionary_literal		 { LOG("literal_expression (1)\n"); }
literal_expression :  "__FILE__"		 { LOG("literal_expression (0)\n"); }
| "__LINE__"		 { LOG("literal_expression (1)\n"); }
| "__COLUMN__"		 { LOG("literal_expression (2)\n"); }
| "__FUNCTION__"		 { LOG("literal_expression (3)\n"); }
array_literal :  "[" array_literal_items_opt "]"		 {$$ = [[ArrayLiteral alloc] initWithItems:$2]; LOG("array_literal (0)\n"); }
array_literal_items_opt: {} | array_literal_items		 { LOG("array_literal_items_opt\n"); }
array_literal_items :  array_literal_item comma_opt		 { $$=[[ExpressionList alloc] initWithExpr:$1 next:nil]; LOG("array_literal_items (0)\n"); }
| array_literal_item "," array_literal_items		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3]; LOG("array_literal_items (1)\n"); }
comma_opt: {} | ","		 { LOG("comma_opt\n"); }
array_literal_item :  expression		 { LOG("array_literal_item (0)\n"); }
dictionary_literal :  "[" dictionary_literal_items "]"		 {$$ = [[DictionaryLiteral alloc] initWithPairs:$2]; LOG("array_literal (0)\n"); LOG("dictionary_literal (0)\n"); }
| "[" ":" "]"		 {$$ = [[DictionaryLiteral alloc] initWithPairs:nil];  LOG("dictionary_literal (1)\n"); }
dictionary_literal_items :  dictionary_literal_item comma_opt		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:nil]; LOG("dictionary_literal_items (0)\n"); }
| dictionary_literal_item "," dictionary_literal_items		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3]; LOG("dictionary_literal_items (1)\n"); }
dictionary_literal_item :  expression ":" expression		 {$$ = [[DictionaryItem alloc] initWithKey:$1 value:$3]; LOG("dictionary_literal_item (0)\n"); }

// GRAMMAR OF A SELF EXPRESSION

self_expression :  "self"		 { LOG("self_expression (0)\n"); }
self_expression :  "self" "." identifier		 { LOG("self_expression (0)\n"); }
self_expression :  "self" "[" expression "]"		 { LOG("self_expression (0)\n"); }
self_expression :  "self" "." "init"		 { LOG("self_expression (0)\n"); }

// GRAMMAR OF A SUPERCLASS EXPRESSION

superclass_expression :  superclass_method_expression		 { LOG("superclass_expression (0)\n"); }
| superclass_subscript_expression		 { LOG("superclass_expression (1)\n"); }
| superclass_initializer_expression		 { LOG("superclass_expression (2)\n"); }
superclass_method_expression :  "super" "." identifier		 { LOG("superclass_method_expression (0)\n"); }
superclass_subscript_expression :  "super" "[" expression "]"		 { LOG("superclass_subscript_expression (0)\n"); }
superclass_initializer_expression :  "super" "." "init"		 { LOG("superclass_initializer_expression (0)\n"); }

// GRAMMAR OF A CLOSURE EXPRESSION

closure_expression :  "{" closure_signature_opt statements "}"		 { LOG("closure_expression (0)\n"); }
closure_signature_opt: {} | closure_signature		 { LOG("closure_signature_opt\n"); }
closure_signature :  parameter_clause function_result_opt "in"		 { LOG("closure_signature (0)\n"); }
closure_signature :  identifier_list function_result_opt "in"		 { LOG("closure_signature (0)\n"); }
closure_signature :  capture_list parameter_clause function_result_opt "in"		 { LOG("closure_signature (0)\n"); }
closure_signature :  capture_list identifier_list function_result_opt "in"		 { LOG("closure_signature (0)\n"); }
closure_signature :  capture_list "in"		 { LOG("closure_signature (0)\n"); }
capture_list :  "[" capture_specifier expression "]"		 { LOG("capture_list (0)\n"); }
capture_specifier :  "weak"		 { LOG("capture_specifier (0)\n"); }
| "unowned"		 { LOG("capture_specifier (1)\n"); }
| "unowned(safe)"		 { LOG("capture_specifier (2)\n"); }
| "unowned(unsafe)"		 { LOG("capture_specifier (3)\n"); }

// GRAMMAR OF A IMPLICIT MEMBER EXPRESSION

implicit_member_expression :  "." identifier { $$ = [[LiteralExpression alloc] init:toSwift($1)];  LOG("implicit_member_expression (0)\n"); }

// GRAMMAR OF A PARENTHESIZED EXPRESSION

parenthesized_expression :  "(" expression_element_list_opt ")"		 { $$ = [[ParenthesizedExpression alloc] initWithExpression:$2]; LOG("parenthesized_expression (0)\n"); }
expression_element_list_opt: {$$ = NULL}  | expression_element_list		 { $$ = $1; LOG("expression_element_list_opt\n"); }
expression_element_list :  expression_element   {$$=[[ExpressionList alloc] initWithExpr:$1 next:nil]; LOG("expression_element_list (0)\n"); }
| expression_element "," expression_element_list   {$$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3]; LOG("expression_element_list (1)\n"); }
expression_element :  expression		 { LOG("expression_element (0)\n"); }
| identifier ":" expression		 { $$ = [[NamedExpression alloc] initWithName:toSwift($1) expr:$3]; LOG("expression_element (1)\n"); }

// GRAMMAR OF A WILDCARD EXPRESSION

wildcard_expression :  "_"		 { LOG("wildcard_expression (0)\n"); }

// GRAMMAR OF A POSTFIX EXPRESSION

postfix_expression :  primary_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  postfix_expression postfix_operator   { $$ = [[PostfixOperator alloc] init:$1:toSwift($2)]; LOG("postfix_expression op %s\n", $2); }
postfix_expression :  function_call_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  initializer_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  explicit_member_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  postfix_self_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  dynamic_type_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  subscript_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  forced_value_expression		 { LOG("postfix_expression (0)\n"); }
postfix_expression :  optional_chaining_expression		 { LOG("postfix_expression (0)\n"); }

// GRAMMAR OF A FUNCTION CALL EXPRESSION

function_call_expression :  postfix_expression parenthesized_expression		 {$$ = [[FunctionCallExpression alloc] initWithFunction:$1 parenthesized:(ParenthesizedExpression*)$2]; LOG("function_call_expression (0)\n"); }
function_call_expression :  postfix_expression parenthesized_expression_opt trailing_closure		 { LOG("function_call_expression (0)\n"); }
parenthesized_expression_opt: {} | parenthesized_expression		 { LOG("parenthesized_expression_opt\n"); }
trailing_closure :  closure_expression		 { LOG("trailing_closure (0)\n"); }

// GRAMMAR OF AN INITIALIZER EXPRESSION

initializer_expression :  postfix_expression "." "init"		 { LOG("initializer_expression (0)\n"); }

// GRAMMAR OF AN EXPLICIT MEMBER EXPRESSION

explicit_member_expression :  postfix_expression "." NUMBER_LITERAL		 { LOG("explicit_member_expression (0)\n"); }
explicit_member_expression :  postfix_expression "." identifier generic_argument_clause_opt		 { LOG("explicit_member_expression (0)\n"); }

// GRAMMAR OF A SELF EXPRESSION

postfix_self_expression :  postfix_expression "." "self"		 { LOG("postfix_self_expression (0)\n"); }

// GRAMMAR OF A DYNAMIC TYPE EXPRESSION

dynamic_type_expression :  postfix_expression "." "dynamicType"		 { LOG("dynamic_type_expression (0)\n"); }

// GRAMMAR OF A SUBSCRIPT EXPRESSION

subscript_expression :  postfix_expression "[" expression_list "]"		 { LOG("subscript_expression (0)\n"); }

// GRAMMAR OF A FORCED_VALUE EXPRESSION

forced_value_expression :  postfix_expression "!"		 { LOG("forced_value_expression (0)\n"); }

// GRAMMAR OF AN OPTIONAL_CHAINING EXPRESSION

optional_chaining_expression :  postfix_expression "?"		 { $$ = [[OptionalChainExprStatement alloc] initWithOptChainExpr:$1]; LOG("optional_chaining_expression (0)\n"); }

/******* LEXICAL STRUCTURE *******/


// GRAMMAR OF AN IDENTIFIER

identifier_list :  identifier		 { LOG("identifier_list (0)\n"); }
| identifier "," identifier_list		 { LOG("identifier_list (1)\n"); }

// GRAMMAR OF A LITERAL

literal :  NUMBER_LITERAL
| BOOLEAN_LITERAL
| STRING_LITERAL

// GRAMMAR OF OPERATORS
operator: binary_operator | prefix_operator | postfix_operator
binary_operator :  "/" | "/="
| "==" | "==="
| "-" | "-="
| "+" | "+="
| "!"
| "*" | "*="
| "%" | "%="
| "<"
| ">"
| "&" | "&&"
| "|" | "||"
| "^" | "^="
| "~" | "~="
prefix_operator : PREFIX_OPERATOR "++" {$$ = $2}
| PREFIX_OPERATOR "--" {$$ = $2}
| PREFIX_OPERATOR "!" {$$ = $2}
| PREFIX_OPERATOR "~" {$$ = $2}
| PREFIX_OPERATOR "+" {$$ = $2}
| PREFIX_OPERATOR "-" {$$ = $2}
postfix_operator : POSTFIX_OPERATOR "++" {$$ = $2}
| POSTFIX_OPERATOR "--" {$$ = $2}

/******* TYPES *******/


// GRAMMAR OF A TYPE

type :  array_type		 { LOG("type (0)\n"); }
| function_type		 { LOG("type (1)\n"); }
| type_identifier		 { LOG("type (2)\n"); }
| tuple_type		 { LOG("type (3)\n"); }
| optional_type		 { LOG("type (4)\n"); }
| implicitly_unwrapped_optional_type		 { LOG("type (5)\n"); }
| protocol_composition_type		 { LOG("type (6)\n"); }
| metatype_type		 { LOG("type (7)\n"); }

// GRAMMAR OF A TYPE ANNOTATION

type_annotation :  ":" attributes_opt type		 {$$ = $3; LOG("type_annotation (0)\n"); }

// GRAMMAR OF A TYPE IDENTIFIER

type_identifier :  type_name generic_argument_clause_opt		 {$$ = [GenericType fromTypeIdentifier:toSwift($1)]; LOG("type_identifier (0)\n"); }
| type_name generic_argument_clause_opt "." type_identifier		 {$$ = [GenericType fromTypeIdentifier:toSwift($1)]; LOG("type_identifier (1)\n"); }
type_name :  identifier		 { LOG("type_name (0)\n"); }

// GRAMMAR OF A TUPLE TYPE

tuple_type :  "(" tuple_type_body_opt ")"		 { $$ = [[TupleType alloc] initWithList:$2]; LOG("tuple_type (0)\n"); }
tuple_type_body_opt: {} | tuple_type_body		 { LOG("tuple_type_body_opt\n"); }
tuple_type_body :  tuple_type_element_list tripledot_opt		 { LOG("tuple_type_body (0)\n"); }
tuple_type_element_list :  tuple_type_element		 {$$=[[ExpressionList alloc] initWithExpr:$1 next:nil]; LOG("tuple_type_element_list (0)\n"); }
| tuple_type_element "," tuple_type_element_list		 { $$=[[ExpressionList alloc] initWithExpr:$1 next:(ExpressionList*)$3]; LOG("tuple_type_element_list (1)\n"); }
tuple_type_element :  attributes_opt inout_opt type		 {$$ = [[TypeExpression alloc] initWithLinkedType:$3]; LOG("tuple_type_element (0)\n"); }
| inout_opt element_name type_annotation		 {$$ = [[NamedExpression alloc] initWithName:toSwift($2) expr:[[TypeExpression alloc] initWithLinkedType:$3]]; LOG("tuple_type_element (1)\n"); }
element_name :  identifier		 { LOG("element_name (0)\n"); }

// GRAMMAR OF A FUNCTION TYPE

function_type :  type "->" type		 {$$ = [[FunctionType alloc] initWithArgsType:$1 returnType:$3]; LOG("function_type (0)\n"); }

// GRAMMAR OF AN ARRAY TYPE

array_type :  type "[" "]"		 {$$ = [[ArrayType alloc] initWithInnerType:$1]; LOG("array_type (0)\n"); }
| array_type "[" "]"		 { $$ = [[ArrayType alloc] initWithInnerType:$1]; LOG("array_type (1)\n"); }
| "[" type "]"               { $$ = [[ArrayType alloc] initWithInnerType:$2]; LOG("arry_type (2)\n");}

// GRAMMAR OF AN OPTIONAL TYPE

optional_type :  type "?"		 {$1.optional = true; $$ = $1; LOG("optional_type (0)\n"); }

// GRAMMAR OF AN IMPLICITLY UNWRAPPED OPTIONAL TYPE

implicitly_unwrapped_optional_type :  type "!"		 { LOG("implicitly_unwrapped_optional_type (0)\n"); }

// GRAMMAR OF A PROTOCOL COMPOSITION TYPE

protocol_composition_type :  "protocol" "<" protocol_identifier_list_opt ">"		 { LOG("protocol_composition_type (0)\n"); }
protocol_identifier_list_opt: {} | protocol_identifier_list		 { LOG("protocol_identifier_list_opt\n"); }
protocol_identifier_list :  protocol_identifier		 { LOG("protocol_identifier_list (0)\n"); }
| protocol_identifier "," protocol_identifier_list		 { LOG("protocol_identifier_list (1)\n"); }
protocol_identifier :  type_identifier		 { LOG("protocol_identifier (0)\n"); }

// GRAMMAR OF A METATYPE TYPE

metatype_type :  type "." "Type"		 { LOG("metatype_type (0)\n"); }
| type "." "Protocol"		 { LOG("metatype_type (1)\n"); }

// GRAMMAR OF A TYPE INHERITANCE CLAUSE

type_inheritance_clause :  ":" type_inheritance_list		 { LOG("type_inheritance_clause (0)\n"); }
type_inheritance_list :  type_identifier		 { LOG("type_inheritance_list (0)\n"); }
| type_identifier "," type_inheritance_list		 { LOG("type_inheritance_list (1)\n"); }

%%


static ASTNode * statementsMerge(YYSTYPE & a, YYSTYPE & b)
{
    // Resolves function call ambiguity (2 expressios vs function call) and other ambiguities
    // Prefer the node with less statements
    return [(StatementsNode*)a.node getStatementsCount] > [(StatementsNode*)b.node getStatementsCount] ? b.node : a.node;
}

static const char * lastError = NULL;

void yyerror (const char *error)
{
    lastError = strdup(error);
}

static Lexer * lexer;

int yylex ()
{
    int token = [lexer yylex];
    
    //set string value
    const char * str = [lexer yylexstr].UTF8String;
    if (str) {
        yylval.str = strdup(str);
    }
    else {
        yylval.str = NULL;
    }
    
    return token;
}

extern "C" {
    ASTNode* bridge_yyparse(Lexer * instance, int debug) {
        lexer = instance;
        debugRules = debug;
        yyparse();
        return ast;
    }
    
    const char * bridge_yyerror() {
        return lastError;
    }
}