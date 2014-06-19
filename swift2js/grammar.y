%{
    #include <iostream>
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();
%}

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
%token <val> VERTICAL_BAR 72 "|"
%token <val> CARET 73 "^"
%token <val> TILDE 74 "~"
%token <val> DOT 75 "."
%token <val> LPAR 76 "("
%token <val> RPAR 77 ")"
%token <val> LBRACKET 78 "["
%token <val> RBRACKET 79 "]"
%token <val> LBRACE 80 "{"
%token <val> RBRACE 81 "}"
%token <val> COMMA 82 ","
%token <val> COLON 83 ":"
%token <val> SEMICOLON 84 ";"
%token <val> AT 85 "@"
%token <val> UNDERSCORE 86 "_"
%token <val> HASH 87 "#"
%token <val> DOLLAR 88 "$"
%token <val> QUESTION 89 "?"

%%

/******* STATEMENTS *******/

program: statements

// GRAMMAR OF A STATEMENT

statement :  expression semicolon_opt		 { }
semicolon_opt:  | ";"		 { }
statement :  declaration semicolon_opt		 { }
statement :  loop_statement semicolon_opt		 { }
statement :  branch_statement semicolon_opt		 { }
statement :  labeled_statement		 { }
statement :  control_transfer_statement semicolon_opt		 { }
statements :  statement statements_opt		 { }
statements_opt:  | statements		 { }

// GRAMMAR OF A LOOP STATEMENT

loop_statement :  for_statement		 { }
loop_statement :  for_in_statement		 { }
loop_statement :  while_statement		 { }
loop_statement :  do_while_statement		 { }

// GRAMMAR OF A FOR STATEMENT

for_statement :  "for" for_init_opt ";" expression_opt ";" expression_opt code_block		 { }
for_init_opt:  | for_init		 { }
expression_opt:  | expression		 { }
for_statement :  "for" "(" for_init_opt ";" expression_opt ";" expression_opt ")" code_block		 { }
for_init :  variable_declaration		 { }
| expression_list		 { }

// GRAMMAR OF A FOR_IN STATEMENT

for_in_statement :  "for" pattern "in" expression code_block		 { }

// GRAMMAR OF A WHILE STATEMENT

while_statement :  "while" while_condition code_block		 { }
while_condition :  expression		 { }
| declaration		 { }

// GRAMMAR OF A DO_WHILE STATEMENT

do_while_statement :  "do" code_block "while" while_condition		 { }

// GRAMMAR OF A BRANCH STATEMENT

branch_statement :  if_statement		 { }
branch_statement :  switch_statement		 { }

// GRAMMAR OF AN IF STATEMENT

if_statement :  "if" if_condition code_block else_clause_opt		 { }
else_clause_opt:  | else_clause		 { }
if_condition :  expression		 { }
| declaration		 { }
else_clause :  "else" code_block		 { }
| "else" if_statement		 { }

// GRAMMAR OF A SWITCH STATEMENT

switch_statement :  "switch" expression "{" switch_cases_opt "}"		 { }
switch_cases_opt:  | switch_cases		 { }
switch_cases :  switch_case switch_cases_opt		 { }
switch_case :  case_label statements		 { }
| default_label statements		 { }
switch_case :  case_label ";"		 { }
| default_label ";"		 { }
case_label :  "case" case_item_list ":"		 { }
case_item_list :  pattern guard_clause_opt		 { }
| pattern guard_clause_opt "," case_item_list		 { }
guard_clause_opt:  | guard_clause		 { }
default_label :  "default" ":"		 { }
guard_clause :  "where" guard_expression		 { }
guard_expression :  expression		 { }

// GRAMMAR OF A LABELED STATEMENT

labeled_statement :  statement_label loop_statement		 { }
| statement_label switch_statement		 { }
statement_label :  label_name ":"		 { }
label_name :  identifier		 { }

