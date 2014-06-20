%{
    #include <iostream>
    @class NSArray;
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();
%}

%glr-parser
%error-verbose
%debug

%union {
    int       val;  /* For the lexical analyser. NUMBER tokens */
    char *    str;  /* For the lexical analyser. IDENT tokens */
}

%token <val> identifier 1 "ID"
%token <val> CLASS 2 "class"
%token <val> DEINIT 3 "deinit"
%token <val> ENUM 4 "enum"
%token <val> EXTENSION 5 "extension"
%token <val> FUNC 6 "func"
%token <val> IMPORT 7 "import"
%token <val> INIT 8 "init"
%token <val> LET 9 "let"
%token <val> PROTOCOL 10 "protocol"
%token <val> STATIC 11 "static"
%token <val> STRUCT 12 "struct"
%token <val> SUBSCRIPT 13 "subscript"
%token <val> TYPEALIAS 14 "typealias"
%token <val> VAR 15 "var"
%token <val> BREAK 16 "break"
%token <val> CASE 17 "case"
%token <val> CONTINUE 18 "continue"
%token <val> DEFAULT 19 "default"
%token <val> DO 20 "do"
%token <val> ELSE 21 "else"
%token <val> FALLTHROUGH 22 "fallthrough"
%token <val> IF 23 "if"
%token <val> IN 24 "in"
%token <val> FOR 25 "for"
%token <val> RETURN 26 "return"
%token <val> SWITCH 27 "switch"
%token <val> WHERE 28 "where"
%token <val> WHILE 29 "while"
%token <val> AS 30 "as"
%token <val> DYNAMICTYPE 31 "dynamictype"
%token <val> IS 32 "is"
%token <val> NEW 33 "new"
%token <val> SUPER 34 "super"
%token <val> SELF 35 "self"
%token <val> SELF_CLASS 36 "Self"
%token <val> TYPE 37 "Type"
%token <val> ASSOCIATIVITY 38 "associativity"
%token <val> DIDSET 39 "didSet"
%token <val> GET 40 "get"
%token <val> INFIX 41 "infix"
%token <val> INOUT 42 "inout"
%token <val> LEFT 43 "left"
%token <val> MUTATING 44 "mutating"
%token <val> NONE 45 "none"
%token <val> NONMUTATING 46 "nonmutating"
%token <val> OPERATOR 47 "operator"
%token <val> OVERRIDE 48 "override"
%token <val> POSTFIX 49 "postfix"
%token <val> PRECEDENCE 50 "precedence"
%token <val> PREFIX 51 "prefix"
%token <val> RIGHT 52 "right"
%token <val> SET 53 "set"
%token <val> UNOWNED 54 "unowned"
%token <val> UNOWNED_SAFE 55 "unowned(safe)"
%token <val> UNOWNED_UNSAFE 56 "unowned(unsafe)"
%token <val> WEAK 57 "weak"
%token <val> WILLSET 58 "willSet"
%token <val> NUMBER_LITERAL 59 "number"
%token <val> STRING_LITERAL 60 "string"
%token <val> BOOLEAN_LITERAL 61 "bool"
%token <val> SLASH 62 "/"
%token <val> EQUAL 63 "="
%token <val> MINUS 64 "-"
%token <val> PLUS 65 "+"
%token <val> EXCLAMATION 66 "!"
%token <val> ASTERISK 67 "*"
%token <val> PERCENT 68 "%"
%token <val> LT 69 "<"
%token <val> GT 70 ">"
%token <val> AMPERSAND 71 "&"
%token <val> OR 72 "|"
%token <val> CARET 73 "^"
%token <val> TILDE 74 "~"
%token <val> DOT 75 "."
%token <val> EQUAL2 76 "=="
%token <val> EQUAL3 77 "==="
%token <val> PLUSPLUS 78 "++"
%token <val> MINUSMINUS 79 "--"
%token <val> DOT3 80 "..."
%token <val> LT2 81 "<<"
%token <val> GT2 82 ">>"
%token <val> AMPERSAND2 83 "&&"
%token <val> OR2 84 "||"
%token <val> PLUS_EQ 85 "+="
%token <val> MINUS_EQ 86 "-="
%token <val> ASTERISK_EQ 87 "*="
%token <val> SLASH_EQ 88 "/="
%token <val> PERCENT_EQ 89 "%="
%token <val> AMPERSAND_EQ 90 "&="
%token <val> CARET_EQ 91 "^="
%token <val> TILDE_EQ 92 "~="
%token <val> OR_EQ 93 "|="
%token <val> LPAR 94 "("
%token <val> RPAR 95 ")"
%token <val> LBRACKET 96 "["
%token <val> RBRACKET 97 "]"
%token <val> LBRACE 98 "{"
%token <val> RBRACE 99 "}"
%token <val> COMMA 100 ","
%token <val> COLON 101 ":"
%token <val> SEMICOLON 102 ";"
%token <val> AT 103 "@"
%token <val> UNDERSCORE 104 "_"
%token <val> HASH 105 "#"
%token <val> DOLLAR 106 "$"
%token <val> QUESTION 107 "?"
%token <val> PREFIX_OPERATOR 108 "prefix_op"
%token <val> POSTFIX_OPERATOR 109 "postfix_op"

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

literal_expression :  literal		 { printf("literal_expression (0)\n"); }
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

literal :  NUMBER_LITERAL		 { printf("literal (0)\n"); }
| BOOLEAN_LITERAL		 { printf("literal (1)\n"); }
| STRING_LITERAL		 { printf("literal (2)\n"); }

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
    return [lexer yylex];
}

extern "C" {
    void bridge_yyparse(Lexer * instance) {
        lexer = instance;
        yyparse();
    }
}