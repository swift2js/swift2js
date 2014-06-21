%{
    #include <iostream>
    @class NSArray;
    #include <Foundation/NSString.h>
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();
    
    inline NSString * toSwift(const char * c) {
        return [NSString stringWithUTF8String:c];
    }
%}

%glr-parser
%error-verbose
%debug

%union {
    ASTNode * node;
    char *    str;
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
%token <str> PLUS_EQ 85 "+="
%token <str> MINUS_EQ 86 "-="
%token <str> ASTERISK_EQ 87 "*="
%token <str> SLASH_EQ 88 "/="
%token <str> PERCENT_EQ 89 "%="
%token <str> AMPERSAND_EQ 90 "&="
%token <str> CARET_EQ 91 "^="
%token <str> TILDE_EQ 92 "~="
%token <str> OR_EQ 93 "|="
%token <str> LPAR 94 "("
%token <str> RPAR 95 ")"
%token <str> LBRACKET 96 "["
%token <str> RBRACKET 97 "]"
%token <str> LBRACE 98 "{"
%token <str> RBRACE 99 "}"
%token <str> COMMA 100 ","
%token <str> COLON 101 ":"
%token <str> SEMICOLON 102 ";"
%token <str> AT 103 "@"
%token <str> UNDERSCORE 104 "_"
%token <str> HASH 105 "#"
%token <str> DOLLAR 106 "$"
%token <str> QUESTION 107 "?"
%token <str> PREFIX_OPERATOR 108 "prefix_op"
%token <str> POSTFIX_OPERATOR 109 "postfix_op"

%type <node> statement
//%type <node> semicolon_opt
%type <node> statements
%type <node> statements_opt
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
%type <node> statement_label
%type <node> label_name
%type <node> control_transfer_statement
%type <node> break_statement
%type <node> label_name_opt
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
%type <node> top_level_declaration
%type <node> code_block
%type <node> import_declaration
%type <node> attributes_opt
%type <node> import_kind_opt
%type <node> import_kind
%type <node> import_path
%type <node> import_path_identifier
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
%type <node> function_name
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
%type <node> local_parameter_name_opt
%type <node> default_argument_clause_opt
%type <node> parameter_name
%type <node> local_parameter_name
%type <node> default_argument_clause
%type <node> enum_declaration
%type <node> union_style_enum
%type <node> union_style_enum_members_opt
%type <node> union_style_enum_members
%type <node> union_style_enum_member
%type <node> union_style_enum_case_clause
%type <node> union_style_enum_case_list
%type <node> union_style_enum_case
%type <node> tuple_type_opt
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
%type <node> type_annotation_opt
%type <node> wildcard_pattern
%type <node> identifier_pattern
%type <node> value_binding_pattern
%type <node> tuple_pattern
%type <node> tuple_pattern_element_list_opt
%type <node> tuple_pattern_element_list
%type <node> tuple_pattern_element
%type <node> enum_case_pattern
%type <node> type_identifier_opt
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
%type <node> binary_expressions_opt
%type <node> expression_list
%type <node> prefix_expression
%type <node> prefix_operator_opt
%type <node> in_out_expression
%type <node> binary_expression
%type <node> binary_expressions
%type <node> assignment_operator
%type <node> conditional_operator
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
%type <node> type
%type <node> type_annotation
%type <node> type_identifier
%type <node> type_name
%type <node> tuple_type
%type <node> tuple_type_body_opt
%type <node> tuple_type_body
%type <node> tuple_type_element_list
%type <node> tuple_type_element
%type <node> element_name
%type <node> function_type
%type <node> array_type
%type <node> optional_type
%type <node> implicitly_unwrapped_optional_type
%type <node> protocol_composition_type
%type <node> protocol_identifier_list_opt
%type <node> protocol_identifier_list
%type <node> protocol_identifier
%type <node> metatype_type
%type <node> type_inheritance_clause
%type <node> type_inheritance_list

%%

/******* STATEMENTS *******/

program: statements

/******* STATEMENTS *******/


// GRAMMAR OF A STATEMENT

statement :  expression semicolon_opt		 { printf("statement (0)\n"); }
semicolon_opt:  | ";"		 { printf("semicolon_opt\n"); }
statement :  declaration semicolon_opt		 { printf("statement (0)\n"); }
statement :  loop_statement semicolon_opt		 { printf("statement (0)\n"); }
statement :  branch_statement semicolon_opt		 { printf("statement (0)\n"); }
statement :  labeled_statement		 { printf("statement (0)\n"); }
statement :  control_transfer_statement semicolon_opt		 { printf("statement (0)\n"); }
statements :  statement statements_opt		 { printf("statements (0)\n"); }
statements_opt:  | statements		 { printf("statements_opt\n"); }

// GRAMMAR OF A LOOP STATEMENT

loop_statement :  for_statement		 { printf("loop_statement (0)\n"); }
loop_statement :  for_in_statement		 { printf("loop_statement (0)\n"); }
loop_statement :  while_statement		 { printf("loop_statement (0)\n"); }
loop_statement :  do_while_statement		 { printf("loop_statement (0)\n"); }

// GRAMMAR OF A FOR STATEMENT

for_statement :  "for" for_init_opt ";" expression_opt ";" expression_opt code_block		 { printf("for_statement (0)\n"); }
for_init_opt:  | for_init		 { printf("for_init_opt\n"); }
expression_opt:  | expression		 { printf("expression_opt\n"); }
for_statement :  "for" "(" for_init_opt ";" expression_opt ";" expression_opt ")" code_block		 { printf("for_statement (0)\n"); }
for_init :  variable_declaration		 { printf("for_init (0)\n"); }
| expression_list		 { printf("for_init (1)\n"); }

// GRAMMAR OF A FOR_IN STATEMENT

for_in_statement :  "for" pattern "in" expression code_block		 { printf("for_in_statement (0)\n"); }

// GRAMMAR OF A WHILE STATEMENT

while_statement :  "while" while_condition code_block		 { printf("while_statement (0)\n"); }
while_condition :  expression		 { printf("while_condition (0)\n"); }
| declaration		 { printf("while_condition (1)\n"); }

// GRAMMAR OF A DO_WHILE STATEMENT

do_while_statement :  "do" code_block "while" while_condition		 { printf("do_while_statement (0)\n"); }

// GRAMMAR OF A BRANCH STATEMENT

branch_statement :  if_statement		 { printf("branch_statement (0)\n"); }
branch_statement :  switch_statement		 { printf("branch_statement (0)\n"); }

// GRAMMAR OF AN IF STATEMENT

if_statement :  "if" if_condition code_block else_clause_opt		 { printf("if_statement (0)\n"); }
else_clause_opt:  | else_clause		 { printf("else_clause_opt\n"); }
if_condition :  expression		 { printf("if_condition (0)\n"); }
| declaration		 { printf("if_condition (1)\n"); }
else_clause :  "else" code_block		 { printf("else_clause (0)\n"); }
| "else" if_statement		 { printf("else_clause (1)\n"); }

// GRAMMAR OF A SWITCH STATEMENT

switch_statement :  "switch" expression "{" switch_cases_opt "}"		 { printf("switch_statement (0)\n"); }
switch_cases_opt:  | switch_cases		 { printf("switch_cases_opt\n"); }
switch_cases :  switch_case switch_cases_opt		 { printf("switch_cases (0)\n"); }
switch_case :  case_label statements		 { printf("switch_case (0)\n"); }
| default_label statements		 { printf("switch_case (1)\n"); }
switch_case :  case_label ";"		 { printf("switch_case (0)\n"); }
| default_label ";"		 { printf("switch_case (1)\n"); }
case_label :  "case" case_item_list ":"		 { printf("case_label (0)\n"); }
case_item_list :  pattern guard_clause_opt		 { printf("case_item_list (0)\n"); }
| pattern guard_clause_opt "," case_item_list		 { printf("case_item_list (1)\n"); }
guard_clause_opt:  | guard_clause		 { printf("guard_clause_opt\n"); }
default_label :  "default" ":"		 { printf("default_label (0)\n"); }
guard_clause :  "where" guard_expression		 { printf("guard_clause (0)\n"); }
guard_expression :  expression		 { printf("guard_expression (0)\n"); }

// GRAMMAR OF A LABELED STATEMENT

labeled_statement :  statement_label loop_statement		 { printf("labeled_statement (0)\n"); }
| statement_label switch_statement		 { printf("labeled_statement (1)\n"); }
statement_label :  label_name ":"		 { printf("statement_label (0)\n"); }
label_name :  identifier		 { printf("label_name (0)\n"); }

// GRAMMAR OF A CONTROL TRANSFER STATEMENT

control_transfer_statement :  break_statement		 { printf("control_transfer_statement (0)\n"); }
control_transfer_statement :  continue_statement		 { printf("control_transfer_statement (0)\n"); }
control_transfer_statement :  fallthrough_statement		 { printf("control_transfer_statement (0)\n"); }
control_transfer_statement :  return_statement		 { printf("control_transfer_statement (0)\n"); }

// GRAMMAR OF A BREAK STATEMENT

break_statement :  "break" label_name_opt		 { printf("break_statement (0)\n"); }
label_name_opt:  | label_name		 { printf("label_name_opt\n"); }

// GRAMMAR OF A CONTINUE STATEMENT

continue_statement :  "continue" label_name_opt		 { printf("continue_statement (0)\n"); }

// GRAMMAR OF A FALLTHROUGH STATEMENT

fallthrough_statement :  "fallthrough"		 { printf("fallthrough_statement (0)\n"); }

// GRAMMAR OF A RETURN STATEMENT

return_statement :  "return" expression_opt		 { printf("return_statement (0)\n"); }

/******* GENERIC PARAMETERS AND ARGUMENTS *******/


// GRAMMAR OF A GENERIC PARAMETER CLAUSE

generic_parameter_clause :  "<" generic_parameter_list requirement_clause_opt ">"		 { printf("generic_parameter_clause (0)\n"); }
requirement_clause_opt:  | requirement_clause		 { printf("requirement_clause_opt\n"); }
generic_parameter_list :  generic_parameter		 { printf("generic_parameter_list (0)\n"); }
| generic_parameter "," generic_parameter_list		 { printf("generic_parameter_list (1)\n"); }
generic_parameter :  type_name		 { printf("generic_parameter (0)\n"); }
generic_parameter :  type_name ":" type_identifier		 { printf("generic_parameter (0)\n"); }
generic_parameter :  type_name ":" protocol_composition_type		 { printf("generic_parameter (0)\n"); }
requirement_clause :  "where" requirement_list		 { printf("requirement_clause (0)\n"); }
requirement_list :  requirement		 { printf("requirement_list (0)\n"); }
| requirement "," requirement_list		 { printf("requirement_list (1)\n"); }
requirement :  conformance_requirement		 { printf("requirement (0)\n"); }
| same_type_requirement		 { printf("requirement (1)\n"); }
conformance_requirement :  type_identifier ":" type_identifier		 { printf("conformance_requirement (0)\n"); }
conformance_requirement :  type_identifier ":" protocol_composition_type		 { printf("conformance_requirement (0)\n"); }
same_type_requirement :  type_identifier "==" type_identifier		 { printf("same_type_requirement (0)\n"); }

// GRAMMAR OF A GENERIC ARGUMENT CLAUSE

generic_argument_clause :  "<" generic_argument_list ">"		 { printf("generic_argument_clause (0)\n"); }
generic_argument_list :  generic_argument		 { printf("generic_argument_list (0)\n"); }
| generic_argument "," generic_argument_list		 { printf("generic_argument_list (1)\n"); }
generic_argument :  type		 { printf("generic_argument (0)\n"); }

/******* DECLARATIONS *******/


// GRAMMAR OF A DECLARATION

declaration :  import_declaration		 { printf("declaration (0)\n"); }
declaration :  constant_declaration		 { printf("declaration (0)\n"); }
declaration :  variable_declaration		 { printf("declaration (0)\n"); }
declaration :  typealias_declaration		 { printf("declaration (0)\n"); }
declaration :  function_declaration		 { printf("declaration (0)\n"); }
declaration :  enum_declaration		 { printf("declaration (0)\n"); }
declaration :  struct_declaration		 { printf("declaration (0)\n"); }
declaration :  class_declaration		 { printf("declaration (0)\n"); }
declaration :  protocol_declaration		 { printf("declaration (0)\n"); }
declaration :  initializer_declaration		 { printf("declaration (0)\n"); }
declaration :  deinitializer_declaration		 { printf("declaration (0)\n"); }
declaration :  extension_declaration		 { printf("declaration (0)\n"); }
declaration :  subscript_declaration		 { printf("declaration (0)\n"); }
declaration :  operator_declaration		 { printf("declaration (0)\n"); }
declarations :  declaration declarations_opt		 { printf("declarations (0)\n"); }
declarations_opt:  | declarations		 { printf("declarations_opt\n"); }
declaration_specifiers :  declaration_specifier declaration_specifiers_opt		 { printf("declaration_specifiers (0)\n"); }
declaration_specifiers_opt:  | declaration_specifiers		 { printf("declaration_specifiers_opt\n"); }
declaration_specifier :  "class"		 { printf("declaration_specifier (0)\n"); }
| "mutating"		 { printf("declaration_specifier (1)\n"); }
| "nonmutating"		 { printf("declaration_specifier (2)\n"); }
| "override"		 { printf("declaration_specifier (3)\n"); }
| "static"		 { printf("declaration_specifier (4)\n"); }
| "unowned"		 { printf("declaration_specifier (5)\n"); }
| "unowned(safe)"		 { printf("declaration_specifier (6)\n"); }
| "unowned(unsafe)"		 { printf("declaration_specifier (7)\n"); }
| "weak"		 { printf("declaration_specifier (8)\n"); }

// GRAMMAR OF A TOP_LEVEL DECLARATION

top_level_declaration :  statements_opt		 { printf("top_level_declaration (0)\n"); }

// GRAMMAR OF A CODE BLOCK

code_block :  "{" statements_opt "}"		 { printf("code_block (0)\n"); }

// GRAMMAR OF AN IMPORT DECLARATION

import_declaration :  attributes_opt "import" import_kind_opt import_path		 { printf("import_declaration (0)\n"); }
attributes_opt:  | attributes		 { printf("attributes_opt\n"); }
import_kind_opt:  | import_kind		 { printf("import_kind_opt\n"); }
import_kind :  "typealias"		 { printf("import_kind (0)\n"); }
| "struct"		 { printf("import_kind (1)\n"); }
| "class"		 { printf("import_kind (2)\n"); }
| "enum"		 { printf("import_kind (3)\n"); }
| "protocol"		 { printf("import_kind (4)\n"); }
| "var"		 { printf("import_kind (5)\n"); }
| "func"		 { printf("import_kind (6)\n"); }
import_path :  import_path_identifier		 { printf("import_path (0)\n"); }
| import_path_identifier "." import_path		 { printf("import_path (1)\n"); }
import_path_identifier :  identifier		 { printf("import_path_identifier (0)\n"); }
| operator		 { printf("import_path_identifier (1)\n"); }

// GRAMMAR OF A CONSTANT DECLARATION

constant_declaration :  attributes_opt declaration_specifiers_opt "let" pattern_initializer_list		 { printf("constant_declaration (0)\n"); }
pattern_initializer_list :  pattern_initializer		 { printf("pattern_initializer_list (0)\n"); }
| pattern_initializer "," pattern_initializer_list		 { printf("pattern_initializer_list (1)\n"); }
pattern_initializer :  pattern initializer %dprec 1
| pattern %dprec 2                                          { printf("pattern_initializer (0)\n"); }
initializer_opt:  | initializer		 { printf("initializer_opt\n"); }
initializer :  "=" expression		 { printf("initializer (0)\n"); }

// GRAMMAR OF A VARIABLE DECLARATION

variable_declaration :  variable_declaration_head pattern_initializer_list 		 { printf("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation code_block		 { printf("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_block		 { printf("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { printf("variable_declaration (0)\n"); }
variable_declaration :  variable_declaration_head variable_name type_annotation initializer_opt willSet_didSet_block		 { printf("variable_declaration (0)\n"); }
variable_declaration_head :  attributes_opt declaration_specifiers_opt "var"		 { printf("variable_declaration_head (0)\n"); }
variable_name :  identifier		 { printf("variable_name (0)\n"); }
getter_setter_block :  "{" getter_clause setter_clause_opt "}"		 { printf("getter_setter_block (0)\n"); }
setter_clause_opt:  | setter_clause		 { printf("setter_clause_opt\n"); }
getter_setter_block :  "{" setter_clause getter_clause "}"		 { printf("getter_setter_block (0)\n"); }
getter_clause :  attributes_opt "get" code_block		 { printf("getter_clause (0)\n"); }
setter_clause :  attributes_opt "set" setter_name_opt code_block		 { printf("setter_clause (0)\n"); }
setter_name_opt:  | setter_name		 { printf("setter_name_opt\n"); }
setter_name :  "(" identifier ")"		 { printf("setter_name (0)\n"); }
getter_setter_keyword_block :  "{" getter_keyword_clause setter_keyword_clause_opt "}"		 { printf("getter_setter_keyword_block (0)\n"); }
setter_keyword_clause_opt:  | setter_keyword_clause		 { printf("setter_keyword_clause_opt\n"); }
getter_setter_keyword_block :  "{" setter_keyword_clause getter_keyword_clause "}"		 { printf("getter_setter_keyword_block (0)\n"); }
getter_keyword_clause :  attributes_opt "get"		 { printf("getter_keyword_clause (0)\n"); }
setter_keyword_clause :  attributes_opt "set"		 { printf("setter_keyword_clause (0)\n"); }
willSet_didSet_block :  "{" willSet_clause didSet_clause_opt "}"		 { printf("willSet_didSet_block (0)\n"); }
didSet_clause_opt:  | didSet_clause		 { printf("didSet_clause_opt\n"); }
willSet_didSet_block :  "{" didSet_clause willSet_clause "}"		 { printf("willSet_didSet_block (0)\n"); }
willSet_clause :  attributes_opt "willSet" setter_name_opt code_block		 { printf("willSet_clause (0)\n"); }
didSet_clause :  attributes_opt "didSet" setter_name_opt code_block		 { printf("didSet_clause (0)\n"); }

// GRAMMAR OF A TYPE ALIAS DECLARATION

typealias_declaration :  typealias_head typealias_assignment		 { printf("typealias_declaration (0)\n"); }
typealias_head :  "typealias" typealias_name		 { printf("typealias_head (0)\n"); }
typealias_name :  identifier		 { printf("typealias_name (0)\n"); }
typealias_assignment :  "=" type		 { printf("typealias_assignment (0)\n"); }

// GRAMMAR OF A FUNCTION DECLARATION

function_declaration :  function_head function_name generic_parameter_clause_opt function_signature function_body		 { printf("function_declaration (0)\n"); }
generic_parameter_clause_opt:  | generic_parameter_clause		 { printf("generic_parameter_clause_opt\n"); }
function_head :  attributes_opt declaration_specifiers_opt "func"		 { printf("function_head (0)\n"); }
function_name :  identifier		 { printf("function_name (0)\n"); }
| operator		 { printf("function_name (1)\n"); }
function_signature :  parameter_clauses function_result_opt		 { printf("function_signature (0)\n"); }
function_result_opt:  | function_result		 { printf("function_result_opt\n"); }
function_result :  "_>" attributes_opt type		 { printf("function_result (0)\n"); }
function_body :  code_block		 { printf("function_body (0)\n"); }
parameter_clauses :  parameter_clause parameter_clauses_opt		 { printf("parameter_clauses (0)\n"); }
parameter_clauses_opt:  | parameter_clauses		 { printf("parameter_clauses_opt\n"); }
parameter_clause :  "(" ")"		 { printf("parameter_clause (0)\n"); }
| "(" parameter_list tripledot_opt ")"		 { printf("parameter_clause (1)\n"); }
tripledot_opt:  | "..."		 { printf("tripledot_opt\n"); }
parameter_list :  parameter		 { printf("parameter_list (0)\n"); }
| parameter "," parameter_list		 { printf("parameter_list (1)\n"); }
parameter :  inout_opt let_opt hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 { printf("parameter (0)\n"); }
inout_opt:  | "inout"		 { printf("inout_opt\n"); }
let_opt:  | "let"		 { printf("let_opt\n"); }
hash_opt:  | "#"		 { printf("hash_opt\n"); }
local_parameter_name_opt:  | local_parameter_name		 { printf("local_parameter_name_opt\n"); }
default_argument_clause_opt:  | default_argument_clause		 { printf("default_argument_clause_opt\n"); }
parameter :  inout_opt "var" hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 { printf("parameter (0)\n"); }
parameter :  attributes_opt type		 { printf("parameter (0)\n"); }
parameter_name :  identifier		 { printf("parameter_name (0)\n"); }
| "_"		 { printf("parameter_name (1)\n"); }
local_parameter_name :  identifier		 { printf("local_parameter_name (0)\n"); }
| "_"		 { printf("local_parameter_name (1)\n"); }
default_argument_clause :  "=" expression		 { printf("default_argument_clause (0)\n"); }

// GRAMMAR OF AN ENUMERATION DECLARATION

enum_declaration :  attributes_opt union_style_enum		 { printf("enum_declaration (0)\n"); }
| attributes_opt raw_value_style_enum		 { printf("enum_declaration (1)\n"); }
union_style_enum :  enum_name generic_parameter_clause_opt "{" union_style_enum_members_opt "}"		 { printf("union_style_enum (0)\n"); }
union_style_enum_members_opt:  | union_style_enum_members		 { printf("union_style_enum_members_opt\n"); }
union_style_enum_members :  union_style_enum_member union_style_enum_members_opt		 { printf("union_style_enum_members (0)\n"); }
union_style_enum_member :  declaration		 { printf("union_style_enum_member (0)\n"); }
| union_style_enum_case_clause		 { printf("union_style_enum_member (1)\n"); }
union_style_enum_case_clause :  attributes_opt "case" union_style_enum_case_list		 { printf("union_style_enum_case_clause (0)\n"); }
union_style_enum_case_list :  union_style_enum_case		 { printf("union_style_enum_case_list (0)\n"); }
| union_style_enum_case "," union_style_enum_case_list		 { printf("union_style_enum_case_list (1)\n"); }
union_style_enum_case :  enum_case_name tuple_type_opt		 { printf("union_style_enum_case (0)\n"); }
tuple_type_opt:  | tuple_type		 { printf("tuple_type_opt\n"); }
enum_name :  identifier		 { printf("enum_name (0)\n"); }
enum_case_name :  identifier		 { printf("enum_case_name (0)\n"); }
raw_value_style_enum :  enum_name generic_parameter_clause_opt ":" type_identifier "{" raw_value_style_enum_members_opt "}"		 { printf("raw_value_style_enum (0)\n"); }
raw_value_style_enum_members_opt:  | raw_value_style_enum_members		 { printf("raw_value_style_enum_members_opt\n"); }
raw_value_style_enum_members :  raw_value_style_enum_member raw_value_style_enum_members_opt		 { printf("raw_value_style_enum_members (0)\n"); }
raw_value_style_enum_member :  declaration		 { printf("raw_value_style_enum_member (0)\n"); }
| raw_value_style_enum_case_clause		 { printf("raw_value_style_enum_member (1)\n"); }
raw_value_style_enum_case_clause :  attributes_opt "case" raw_value_style_enum_case_list		 { printf("raw_value_style_enum_case_clause (0)\n"); }
raw_value_style_enum_case_list :  raw_value_style_enum_case		 { printf("raw_value_style_enum_case_list (0)\n"); }
| raw_value_style_enum_case "," raw_value_style_enum_case_list		 { printf("raw_value_style_enum_case_list (1)\n"); }
raw_value_style_enum_case :  enum_case_name raw_value_assignment_opt		 { printf("raw_value_style_enum_case (0)\n"); }
raw_value_assignment_opt:  | raw_value_assignment		 { printf("raw_value_assignment_opt\n"); }
raw_value_assignment :  "=" literal		 { printf("raw_value_assignment (0)\n"); }

// GRAMMAR OF A STRUCTURE DECLARATION

struct_declaration :  attributes_opt "struct" struct_name generic_parameter_clause_opt type_inheritance_clause_opt struct_body		 { printf("struct_declaration (0)\n"); }
type_inheritance_clause_opt:  | type_inheritance_clause		 { printf("type_inheritance_clause_opt\n"); }
struct_name :  identifier		 { printf("struct_name (0)\n"); }
struct_body :  "{" declarations_opt "}"		 { printf("struct_body (0)\n"); }

// GRAMMAR OF A CLASS DECLARATION

class_declaration :  attributes_opt "class" class_name generic_parameter_clause_opt type_inheritance_clause_opt class_body		 { printf("class_declaration (0)\n"); }
class_name :  identifier		 { printf("class_name (0)\n"); }
class_body :  "{" declarations_opt "}"		 { printf("class_body (0)\n"); }

// GRAMMAR OF A PROTOCOL DECLARATION

protocol_declaration :  attributes_opt "protocol" protocol_name type_inheritance_clause_opt protocol_body		 { printf("protocol_declaration (0)\n"); }
protocol_name :  identifier		 { printf("protocol_name (0)\n"); }
protocol_body :  "{" protocol_member_declarations_opt "}"		 { printf("protocol_body (0)\n"); }
protocol_member_declarations_opt:  | protocol_member_declarations		 { printf("protocol_member_declarations_opt\n"); }
protocol_member_declaration :  protocol_property_declaration		 { printf("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_method_declaration		 { printf("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_initializer_declaration		 { printf("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_subscript_declaration		 { printf("protocol_member_declaration (0)\n"); }
protocol_member_declaration :  protocol_associated_type_declaration		 { printf("protocol_member_declaration (0)\n"); }
protocol_member_declarations :  protocol_member_declaration protocol_member_declarations_opt		 { printf("protocol_member_declarations (0)\n"); }

// GRAMMAR OF A PROTOCOL PROPERTY DECLARATION

protocol_property_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { printf("protocol_property_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL METHOD DECLARATION

protocol_method_declaration :  function_head function_name generic_parameter_clause_opt function_signature		 { printf("protocol_method_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL INITIALIZER DECLARATION

protocol_initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause		 { printf("protocol_initializer_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL SUBSCRIPT DECLARATION

protocol_subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { printf("protocol_subscript_declaration (0)\n"); }

// GRAMMAR OF A PROTOCOL ASSOCIATED TYPE DECLARATION

protocol_associated_type_declaration :  typealias_head type_inheritance_clause_opt typealias_assignment_opt		 { printf("protocol_associated_type_declaration (0)\n"); }
typealias_assignment_opt:  | typealias_assignment		 { printf("typealias_assignment_opt\n"); }

// GRAMMAR OF AN INITIALIZER DECLARATION

initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause initializer_body		 { printf("initializer_declaration (0)\n"); }
initializer_head :  attributes_opt convenience_opt "init"		 { printf("initializer_head (0)\n"); }
convenience_opt:  | "convenience"		 { printf("convenience_opt\n"); }
initializer_body :  code_block		 { printf("initializer_body (0)\n"); }

// GRAMMAR OF A DEINITIALIZER DECLARATION

deinitializer_declaration :  attributes_opt "deinit" code_block		 { printf("deinitializer_declaration (0)\n"); }

// GRAMMAR OF AN EXTENSION DECLARATION

extension_declaration :  "extension" type_identifier type_inheritance_clause_opt extension_body		 { printf("extension_declaration (0)\n"); }
extension_body :  "{" declarations_opt "}"		 { printf("extension_body (0)\n"); }

// GRAMMAR OF A SUBSCRIPT DECLARATION

subscript_declaration :  subscript_head subscript_result code_block		 { printf("subscript_declaration (0)\n"); }
subscript_declaration :  subscript_head subscript_result getter_setter_block		 { printf("subscript_declaration (0)\n"); }
subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { printf("subscript_declaration (0)\n"); }
subscript_head :  attributes_opt "subscript" parameter_clause		 { printf("subscript_head (0)\n"); }
subscript_result :  "_>" attributes_opt type		 { printf("subscript_result (0)\n"); }

// GRAMMAR OF AN OPERATOR DECLARATION

operator_declaration :  prefix_operator_declaration		 { printf("operator_declaration (0)\n"); }
| postfix_operator_declaration		 { printf("operator_declaration (1)\n"); }
| infix_operator_declaration		 { printf("operator_declaration (2)\n"); }
prefix_operator_declaration :  "operator" "prefix" operator "{" "}"		 { printf("prefix_operator_declaration (0)\n"); }
postfix_operator_declaration :  "operator" "postfix" operator "{" "}"		 { printf("postfix_operator_declaration (0)\n"); }
infix_operator_declaration :  "operator" "infix" operator "{" infix_operator_attributes_opt "}"		 { printf("infix_operator_declaration (0)\n"); }
infix_operator_attributes_opt:  | infix_operator_attributes		 { printf("infix_operator_attributes_opt\n"); }
infix_operator_attributes :  precedence_clause_opt associativity_clause_opt		 { printf("infix_operator_attributes (0)\n"); }
precedence_clause_opt:  | precedence_clause		 { printf("precedence_clause_opt\n"); }
associativity_clause_opt:  | associativity_clause		 { printf("associativity_clause_opt\n"); }
precedence_clause :  "precedence" precedence_level		 { printf("precedence_clause (0)\n"); }
precedence_level : 		 { printf("precedence_level (0)\n"); }
associativity_clause :  "associativity" associativity		 { printf("associativity_clause (0)\n"); }
associativity :  "left"		 { printf("associativity (0)\n"); }
| "right"		 { printf("associativity (1)\n"); }
| "none"		 { printf("associativity (2)\n"); }

/******* PATTERNS *******/


// GRAMMAR OF A PATTERN

pattern :  wildcard_pattern type_annotation_opt		 { printf("pattern (0)\n"); }
type_annotation_opt:  | type_annotation		 { printf("type_annotation_opt\n"); }
pattern :  identifier_pattern type_annotation_opt %dprec 1		 { printf("pattern (0)\n"); }
pattern :  value_binding_pattern		 { printf("pattern (0)\n"); }
pattern :  tuple_pattern type_annotation_opt		 { printf("pattern (0)\n"); }
pattern :  enum_case_pattern		 { printf("pattern (0)\n"); }
pattern :  type_casting_pattern		 { printf("pattern (0)\n"); }
pattern :  expression_pattern %dprec 2		 { printf("pattern (0)\n"); }

// GRAMMAR OF A WILDCARD PATTERN

wildcard_pattern :  "_"		 { printf("wildcard_pattern (0)\n"); }

// GRAMMAR OF AN IDENTIFIER PATTERN

identifier_pattern :  identifier		 { printf("identifier_pattern (0)\n"); }

// GRAMMAR OF A VALUE_BINDING PATTERN

value_binding_pattern :  "var" pattern		 { printf("value_binding_pattern (0)\n"); }
| "let" pattern		 { printf("value_binding_pattern (1)\n"); }

// GRAMMAR OF A TUPLE PATTERN

tuple_pattern :  "(" tuple_pattern_element_list_opt ")"		 { printf("tuple_pattern (0)\n"); }
tuple_pattern_element_list_opt:  | tuple_pattern_element_list		 { printf("tuple_pattern_element_list_opt\n"); }
tuple_pattern_element_list :  tuple_pattern_element		 { printf("tuple_pattern_element_list (0)\n"); }
| tuple_pattern_element "," tuple_pattern_element_list		 { printf("tuple_pattern_element_list (1)\n"); }
tuple_pattern_element :  pattern		 { printf("tuple_pattern_element (0)\n"); }

// GRAMMAR OF AN ENUMERATION CASE PATTERN

enum_case_pattern :  type_identifier_opt "." enum_case_name tuple_pattern_opt		 { printf("enum_case_pattern (0)\n"); }
type_identifier_opt:  | type_identifier		 { printf("type_identifier_opt\n"); }
tuple_pattern_opt:  | tuple_pattern		 { printf("tuple_pattern_opt\n"); }

// GRAMMAR OF A TYPE CASTING PATTERN

type_casting_pattern :  is_pattern		 { printf("type_casting_pattern (0)\n"); }
| as_pattern		 { printf("type_casting_pattern (1)\n"); }
is_pattern :  "is" type		 { printf("is_pattern (0)\n"); }
as_pattern :  pattern "as" type		 { printf("as_pattern (0)\n"); }

// GRAMMAR OF AN EXPRESSION PATTERN

expression_pattern :  expression		 { printf("expression_pattern (0)\n"); }

/******* ATTRIBUTES *******/


// GRAMMAR OF AN ATTRIBUTE

attribute :  "@" attribute_name attribute_argument_clause_opt		 { printf("attribute (0)\n"); }
attribute_argument_clause_opt:  | attribute_argument_clause		 { printf("attribute_argument_clause_opt\n"); }
attribute_name :  identifier		 { printf("attribute_name (0)\n"); }
attribute_argument_clause :  "(" balanced_tokens_opt ")"		 { printf("attribute_argument_clause (0)\n"); }
balanced_tokens_opt:  | balanced_tokens		 { printf("balanced_tokens_opt\n"); }
attributes :  attribute attributes_opt		 { printf("attributes (0)\n"); }
balanced_tokens :  balanced_token balanced_tokens_opt		 { printf("balanced_tokens (0)\n"); }
balanced_token :  "(" balanced_tokens_opt ")"		 { printf("balanced_token (0)\n"); }
balanced_token :  "[" balanced_tokens_opt "]"		 { printf("balanced_token (0)\n"); }
balanced_token :  "{" balanced_tokens_opt "}"		 { printf("balanced_token (0)\n"); }
balanced_token : 		 { printf("balanced_token (0)\n"); }
balanced_token : 		 { printf("balanced_token (0)\n"); }

/******* EXPRESSIONS *******/


// GRAMMAR OF AN EXPRESSION

expression :  prefix_expression binary_expressions_opt		 { printf("expression (0)\n"); }
binary_expressions_opt:  | binary_expressions		 { printf("binary_expressions_opt\n"); }
expression_list :  expression		 { printf("expression_list (0)\n"); }
| expression "," expression_list		 { printf("expression_list (1)\n"); }

// GRAMMAR OF A PREFIX EXPRESSION

prefix_expression :  prefix_operator_opt postfix_expression		 { printf("prefix_expression (0)\n"); }
prefix_operator_opt:  | prefix_operator		 { printf("prefix_operator_opt\n"); }
prefix_expression :  in_out_expression		 { printf("prefix_expression (0)\n"); }
in_out_expression :  "&" identifier		 { printf("in_out_expression (0)\n"); }

// GRAMMAR OF A BINARY EXPRESSION

binary_expression :  binary_operator prefix_expression		 { printf("binary_expression (0)\n"); }
binary_expression :  assignment_operator prefix_expression		 { printf("binary_expression (0)\n"); }
binary_expression :  conditional_operator prefix_expression		 { printf("binary_expression (0)\n"); }
binary_expression :  type_casting_operator		 { printf("binary_expression (0)\n"); }
binary_expressions :  binary_expression binary_expressions_opt		 { printf("binary_expressions (0)\n"); }

// GRAMMAR OF AN ASSIGNMENT OPERATOR

assignment_operator :  "="		 { printf("assignment_operator (0)\n"); }

// GRAMMAR OF A CONDITIONAL OPERATOR

conditional_operator :  "?" expression ":"		 { printf("conditional_operator (0)\n"); }

// GRAMMAR OF A TYPE_CASTING OPERATOR

type_casting_operator :  "is" type		 { printf("type_casting_operator (0)\n"); }
| "as" question_opt type		 { printf("type_casting_operator (1)\n"); }
question_opt:  | "?"		 { printf("question_opt\n"); }

// GRAMMAR OF A PRIMARY EXPRESSION

primary_expression :  identifier generic_argument_clause_opt		 { printf("primary_expression (0)\n"); }
generic_argument_clause_opt:  | generic_argument_clause		 { printf("generic_argument_clause_opt\n"); }
primary_expression :  literal_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  self_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  superclass_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  closure_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  parenthesized_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  implicit_member_expression		 { printf("primary_expression (0)\n"); }
primary_expression :  wildcard_expression		 { printf("primary_expression (0)\n"); }

// GRAMMAR OF A LITERAL EXPRESSION

literal_expression :  literal		 { $$ = [[LiteralExpression alloc] init:toSwift($1)]; printf("Literal: %s")}
literal_expression :  array_literal		 { printf("literal_expression (0)\n"); }
| dictionary_literal		 { printf("literal_expression (1)\n"); }
literal_expression :  "__FILE__"		 { printf("literal_expression (0)\n"); }
| "__LINE__"		 { printf("literal_expression (1)\n"); }
| "__COLUMN__"		 { printf("literal_expression (2)\n"); }
| "__FUNCTION__"		 { printf("literal_expression (3)\n"); }
array_literal :  "[" array_literal_items_opt "]"		 { printf("array_literal (0)\n"); }
array_literal_items_opt:  | array_literal_items		 { printf("array_literal_items_opt\n"); }
array_literal_items :  array_literal_item comma_opt		 { printf("array_literal_items (0)\n"); }
| array_literal_item "," array_literal_items		 { printf("array_literal_items (1)\n"); }
comma_opt:  | ","		 { printf("comma_opt\n"); }
array_literal_item :  expression		 { printf("array_literal_item (0)\n"); }
dictionary_literal :  "[" dictionary_literal_items "]"		 { printf("dictionary_literal (0)\n"); }
| "[" ":" "]"		 { printf("dictionary_literal (1)\n"); }
dictionary_literal_items :  dictionary_literal_item comma_opt		 { printf("dictionary_literal_items (0)\n"); }
| dictionary_literal_item "," dictionary_literal_items		 { printf("dictionary_literal_items (1)\n"); }
dictionary_literal_item :  expression ":" expression		 { printf("dictionary_literal_item (0)\n"); }

// GRAMMAR OF A SELF EXPRESSION

self_expression :  "self"		 { printf("self_expression (0)\n"); }
self_expression :  "self" "." identifier		 { printf("self_expression (0)\n"); }
self_expression :  "self" "[" expression "]"		 { printf("self_expression (0)\n"); }
self_expression :  "self" "." "init"		 { printf("self_expression (0)\n"); }

// GRAMMAR OF A SUPERCLASS EXPRESSION

superclass_expression :  superclass_method_expression		 { printf("superclass_expression (0)\n"); }
| superclass_subscript_expression		 { printf("superclass_expression (1)\n"); }
| superclass_initializer_expression		 { printf("superclass_expression (2)\n"); }
superclass_method_expression :  "super" "." identifier		 { printf("superclass_method_expression (0)\n"); }
superclass_subscript_expression :  "super" "[" expression "]"		 { printf("superclass_subscript_expression (0)\n"); }
superclass_initializer_expression :  "super" "." "init"		 { printf("superclass_initializer_expression (0)\n"); }

// GRAMMAR OF A CLOSURE EXPRESSION

closure_expression :  "{" closure_signature_opt statements "}"		 { printf("closure_expression (0)\n"); }
closure_signature_opt:  | closure_signature		 { printf("closure_signature_opt\n"); }
closure_signature :  parameter_clause function_result_opt "in"		 { printf("closure_signature (0)\n"); }
closure_signature :  identifier_list function_result_opt "in"		 { printf("closure_signature (0)\n"); }
closure_signature :  capture_list parameter_clause function_result_opt "in"		 { printf("closure_signature (0)\n"); }
closure_signature :  capture_list identifier_list function_result_opt "in"		 { printf("closure_signature (0)\n"); }
closure_signature :  capture_list "in"		 { printf("closure_signature (0)\n"); }
capture_list :  "[" capture_specifier expression "]"		 { printf("capture_list (0)\n"); }
capture_specifier :  "weak"		 { printf("capture_specifier (0)\n"); }
| "unowned"		 { printf("capture_specifier (1)\n"); }
| "unowned(safe)"		 { printf("capture_specifier (2)\n"); }
| "unowned(unsafe)"		 { printf("capture_specifier (3)\n"); }

// GRAMMAR OF A IMPLICIT MEMBER EXPRESSION

implicit_member_expression :  "." identifier		 { printf("implicit_member_expression (0)\n"); }

// GRAMMAR OF A PARENTHESIZED EXPRESSION

parenthesized_expression :  "(" expression_element_list_opt ")"		 { printf("parenthesized_expression (0)\n"); }
expression_element_list_opt:  | expression_element_list		 { printf("expression_element_list_opt\n"); }
expression_element_list :  expression_element		 { printf("expression_element_list (0)\n"); }
| expression_element "," expression_element_list		 { printf("expression_element_list (1)\n"); }
expression_element :  expression		 { printf("expression_element (0)\n"); }
| identifier ":" expression		 { printf("expression_element (1)\n"); }

// GRAMMAR OF A WILDCARD EXPRESSION

wildcard_expression :  "_"		 { printf("wildcard_expression (0)\n"); }

// GRAMMAR OF A POSTFIX EXPRESSION

postfix_expression :  primary_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  postfix_expression postfix_operator		 { printf("postfix_expression (0)\n"); }
postfix_expression :  function_call_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  initializer_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  explicit_member_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  postfix_self_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  dynamic_type_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  subscript_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  forced_value_expression		 { printf("postfix_expression (0)\n"); }
postfix_expression :  optional_chaining_expression		 { printf("postfix_expression (0)\n"); }

// GRAMMAR OF A FUNCTION CALL EXPRESSION

function_call_expression :  postfix_expression parenthesized_expression		 { printf("function_call_expression (0)\n"); }
function_call_expression :  postfix_expression parenthesized_expression_opt trailing_closure		 { printf("function_call_expression (0)\n"); }
parenthesized_expression_opt:  | parenthesized_expression		 { printf("parenthesized_expression_opt\n"); }
trailing_closure :  closure_expression		 { printf("trailing_closure (0)\n"); }

// GRAMMAR OF AN INITIALIZER EXPRESSION

initializer_expression :  postfix_expression "." "init"		 { printf("initializer_expression (0)\n"); }

// GRAMMAR OF AN EXPLICIT MEMBER EXPRESSION

explicit_member_expression :  postfix_expression "." NUMBER_LITERAL		 { printf("explicit_member_expression (0)\n"); }
explicit_member_expression :  postfix_expression "." identifier generic_argument_clause_opt		 { printf("explicit_member_expression (0)\n"); }

// GRAMMAR OF A SELF EXPRESSION

postfix_self_expression :  postfix_expression "." "self"		 { printf("postfix_self_expression (0)\n"); }

// GRAMMAR OF A DYNAMIC TYPE EXPRESSION

dynamic_type_expression :  postfix_expression "." "dynamicType"		 { printf("dynamic_type_expression (0)\n"); }

// GRAMMAR OF A SUBSCRIPT EXPRESSION

subscript_expression :  postfix_expression "[" expression_list "]"		 { printf("subscript_expression (0)\n"); }

// GRAMMAR OF A FORCED_VALUE EXPRESSION

forced_value_expression :  postfix_expression "!"		 { printf("forced_value_expression (0)\n"); }

// GRAMMAR OF AN OPTIONAL_CHAINING EXPRESSION

optional_chaining_expression :  postfix_expression "?"		 { printf("optional_chaining_expression (0)\n"); }

/******* LEXICAL STRUCTURE *******/


// GRAMMAR OF AN IDENTIFIER

identifier_list :  identifier		 { printf("identifier_list (0)\n"); }
| identifier "," identifier_list		 { printf("identifier_list (1)\n"); }

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
| "."
prefix_operator : PREFIX_OPERATOR "++"
| PREFIX_OPERATOR "--"
| PREFIX_OPERATOR "!"
| PREFIX_OPERATOR "~"
| PREFIX_OPERATOR "+"
| PREFIX_OPERATOR "-"
postfix_operator : POSTFIX_OPERATOR "++"
| POSTFIX_OPERATOR "--"

/******* TYPES *******/


// GRAMMAR OF A TYPE

type :  array_type		 { printf("type (0)\n"); }
| function_type		 { printf("type (1)\n"); }
| type_identifier		 { printf("type (2)\n"); }
| tuple_type		 { printf("type (3)\n"); }
| optional_type		 { printf("type (4)\n"); }
| implicitly_unwrapped_optional_type		 { printf("type (5)\n"); }
| protocol_composition_type		 { printf("type (6)\n"); }
| metatype_type		 { printf("type (7)\n"); }

// GRAMMAR OF A TYPE ANNOTATION

type_annotation :  ":" attributes_opt type		 { printf("type_annotation (0)\n"); }

// GRAMMAR OF A TYPE IDENTIFIER

type_identifier :  type_name generic_argument_clause_opt		 { printf("type_identifier (0)\n"); }
| type_name generic_argument_clause_opt "." type_identifier		 { printf("type_identifier (1)\n"); }
type_name :  identifier		 { printf("type_name (0)\n"); }

// GRAMMAR OF A TUPLE TYPE

tuple_type :  "(" tuple_type_body_opt ")"		 { printf("tuple_type (0)\n"); }
tuple_type_body_opt:  | tuple_type_body		 { printf("tuple_type_body_opt\n"); }
tuple_type_body :  tuple_type_element_list tripledot_opt		 { printf("tuple_type_body (0)\n"); }
tuple_type_element_list :  tuple_type_element		 { printf("tuple_type_element_list (0)\n"); }
| tuple_type_element "," tuple_type_element_list		 { printf("tuple_type_element_list (1)\n"); }
tuple_type_element :  attributes_opt inout_opt type		 { printf("tuple_type_element (0)\n"); }
| inout_opt element_name type_annotation		 { printf("tuple_type_element (1)\n"); }
element_name :  identifier		 { printf("element_name (0)\n"); }

// GRAMMAR OF A FUNCTION TYPE

function_type :  type "_>" type		 { printf("function_type (0)\n"); }

// GRAMMAR OF AN ARRAY TYPE

array_type :  type "[" "]"		 { printf("array_type (0)\n"); }
| array_type "[" "]"		 { printf("array_type (1)\n"); }

// GRAMMAR OF AN OPTIONAL TYPE

optional_type :  type "?"		 { printf("optional_type (0)\n"); }

// GRAMMAR OF AN IMPLICITLY UNWRAPPED OPTIONAL TYPE

implicitly_unwrapped_optional_type :  type "!"		 { printf("implicitly_unwrapped_optional_type (0)\n"); }

// GRAMMAR OF A PROTOCOL COMPOSITION TYPE

protocol_composition_type :  "protocol" "<" protocol_identifier_list_opt ">"		 { printf("protocol_composition_type (0)\n"); }
protocol_identifier_list_opt:  | protocol_identifier_list		 { printf("protocol_identifier_list_opt\n"); }
protocol_identifier_list :  protocol_identifier		 { printf("protocol_identifier_list (0)\n"); }
| protocol_identifier "," protocol_identifier_list		 { printf("protocol_identifier_list (1)\n"); }
protocol_identifier :  type_identifier		 { printf("protocol_identifier (0)\n"); }

// GRAMMAR OF A METATYPE TYPE

metatype_type :  type "." "Type"		 { printf("metatype_type (0)\n"); }
| type "." "Protocol"		 { printf("metatype_type (1)\n"); }

// GRAMMAR OF A TYPE INHERITANCE CLAUSE

type_inheritance_clause :  ":" type_inheritance_list		 { printf("type_inheritance_clause (0)\n"); }
type_inheritance_list :  type_identifier		 { printf("type_inheritance_list (0)\n"); }
| type_identifier "," type_inheritance_list		 { printf("type_inheritance_list (1)\n"); }

%%

void yyerror (const char *error)
{
    printf("Grammar Error!: %s\n", error);
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
    void bridge_yyparse(Lexer * instance) {
        lexer = instance;
        yyparse();
    }
}