// GRAMMAR OF A CONTROL TRANSFER STATEMENT

control_transfer_statement :  break_statement		 { }
control_transfer_statement :  continue_statement		 { }
control_transfer_statement :  fallthrough_statement		 { }
control_transfer_statement :  return_statement		 { }

// GRAMMAR OF A BREAK STATEMENT

break_statement :  "break" label_name_opt		 { }
label_name_opt:  | label_name		 { }

// GRAMMAR OF A CONTINUE STATEMENT

continue_statement :  "continue" label_name_opt		 { }

// GRAMMAR OF A FALLTHROUGH STATEMENT

fallthrough_statement :  "fallthrough"		 { }

// GRAMMAR OF A RETURN STATEMENT

return_statement :  "return" expression_opt		 { }

/******* GENERIC PARAMETERS AND ARGUMENTS *******/


// GRAMMAR OF A GENERIC PARAMETER CLAUSE

generic_parameter_clause :  "<" generic_parameter_list requirement_clause_opt ">"		 { }
requirement_clause_opt:  | requirement_clause		 { }
generic_parameter_list :  generic_parameter		 { }
| generic_parameter "," generic_parameter_list		 { }
generic_parameter :  type_name		 { }
generic_parameter :  type_name ":" type_identifier		 { }
generic_parameter :  type_name ":" protocol_composition_type		 { }
requirement_clause :  "where" requirement_list		 { }
requirement_list :  requirement		 { }
| requirement "," requirement_list		 { }
requirement :  conformance_requirement		 { }
| same_type_requirement		 { }
conformance_requirement :  type_identifier ":" type_identifier		 { }
conformance_requirement :  type_identifier ":" protocol_composition_type		 { }
same_type_requirement :  type_identifier "==" type_identifier		 { }

// GRAMMAR OF A GENERIC ARGUMENT CLAUSE

generic_argument_clause :  "<" generic_argument_list ">"		 { }
generic_argument_list :  generic_argument		 { }
| generic_argument "," generic_argument_list		 { }
generic_argument :  type		 { }

/******* DECLARATIONS *******/


// GRAMMAR OF A DECLARATION

declaration :  import_declaration		 { }
declaration :  constant_declaration		 { }
declaration :  variable_declaration		 { }
declaration :  typealias_declaration		 { }
declaration :  function_declaration		 { }
declaration :  enum_declaration		 { }
declaration :  struct_declaration		 { }
declaration :  class_declaration		 { }
declaration :  protocol_declaration		 { }
declaration :  initializer_declaration		 { }
declaration :  deinitializer_declaration		 { }
declaration :  extension_declaration		 { }
declaration :  subscript_declaration		 { }
declaration :  operator_declaration		 { }
declarations :  declaration declarations_opt		 { }
declarations_opt:  | declarations		 { }
declaration_specifiers :  declaration_specifier declaration_specifiers_opt		 { }
declaration_specifiers_opt:  | declaration_specifiers		 { }
declaration_specifier :  "class"		 { }
| "mutating"		 { }
| "nonmutating"		 { }
| "override"		 { }
| "static"		 { }
| "unowned"		 { }
| "unowned(safe)"		 { }
| "unowned(unsafe)"		 { }
| "weak"		 { }

// GRAMMAR OF A TOP_LEVEL DECLARATION

top_level_declaration :  statements_opt		 { }

// GRAMMAR OF A CODE BLOCK

code_block :  "{" statements_opt "}"		 { }

// GRAMMAR OF AN IMPORT DECLARATION

import_declaration :  attributes_opt "import" import_kind_opt import_path		 { }
attributes_opt:  | attributes		 { }
import_kind_opt:  | import_kind		 { }
import_kind :  "typealias"		 { }
| "struct"		 { }
| "class"		 { }
| "enum"		 { }
| "protocol"		 { }
| "var"		 { }
| "func"		 { }
import_path :  import_path_identifier		 { }
| import_path_identifier "." import_path		 { }
import_path_identifier :  identifier		 { }
| operator		 { }

// GRAMMAR OF A CONSTANT DECLARATION

constant_declaration :  attributes_opt declaration_specifiers_opt "let" pattern_initializer_list		 { }
pattern_initializer_list :  pattern_initializer		 { }
| pattern_initializer "," pattern_initializer_list		 { }
pattern_initializer :  pattern initializer_opt		 { }
initializer_opt:  | initializer		 { }
initializer :  "=" expression		 { }

// GRAMMAR OF A VARIABLE DECLARATION

variable_declaration :  variable_declaration_head pattern_initializer_list		 { }
variable_declaration :  variable_declaration_head variable_name type_annotation code_block		 { }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_block		 { }
variable_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { }
variable_declaration :  variable_declaration_head variable_name type_annotation initializer_opt willSet_didSet_block		 { }
variable_declaration_head :  attributes_opt declaration_specifiers_opt "var"		 { }
variable_name :  identifier		 { }
getter_setter_block :  "{" getter_clause setter_clause_opt "}"		 { }
setter_clause_opt:  | setter_clause		 { }
getter_setter_block :  "{" setter_clause getter_clause "}"		 { }
getter_clause :  attributes_opt "get" code_block		 { }
setter_clause :  attributes_opt "set" setter_name_opt code_block		 { }
setter_name_opt:  | setter_name		 { }
setter_name :  "(" identifier ")"		 { }
getter_setter_keyword_block :  "{" getter_keyword_clause setter_keyword_clause_opt "}"		 { }
setter_keyword_clause_opt:  | setter_keyword_clause		 { }
getter_setter_keyword_block :  "{" setter_keyword_clause getter_keyword_clause "}"		 { }
getter_keyword_clause :  attributes_opt "get"		 { }
setter_keyword_clause :  attributes_opt "set"		 { }
willSet_didSet_block :  "{" willSet_clause didSet_clause_opt "}"		 { }
didSet_clause_opt:  | didSet_clause		 { }
willSet_didSet_block :  "{" didSet_clause willSet_clause "}"		 { }
willSet_clause :  attributes_opt "willSet" setter_name_opt code_block		 { }
didSet_clause :  attributes_opt "didSet" setter_name_opt code_block		 { }

// GRAMMAR OF A TYPE ALIAS DECLARATION

typealias_declaration :  typealias_head typealias_assignment		 { }
typealias_head :  "typealias" typealias_name		 { }
typealias_name :  identifier		 { }
typealias_assignment :  "=" type		 { }

// GRAMMAR OF A FUNCTION DECLARATION

function_declaration :  function_head function_name generic_parameter_clause_opt function_signature function_body		 { }
generic_parameter_clause_opt:  | generic_parameter_clause		 { }
function_head :  attributes_opt declaration_specifiers_opt "func"		 { }
function_name :  identifier		 { }
| operator		 { }
function_signature :  parameter_clauses function_result_opt		 { }
function_result_opt:  | function_result		 { }
function_result :  "_>" attributes_opt type		 { }
function_body :  code_block		 { }
parameter_clauses :  parameter_clause parameter_clauses_opt		 { }
parameter_clauses_opt:  | parameter_clauses		 { }
parameter_clause :  "(" ")"		 { }
| "(" parameter_list tripledot_opt ")"		 { }
tripledot_opt:  | "..."		 { }
parameter_list :  parameter		 { }
| parameter "," parameter_list		 { }
parameter :  inout_opt let_opt hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 { }
inout_opt:  | "inout"		 { }
let_opt:  | "let"		 { }
hash_opt:  | "#"		 { }
local_parameter_name_opt:  | local_parameter_name		 { }
default_argument_clause_opt:  | default_argument_clause		 { }
parameter :  inout_opt "var" hash_opt parameter_name local_parameter_name_opt type_annotation default_argument_clause_opt		 { }
parameter :  attributes_opt type		 { }
parameter_name :  identifier		 { }
| "_"		 { }
local_parameter_name :  identifier		 { }
| "_"		 { }
default_argument_clause :  "=" expression		 { }

// GRAMMAR OF AN ENUMERATION DECLARATION

enum_declaration :  attributes_opt union_style_enum		 { }
| attributes_opt raw_value_style_enum		 { }
union_style_enum :  enum_name generic_parameter_clause_opt "{" union_style_enum_members_opt "}"		 { }
union_style_enum_members_opt:  | union_style_enum_members		 { }
union_style_enum_members :  union_style_enum_member union_style_enum_members_opt		 { }
union_style_enum_member :  declaration		 { }
| union_style_enum_case_clause		 { }
union_style_enum_case_clause :  attributes_opt "case" union_style_enum_case_list		 { }
union_style_enum_case_list :  union_style_enum_case		 { }
| union_style_enum_case "," union_style_enum_case_list		 { }
union_style_enum_case :  enum_case_name tuple_type_opt		 { }
tuple_type_opt:  | tuple_type		 { }
enum_name :  identifier		 { }
enum_case_name :  identifier		 { }
raw_value_style_enum :  enum_name generic_parameter_clause_opt ":" type_identifier "{" raw_value_style_enum_members_opt "}"		 { }
raw_value_style_enum_members_opt:  | raw_value_style_enum_members		 { }
raw_value_style_enum_members :  raw_value_style_enum_member raw_value_style_enum_members_opt		 { }
raw_value_style_enum_member :  declaration		 { }
| raw_value_style_enum_case_clause		 { }
raw_value_style_enum_case_clause :  attributes_opt "case" raw_value_style_enum_case_list		 { }
raw_value_style_enum_case_list :  raw_value_style_enum_case		 { }
| raw_value_style_enum_case "," raw_value_style_enum_case_list		 { }
raw_value_style_enum_case :  enum_case_name raw_value_assignment_opt		 { }
raw_value_assignment_opt:  | raw_value_assignment		 { }
raw_value_assignment :  "=" literal		 { }

// GRAMMAR OF A STRUCTURE DECLARATION

struct_declaration :  attributes_opt "struct" struct_name generic_parameter_clause_opt type_inheritance_clause_opt struct_body		 { }
type_inheritance_clause_opt:  | type_inheritance_clause		 { }
struct_name :  identifier		 { }
struct_body :  "{" declarations_opt "}"		 { }

// GRAMMAR OF A CLASS DECLARATION

class_declaration :  attributes_opt "class" class_name generic_parameter_clause_opt type_inheritance_clause_opt class_body		 { }
class_name :  identifier		 { }
class_body :  "{" declarations_opt "}"		 { }

// GRAMMAR OF A PROTOCOL DECLARATION

protocol_declaration :  attributes_opt "protocol" protocol_name type_inheritance_clause_opt protocol_body		 { }
protocol_name :  identifier		 { }
protocol_body :  "{" protocol_member_declarations_opt "}"		 { }
protocol_member_declarations_opt:  | protocol_member_declarations		 { }
protocol_member_declaration :  protocol_property_declaration		 { }
protocol_member_declaration :  protocol_method_declaration		 { }
protocol_member_declaration :  protocol_initializer_declaration		 { }
protocol_member_declaration :  protocol_subscript_declaration		 { }
protocol_member_declaration :  protocol_associated_type_declaration		 { }
protocol_member_declarations :  protocol_member_declaration protocol_member_declarations_opt		 { }

// GRAMMAR OF A PROTOCOL PROPERTY DECLARATION

protocol_property_declaration :  variable_declaration_head variable_name type_annotation getter_setter_keyword_block		 { }

// GRAMMAR OF A PROTOCOL METHOD DECLARATION

protocol_method_declaration :  function_head function_name generic_parameter_clause_opt function_signature		 { }

// GRAMMAR OF A PROTOCOL INITIALIZER DECLARATION

protocol_initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause		 { }

// GRAMMAR OF A PROTOCOL SUBSCRIPT DECLARATION

protocol_subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { }

// GRAMMAR OF A PROTOCOL ASSOCIATED TYPE DECLARATION

protocol_associated_type_declaration :  typealias_head type_inheritance_clause_opt typealias_assignment_opt		 { }
typealias_assignment_opt:  | typealias_assignment		 { }

// GRAMMAR OF AN INITIALIZER DECLARATION

initializer_declaration :  initializer_head generic_parameter_clause_opt parameter_clause initializer_body		 { }
initializer_head :  attributes_opt convenience_opt "init"		 { }
convenience_opt:  | "convenience"		 { }
initializer_body :  code_block		 { }

// GRAMMAR OF A DEINITIALIZER DECLARATION

deinitializer_declaration :  attributes_opt "deinit" code_block		 { }

// GRAMMAR OF AN EXTENSION DECLARATION

extension_declaration :  "extension" type_identifier type_inheritance_clause_opt extension_body		 { }
extension_body :  "{" declarations_opt "}"		 { }

// GRAMMAR OF A SUBSCRIPT DECLARATION

subscript_declaration :  subscript_head subscript_result code_block		 { }
subscript_declaration :  subscript_head subscript_result getter_setter_block		 { }
subscript_declaration :  subscript_head subscript_result getter_setter_keyword_block		 { }
subscript_head :  attributes_opt "subscript" parameter_clause		 { }
subscript_result :  "_>" attributes_opt type		 { }

// GRAMMAR OF AN OPERATOR DECLARATION

operator_declaration :  prefix_operator_declaration		 { }
| postfix_operator_declaration		 { }
| infix_operator_declaration		 { }
prefix_operator_declaration :  "operator" "prefix" operator "{" "}"		 { }
postfix_operator_declaration :  "operator" "postfix" operator "{" "}"		 { }
infix_operator_declaration :  "operator" "infix" operator "{" infix_operator_attributes_opt "}"		 { }
infix_operator_attributes_opt:  | infix_operator_attributes		 { }
infix_operator_attributes :  precedence_clause_opt associativity_clause_opt		 { }
precedence_clause_opt:  | precedence_clause		 { }
associativity_clause_opt:  | associativity_clause		 { }
precedence_clause :  "precedence" precedence_level		 { }
precedence_level : 		 { }
associativity_clause :  "associativity" associativity		 { }
associativity :  "left"		 { }
| "right"		 { }
| "none"		 { }

/******* PATTERNS *******/


// GRAMMAR OF A PATTERN

pattern :  wildcard_pattern type_annotation_opt		 { }
type_annotation_opt:  | type_annotation		 { }
pattern :  identifier_pattern type_annotation_opt		 { }
pattern :  value_binding_pattern		 { }
pattern :  tuple_pattern type_annotation_opt		 { }
pattern :  enum_case_pattern		 { }
pattern :  type_casting_pattern		 { }
pattern :  expression_pattern		 { }

// GRAMMAR OF A WILDCARD PATTERN

wildcard_pattern :  "_"		 { }

// GRAMMAR OF AN IDENTIFIER PATTERN

identifier_pattern :  identifier		 { }

// GRAMMAR OF A VALUE_BINDING PATTERN

value_binding_pattern :  "var" pattern		 { }
| "let" pattern		 { }

// GRAMMAR OF A TUPLE PATTERN

tuple_pattern :  "(" tuple_pattern_element_list_opt ")"		 { }
tuple_pattern_element_list_opt:  | tuple_pattern_element_list		 { }
tuple_pattern_element_list :  tuple_pattern_element		 { }
| tuple_pattern_element "," tuple_pattern_element_list		 { }
tuple_pattern_element :  pattern		 { }

// GRAMMAR OF AN ENUMERATION CASE PATTERN

enum_case_pattern :  type_identifier_opt "." enum_case_name tuple_pattern_opt		 { }
type_identifier_opt:  | type_identifier		 { }
tuple_pattern_opt:  | tuple_pattern		 { }

// GRAMMAR OF A TYPE CASTING PATTERN

type_casting_pattern :  is_pattern		 { }
| as_pattern		 { }
is_pattern :  "is" type		 { }
as_pattern :  pattern "as" type		 { }

// GRAMMAR OF AN EXPRESSION PATTERN

expression_pattern :  expression		 { }

/******* ATTRIBUTES *******/


// GRAMMAR OF AN ATTRIBUTE

attribute :  "@" attribute_name attribute_argument_clause_opt		 { }
attribute_argument_clause_opt:  | attribute_argument_clause		 { }
attribute_name :  identifier		 { }
attribute_argument_clause :  "(" balanced_tokens_opt ")"		 { }
balanced_tokens_opt:  | balanced_tokens		 { }
attributes :  attribute attributes_opt		 { }
balanced_tokens :  balanced_token balanced_tokens_opt		 { }
balanced_token :  "(" balanced_tokens_opt ")"		 { }
balanced_token :  "[" balanced_tokens_opt "]"		 { }
balanced_token :  "{" balanced_tokens_opt "}"		 { }
balanced_token : 		 { }
balanced_token : 		 { }

/******* EXPRESSIONS *******/


// GRAMMAR OF AN EXPRESSION

expression :  prefix_expression binary_expressions_opt		 { }
binary_expressions_opt:  | binary_expressions		 { }
expression_list :  expression		 { }
| expression "," expression_list		 { }

// GRAMMAR OF A PREFIX EXPRESSION

prefix_expression :  prefix_operator_opt postfix_expression		 { }
prefix_operator_opt:  | prefix_operator		 { }
prefix_expression :  in_out_expression		 { }
in_out_expression :  "&" identifier		 { }

// GRAMMAR OF A BINARY EXPRESSION

binary_expression :  binary_operator prefix_expression		 { }
binary_expression :  assignment_operator prefix_expression		 { }
binary_expression :  conditional_operator prefix_expression		 { }
binary_expression :  type_casting_operator		 { }
binary_expressions :  binary_expression binary_expressions_opt		 { }

// GRAMMAR OF AN ASSIGNMENT OPERATOR

assignment_operator :  "="		 { }

// GRAMMAR OF A CONDITIONAL OPERATOR

conditional_operator :  "?" expression ":"		 { }

// GRAMMAR OF A TYPE_CASTING OPERATOR

type_casting_operator :  "is" type		 { }
| "as" question_opt type		 { }
question_opt:  | "?"		 { }

// GRAMMAR OF A PRIMARY EXPRESSION

primary_expression :  identifier generic_argument_clause_opt		 { }
generic_argument_clause_opt:  | generic_argument_clause		 { }
primary_expression :  literal_expression		 { }
primary_expression :  self_expression		 { }
primary_expression :  superclass_expression		 { }
primary_expression :  closure_expression		 { }
primary_expression :  parenthesized_expression		 { }
primary_expression :  implicit_member_expression		 { }
primary_expression :  wildcard_expression		 { }

// GRAMMAR OF A LITERAL EXPRESSION

literal_expression :  literal		 { }
literal_expression :  array_literal		 { }
| dictionary_literal		 { }
literal_expression :  "__FILE__"		 { }
| "__LINE__"		 { }
| "__COLUMN__"		 { }
| "__FUNCTION__"		 { }
array_literal :  "[" array_literal_items_opt "]"		 { }
array_literal_items_opt:  | array_literal_items		 { }
array_literal_items :  array_literal_item comma_opt		 { }
| array_literal_item "," array_literal_items		 { }
comma_opt:  | ","		 { }
array_literal_item :  expression		 { }
dictionary_literal :  "[" dictionary_literal_items "]"		 { }
| "[" ":" "]"		 { }
dictionary_literal_items :  dictionary_literal_item comma_opt		 { }
| dictionary_literal_item "," dictionary_literal_items		 { }
dictionary_literal_item :  expression ":" expression		 { }

// GRAMMAR OF A SELF EXPRESSION

self_expression :  "self"		 { }
self_expression :  "self" "." identifier		 { }
self_expression :  "self" "[" expression "]"		 { }
self_expression :  "self" "." "init"		 { }

// GRAMMAR OF A SUPERCLASS EXPRESSION

superclass_expression :  superclass_method_expression		 { }
| superclass_subscript_expression		 { }
| superclass_initializer_expression		 { }
superclass_method_expression :  "super" "." identifier		 { }
superclass_subscript_expression :  "super" "[" expression "]"		 { }
superclass_initializer_expression :  "super" "." "init"		 { }

// GRAMMAR OF A CLOSURE EXPRESSION

closure_expression :  "{" closure_signature_opt statements "}"		 { }
closure_signature_opt:  | closure_signature		 { }
closure_signature :  parameter_clause function_result_opt "in"		 { }
closure_signature :  identifier_list function_result_opt "in"		 { }
closure_signature :  capture_list parameter_clause function_result_opt "in"		 { }
closure_signature :  capture_list identifier_list function_result_opt "in"		 { }
closure_signature :  capture_list "in"		 { }
capture_list :  "[" capture_specifier expression "]"		 { }
capture_specifier :  "weak"		 { }
| "unowned"		 { }
| "unowned(safe)"		 { }
| "unowned(unsafe)"		 { }

// GRAMMAR OF A IMPLICIT MEMBER EXPRESSION

implicit_member_expression :  "." identifier		 { }

// GRAMMAR OF A PARENTHESIZED EXPRESSION

parenthesized_expression :  "(" expression_element_list_opt ")"		 { }
expression_element_list_opt:  | expression_element_list		 { }
expression_element_list :  expression_element		 { }
| expression_element "," expression_element_list		 { }
expression_element :  expression		 { }
| identifier ":" expression		 { }

// GRAMMAR OF A WILDCARD EXPRESSION

wildcard_expression :  "_"		 { }

// GRAMMAR OF A POSTFIX EXPRESSION

postfix_expression :  primary_expression		 { }
postfix_expression :  postfix_expression postfix_operator		 { }
postfix_expression :  function_call_expression		 { }
postfix_expression :  initializer_expression		 { }
postfix_expression :  explicit_member_expression		 { }
postfix_expression :  postfix_self_expression		 { }
postfix_expression :  dynamic_type_expression		 { }
postfix_expression :  subscript_expression		 { }
postfix_expression :  forced_value_expression		 { }
postfix_expression :  optional_chaining_expression		 { }

// GRAMMAR OF A FUNCTION CALL EXPRESSION

function_call_expression :  postfix_expression parenthesized_expression		 { }
function_call_expression :  postfix_expression parenthesized_expression_opt trailing_closure		 { }
parenthesized_expression_opt:  | parenthesized_expression		 { }
trailing_closure :  closure_expression		 { }

// GRAMMAR OF AN INITIALIZER EXPRESSION

initializer_expression :  postfix_expression "." "init"		 { }

// GRAMMAR OF AN EXPLICIT MEMBER EXPRESSION

explicit_member_expression :  postfix_expression "." NUMBER_LITERAL		 { }
explicit_member_expression :  postfix_expression "." identifier generic_argument_clause_opt		 { }

// GRAMMAR OF A SELF EXPRESSION

postfix_self_expression :  postfix_expression "." "self"		 { }

// GRAMMAR OF A DYNAMIC TYPE EXPRESSION

dynamic_type_expression :  postfix_expression "." "dynamicType"		 { }

// GRAMMAR OF A SUBSCRIPT EXPRESSION

subscript_expression :  postfix_expression "[" expression_list "]"		 { }

// GRAMMAR OF A FORCED_VALUE EXPRESSION

forced_value_expression :  postfix_expression "!"		 { }

// GRAMMAR OF AN OPTIONAL_CHAINING EXPRESSION

optional_chaining_expression :  postfix_expression "?"		 { }

/******* LEXICAL STRUCTURE *******/


// GRAMMAR OF AN IDENTIFIER
identifier_list :  identifier		 { }
| identifier "," identifier_list		 { }

// GRAMMAR OF A LITERAL

literal :  NUMBER_LITERAL		 { }
| BOOLEAN_LITERAL		 { }
| STRING_LITERAL		 { }


// GRAMMAR OF OPERATORS

operator :  operator_character operator_opt		 { }
operator_opt:  | operator		 { }
operator_character :  "/"		 { }
| "="		 { }
| "-"		 { }
| "+"		 { }
| "!"		 { }
| "*"		 { }
| "%"		 { }
| "<"		 { }
| ">"		 { }
| "&"		 { }
| "|"		 { }
| "^"		 { }
| "~"		 { }
| "."		 { }
binary_operator :  operator		 { }
prefix_operator :  operator		 { }
postfix_operator :  operator		 { }

/******* TYPES *******/


// GRAMMAR OF A TYPE

type :  array_type		 { }
| function_type		 { }
| type_identifier		 { }
| tuple_type		 { }
| optional_type		 { }
| implicitly_unwrapped_optional_type		 { }
| protocol_composition_type		 { }
| metatype_type		 { }

// GRAMMAR OF A TYPE ANNOTATION

type_annotation :  ":" attributes_opt type		 { }

// GRAMMAR OF A TYPE IDENTIFIER

type_identifier :  type_name generic_argument_clause_opt		 { }
| type_name generic_argument_clause_opt "." type_identifier		 { }
type_name :  identifier		 { }

// GRAMMAR OF A TUPLE TYPE

tuple_type :  "(" tuple_type_body_opt ")"		 { }
tuple_type_body_opt:  | tuple_type_body		 { }
tuple_type_body :  tuple_type_element_list tripledot_opt		 { }
tuple_type_element_list :  tuple_type_element		 { }
| tuple_type_element "," tuple_type_element_list		 { }
tuple_type_element :  attributes_opt inout_opt type		 { }
| inout_opt element_name type_annotation		 { }
element_name :  identifier		 { }

// GRAMMAR OF A FUNCTION TYPE

function_type :  type "_>" type		 { }

// GRAMMAR OF AN ARRAY TYPE

array_type :  type "[" "]"		 { }
| array_type "[" "]"		 { }

// GRAMMAR OF AN OPTIONAL TYPE

optional_type :  type "?"		 { }

// GRAMMAR OF AN IMPLICITLY UNWRAPPED OPTIONAL TYPE

implicitly_unwrapped_optional_type :  type "!"		 { }

// GRAMMAR OF A PROTOCOL COMPOSITION TYPE

protocol_composition_type :  "protocol" "<" protocol_identifier_list_opt ">"		 { }
protocol_identifier_list_opt:  | protocol_identifier_list		 { }
protocol_identifier_list :  protocol_identifier		 { }
| protocol_identifier "," protocol_identifier_list		 { }
protocol_identifier :  type_identifier		 { }

// GRAMMAR OF A METATYPE TYPE

metatype_type :  type "." "Type"		 { }
| type "." "Protocol"		 { }

// GRAMMAR OF A TYPE INHERITANCE CLAUSE

type_inheritance_clause :  ":" type_inheritance_list		 { }
type_inheritance_list :  type_identifier		 { }
| type_identifier "," type_inheritance_list		 { }

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