/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Skeleton implementation for Bison GLR parsers in C

   Copyright (C) 2002-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C GLR parser skeleton written by Paul Hilfinger.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "glr.c"

/* Pure parsers.  */
#define YYPURE 0






/* First part of user declarations.  */
#line 1 "grammar.y" /* glr.c:207  */

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

#line 75 "grammar.mm" /* glr.c:207  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    identifier = 1,
    CLASS = 2,
    DEINIT = 3,
    ENUM = 4,
    EXTENSION = 5,
    FUNC = 6,
    IMPORT = 7,
    INIT = 8,
    LET = 9,
    PROTOCOL = 10,
    STATIC = 11,
    STRUCT = 12,
    SUBSCRIPT = 13,
    TYPEALIAS = 14,
    VAR = 15,
    BREAK = 16,
    CASE = 17,
    CONTINUE = 18,
    DEFAULT = 19,
    DO = 20,
    ELSE = 21,
    FALLTHROUGH = 22,
    IF = 23,
    IN = 24,
    FOR = 25,
    RETURN = 26,
    SWITCH = 27,
    WHERE = 28,
    WHILE = 29,
    AS = 30,
    DYNAMICTYPE = 31,
    IS = 32,
    NEW = 33,
    SUPER = 34,
    SELF = 35,
    SELF_CLASS = 36,
    TYPE = 37,
    ASSOCIATIVITY = 38,
    DIDSET = 39,
    GET = 40,
    INFIX = 41,
    INOUT = 42,
    LEFT = 43,
    MUTATING = 44,
    NONE = 45,
    NONMUTATING = 46,
    OPERATOR = 47,
    OVERRIDE = 48,
    POSTFIX = 49,
    PRECEDENCE = 50,
    PREFIX = 51,
    RIGHT = 52,
    SET = 53,
    UNOWNED = 54,
    UNOWNED_SAFE = 55,
    UNOWNED_UNSAFE = 56,
    WEAK = 57,
    WILLSET = 58,
    NUMBER_LITERAL = 59,
    STRING_LITERAL = 60,
    BOOLEAN_LITERAL = 61,
    SLASH = 62,
    EQUAL = 63,
    MINUS = 64,
    PLUS = 65,
    EXCLAMATION = 66,
    ASTERISK = 67,
    PERCENT = 68,
    LT = 69,
    GT = 70,
    AMPERSAND = 71,
    OR = 72,
    CARET = 73,
    TILDE = 74,
    DOT = 75,
    EQUAL2 = 76,
    EQUAL3 = 77,
    PLUSPLUS = 78,
    MINUSMINUS = 79,
    DOT3 = 80,
    LT2 = 81,
    GT2 = 82,
    AMPERSAND2 = 83,
    OR2 = 84,
    ARROW = 85,
    PLUS_EQ = 86,
    MINUS_EQ = 87,
    ASTERISK_EQ = 88,
    SLASH_EQ = 89,
    PERCENT_EQ = 90,
    AMPERSAND_EQ = 91,
    CARET_EQ = 92,
    TILDE_EQ = 93,
    OR_EQ = 94,
    LPAR = 95,
    RPAR = 96,
    LBRACKET = 97,
    RBRACKET = 98,
    LBRACE = 99,
    RBRACE = 100,
    COMMA = 101,
    COLON = 102,
    SEMICOLON = 103,
    AT = 104,
    UNDERSCORE = 105,
    HASH = 106,
    DOLLAR = 107,
    QUESTION = 108,
    PREFIX_OPERATOR = 109,
    POSTFIX_OPERATOR = 110
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 26 "grammar.y" /* glr.c:212  */

    ASTNode * node;
    char *    str;
    GenericType * type;

#line 222 "grammar.mm" /* glr.c:212  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);


/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* Default (constant) value used for initialization for null
   right-hand sides.  Unlike the standard yacc.c template, here we set
   the default value of $$ to a zeroed-out value.  Since the default
   value is undefined, this behavior is technically correct.  */
static YYSTYPE yyval_default;

/* Copy the second part of user declarations.  */

#line 250 "grammar.mm" /* glr.c:230  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YYFREE
# define YYFREE free
#endif
#ifndef YYMALLOC
# define YYMALLOC malloc
#endif
#ifndef YYREALLOC
# define YYREALLOC realloc
#endif

#define YYSIZEMAX ((size_t) -1)

#ifdef __cplusplus
   typedef bool yybool;
#else
   typedef unsigned char yybool;
#endif
#define yytrue 1
#define yyfalse 0

#ifndef YYSETJMP
# include <setjmp.h>
# define YYJMP_BUF jmp_buf
# define YYSETJMP(Env) setjmp (Env)
/* Pacify clang.  */
# define YYLONGJMP(Env, Val) (longjmp (Env, Val), YYASSERT (0))
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#ifndef YYASSERT
# define YYASSERT(Condition) ((void) ((Condition) || (abort (), 0)))
#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  122
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1724

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  120
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  270
/* YYNRULES -- Number of rules.  */
#define YYNRULES  524
/* YYNRULES -- Number of states.  */
#define YYNSTATES  800
/* YYMAXRHS -- Maximum number of symbols on right-hand side of rule.  */
#define YYMAXRHS 9
/* YYMAXLEFT -- Maximum number of symbols to the left of a handle
   accessed by $0, $-1, etc., in any rule.  */
#define YYMAXLEFT 0

/* YYTRANSLATE(X) -- Bison symbol number corresponding to X.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   264

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const unsigned char yytranslate[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    48,    49,    50,    51,
      52,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    63,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    80,    81,
      82,    83,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,    96,    97,    98,    99,   100,   101,
     102,   103,   104,   105,   106,   107,   108,   109,   110,   111,
     112,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,   113,   114,
     115,   116,   117,   118,   119
};

#if YYDEBUG
/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   414,   414,   421,   422,   422,   423,   424,   425,   426,
     427,   428,   429,   433,   434,   435,   436,   440,   441,   441,
     442,   442,   443,   444,   445,   449,   453,   454,   455,   459,
     463,   464,   468,   469,   469,   470,   471,   472,   473,   477,
     478,   478,   479,   480,   481,   482,   483,   484,   485,   486,
     487,   487,   488,   489,   490,   494,   495,   496,   497,   501,
     502,   503,   504,   508,   509,   509,   513,   517,   521,   528,
     529,   529,   530,   531,   532,   533,   534,   535,   536,   537,
     538,   539,   540,   541,   542,   546,   547,   548,   549,   556,
     557,   558,   559,   560,   561,   562,   563,   564,   565,   566,
     567,   568,   569,   570,   571,   571,   572,   573,   573,   574,
     575,   576,   577,   578,   579,   580,   581,   582,   586,   587,
     591,   592,   592,   593,   593,   594,   595,   596,   597,   598,
     599,   600,   601,   602,   603,   604,   608,   609,   610,   611,
     612,   613,   613,   614,   618,   619,   620,   621,   622,   623,
     624,   625,   626,   626,   627,   628,   629,   630,   630,   631,
     632,   633,   633,   634,   635,   636,   637,   638,   638,   639,
     640,   641,   645,   646,   647,   648,   652,   656,   656,   657,
     658,   659,   660,   661,   661,   662,   663,   664,   665,   665,
     666,   667,   668,   668,   669,   670,   671,   675,   675,   676,
     676,   677,   677,   678,   678,   679,   679,   680,   681,   682,
     683,   684,   685,   686,   690,   691,   692,   693,   693,   694,
     695,   696,   697,   698,   699,   700,   701,   701,   702,   703,
     704,   705,   705,   706,   707,   708,   709,   710,   711,   712,
     713,   713,   714,   718,   719,   719,   720,   721,   725,   726,
     727,   731,   732,   733,   734,   734,   735,   736,   737,   738,
     739,   740,   744,   748,   752,   756,   760,   761,   761,   765,
     766,   767,   767,   768,   772,   776,   777,   781,   782,   783,
     784,   785,   789,   790,   791,   792,   793,   794,   795,   795,
     796,   797,   797,   798,   798,   799,   800,   801,   802,   803,
     804,   811,   812,   812,   813,   814,   815,   816,   817,   818,
     822,   826,   830,   831,   835,   836,   836,   837,   838,   839,
     843,   844,   844,   845,   845,   849,   850,   851,   852,   856,
     863,   864,   864,   865,   866,   867,   867,   868,   869,   870,
     871,   872,   873,   874,   881,   882,   883,   884,   888,   889,
     889,   890,   891,   895,   896,   897,   898,   899,   900,   906,
     907,   908,   908,   912,   913,   913,   914,   915,   916,   917,
     918,   919,   920,   924,   925,   926,   927,   928,   929,   930,
     931,   932,   932,   933,   934,   935,   935,   936,   937,   938,
     939,   940,   941,   945,   946,   947,   948,   952,   953,   954,
     955,   956,   957,   961,   962,   962,   963,   964,   965,   966,
     967,   968,   969,   970,   971,   972,   976,   980,   981,   981,
     982,   983,   984,   985,   989,   993,   994,   995,   996,   997,
     998,   999,  1000,  1001,  1002,  1006,  1007,  1008,  1008,  1009,
    1013,  1017,  1018,  1022,  1026,  1030,  1034,  1038,  1045,  1046,
    1050,  1051,  1052,  1055,  1055,  1055,  1056,  1056,  1057,  1057,
    1058,  1058,  1059,  1059,  1060,  1061,  1061,  1062,  1062,  1063,
    1064,  1065,  1065,  1066,  1066,  1067,  1067,  1068,  1068,  1069,
    1070,  1071,  1072,  1073,  1074,  1075,  1076,  1083,  1084,  1085,
    1086,  1087,  1088,  1089,  1090,  1094,  1098,  1099,  1100,  1104,
    1105,  1105,  1106,  1107,  1108,  1109,  1110,  1111,  1115,  1119,
    1120,  1121,  1125,  1129,  1133,  1134,  1134,  1135,  1136,  1137,
    1141,  1142,  1146,  1147,  1148
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 1
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "\"ID\"", "\"class\"", "\"deinit\"",
  "\"enum\"", "\"extension\"", "\"func\"", "\"import\"", "\"init\"",
  "\"let\"", "\"protocol\"", "\"static\"", "\"struct\"", "\"subscript\"",
  "\"typealias\"", "\"var\"", "\"break\"", "\"case\"", "\"continue\"",
  "\"default\"", "\"do\"", "\"else\"", "\"fallthrough\"", "\"if\"",
  "\"in\"", "\"for\"", "\"return\"", "\"switch\"", "\"where\"",
  "\"while\"", "\"as\"", "\"dynamictype\"", "\"is\"", "\"new\"",
  "\"super\"", "\"self\"", "\"Self\"", "\"Type\"", "\"associativity\"",
  "\"didSet\"", "\"get\"", "\"infix\"", "\"inout\"", "\"left\"",
  "\"mutating\"", "\"none\"", "\"nonmutating\"", "\"operator\"",
  "\"override\"", "\"postfix\"", "\"precedence\"", "\"prefix\"",
  "\"right\"", "\"set\"", "\"unowned\"", "\"unowned(safe)\"",
  "\"unowned(unsafe)\"", "\"weak\"", "\"willSet\"", "\"number\"",
  "\"string\"", "\"bool\"", "\"/\"", "\"=\"", "\"-\"", "\"+\"", "\"!\"",
  "\"*\"", "\"%\"", "\"<\"", "\">\"", "\"&\"", "\"|\"", "\"^\"", "\"~\"",
  "\".\"", "\"==\"", "\"===\"", "\"++\"", "\"--\"", "\"...\"", "\"<<\"",
  "\">>\"", "\"&&\"", "\"||\"", "\"->\"", "\"+=\"", "\"-=\"", "\"*=\"",
  "\"/=\"", "\"%=\"", "\"&=\"", "\"^=\"", "\"~=\"", "\"|=\"", "\"(\"",
  "\")\"", "\"[\"", "\"]\"", "\"{\"", "\"}\"", "\",\"", "\":\"", "\";\"",
  "\"@\"", "\"_\"", "\"#\"", "\"$\"", "\"?\"", "\"prefix_op\"",
  "\"postfix_op\"", "\"convenience\"", "\"__FILE__\"", "\"__LINE__\"",
  "\"__COLUMN__\"", "\"__FUNCTION__\"", "\"dynamicType\"", "\"Protocol\"",
  "$accept", "program", "statement", "semicolon_opt", "statements",
  "loop_statement", "for_statement", "for_init_opt", "expression_opt",
  "for_init", "for_in_statement", "while_statement", "while_condition",
  "do_while_statement", "branch_statement", "if_statement",
  "else_clause_opt", "if_condition", "else_clause", "switch_statement",
  "switch_cases_opt", "switch_cases", "switch_case", "case_label",
  "case_item_list", "guard_clause_opt", "default_label", "guard_clause",
  "guard_expression", "labeled_statement", "statement_label", "label_name",
  "control_transfer_statement", "break_statement", "label_name_opt",
  "continue_statement", "fallthrough_statement", "return_statement",
  "generic_parameter_clause", "requirement_clause_opt",
  "generic_parameter_list", "generic_parameter", "requirement_clause",
  "requirement_list", "requirement", "conformance_requirement",
  "same_type_requirement", "generic_argument_clause",
  "generic_argument_list", "generic_argument", "declaration",
  "declarations", "declarations_opt", "declaration_specifiers",
  "declaration_specifiers_opt", "declaration_specifier", "code_block",
  "import_declaration", "attributes_opt", "import_kind_opt", "import_kind",
  "import_path", "import_path_identifier", "constant_declaration",
  "pattern_initializer_list", "pattern_initializer", "initializer_opt",
  "initializer", "variable_declaration", "variable_declaration_head",
  "variable_name", "getter_setter_block", "setter_clause_opt",
  "getter_clause", "setter_clause", "setter_name_opt", "setter_name",
  "getter_setter_keyword_block", "setter_keyword_clause_opt",
  "getter_keyword_clause", "setter_keyword_clause", "willSet_didSet_block",
  "didSet_clause_opt", "willSet_clause", "didSet_clause",
  "typealias_declaration", "typealias_head", "typealias_name",
  "typealias_assignment", "function_declaration",
  "generic_parameter_clause_opt", "function_head", "function_name",
  "function_signature", "function_result_opt", "function_result",
  "function_body", "parameter_clauses", "parameter_clauses_opt",
  "parameter_clause", "tripledot_opt", "parameter_list", "parameter",
  "inout_opt", "let_opt", "hash_opt", "local_parameter_name_opt",
  "default_argument_clause_opt", "parameter_name", "local_parameter_name",
  "default_argument_clause", "enum_declaration", "union_style_enum",
  "union_style_enum_members_opt", "union_style_enum_members",
  "union_style_enum_member", "union_style_enum_case_clause",
  "union_style_enum_case_list", "union_style_enum_case", "tuple_type_opt",
  "enum_name", "enum_case_name", "raw_value_style_enum",
  "raw_value_style_enum_members_opt", "raw_value_style_enum_members",
  "raw_value_style_enum_member", "raw_value_style_enum_case_clause",
  "raw_value_style_enum_case_list", "raw_value_style_enum_case",
  "raw_value_assignment_opt", "raw_value_assignment", "struct_declaration",
  "type_inheritance_clause_opt", "struct_name", "struct_body",
  "class_declaration", "class_name", "class_body", "protocol_declaration",
  "protocol_name", "protocol_body", "protocol_member_declarations_opt",
  "protocol_member_declaration", "protocol_member_declarations",
  "protocol_property_declaration", "protocol_method_declaration",
  "protocol_initializer_declaration", "protocol_subscript_declaration",
  "protocol_associated_type_declaration", "typealias_assignment_opt",
  "initializer_declaration", "initializer_head", "convenience_opt",
  "initializer_body", "deinitializer_declaration", "extension_declaration",
  "extension_body", "subscript_declaration", "subscript_head",
  "subscript_result", "operator_declaration",
  "prefix_operator_declaration", "postfix_operator_declaration",
  "infix_operator_declaration", "infix_operator_attributes_opt",
  "infix_operator_attributes", "precedence_clause_opt",
  "associativity_clause_opt", "precedence_clause", "precedence_level",
  "associativity_clause", "associativity", "pattern",
  "type_annotation_opt", "wildcard_pattern", "identifier_pattern",
  "value_binding_pattern", "tuple_pattern",
  "tuple_pattern_element_list_opt", "tuple_pattern_element_list",
  "tuple_pattern_element", "enum_case_pattern", "type_identifier_opt",
  "tuple_pattern_opt", "type_casting_pattern", "is_pattern", "as_pattern",
  "expression_pattern", "attribute", "attribute_argument_clause_opt",
  "attribute_name", "attribute_argument_clause", "balanced_tokens_opt",
  "attributes", "balanced_tokens", "balanced_token", "expression",
  "expression_list", "prefix_expression", "prefix_operator_opt",
  "in_out_expression", "binary_expression", "binary_expressions",
  "type_casting_operator", "question_opt", "primary_expression",
  "generic_argument_clause_opt", "literal_expression", "array_literal",
  "array_literal_items_opt", "array_literal_items", "comma_opt",
  "array_literal_item", "dictionary_literal", "dictionary_literal_items",
  "dictionary_literal_item", "self_expression", "superclass_expression",
  "superclass_method_expression", "superclass_subscript_expression",
  "superclass_initializer_expression", "closure_expression",
  "closure_signature_opt", "closure_signature", "capture_list",
  "capture_specifier", "implicit_member_expression",
  "parenthesized_expression", "expression_element_list_opt",
  "expression_element_list", "expression_element", "wildcard_expression",
  "postfix_expression", "function_call_expression",
  "parenthesized_expression_opt", "trailing_closure",
  "initializer_expression", "explicit_member_expression",
  "postfix_self_expression", "dynamic_type_expression",
  "subscript_expression", "forced_value_expression",
  "optional_chaining_expression", "identifier_list", "literal", "operator",
  "binary_operator", "prefix_operator", "postfix_operator", "type",
  "type_annotation", "type_identifier", "type_name", "tuple_type",
  "tuple_type_body_opt", "tuple_type_body", "tuple_type_element_list",
  "tuple_type_element", "element_name", "function_type", "array_type",
  "optional_type", "implicitly_unwrapped_optional_type",
  "protocol_composition_type", "protocol_identifier_list_opt",
  "protocol_identifier_list", "protocol_identifier", "metatype_type",
  "type_inheritance_clause", "type_inheritance_list", YY_NULLPTR
};
#endif

#define YYPACT_NINF -522
#define YYTABLE_NINF -501

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const short int yypact[] =
{
    1090,  -522,    43,    58,    97,   163,    10,  -522,   123,  1470,
    1179,   -14,   403,   315,   241,   246,   629,   267,   735,  -522,
     180,  -522,  -522,  -522,  -522,   180,  -522,  -522,  -522,   370,
     224,   180,  -522,  -522,  -522,  -522,   180,  -522,  1329,  -522,
    -522,   102,  -522,   278,  -522,  1325,  -522,  -522,  -522,  -522,
    -522,   296,  -522,  -522,  -522,   285,  -522,  -522,  -522,  -522,
     276,  -522,   180,  1531,   317,  -522,  -522,  -522,   289,   329,
    -522,  -522,  -522,  -522,  -522,   837,   371,    10,  -522,  -522,
     226,   135,   318,   189,   614,  -522,   312,  -522,   555,  -522,
     283,   326,   331,  -522,   341,  -522,   349,  -522,  -522,  -522,
    -522,    77,  -522,  -522,  -522,  -522,   346,    10,  -522,  -522,
    1612,  1612,  1612,  -522,  -522,   353,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,   454,    10,   491,   460,  -522,   467,   390,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,    54,
     555,  -522,   296,  -522,   479,   174,    76,  -522,   398,   392,
      51,  -522,   189,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,   309,   296,
    -522,  -522,  -522,  -522,    43,  -522,   390,   276,   405,  -522,
    -522,   435,   189,   -14,   -14,  1579,  -522,  -522,   -14,   444,
     -22,   151,  -522,  -522,  -522,   551,    45,   170,   106,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,   237,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,    43,   455,  -522,
     189,  -522,   480,  -522,   462,   617,   539,   540,   542,   498,
      91,   189,   359,  -522,  -522,  -522,   481,  -522,  -522,  -522,
    -522,   472,   546,   493,  -522,   495,   199,  -522,   583,   -14,
     189,   276,  -522,  -522,  -522,  -522,   599,   -14,   212,  -522,
     503,   505,   514,   374,  -522,  -522,  -522,   296,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,  -522,  1377,  -522,  -522,   289,
    -522,   296,   279,  -522,  -522,   804,  -522,  -522,   272,  -522,
     929,    16,   -14,  -522,   456,  -522,  -522,   390,   592,   523,
     519,    10,   189,   860,  -522,  -522,  -522,  -522,   189,   471,
    -522,   524,  -522,  -522,  -522,   122,   -14,   216,   -14,  -522,
     525,  -522,   536,  -522,   533,   538,   543,   549,  -522,   534,
     552,   548,   553,   478,   559,  1113,  -522,   215,   559,  -522,
      37,   -14,  -522,   558,   560,  -522,   562,  -522,    92,  -522,
     568,   564,   476,    43,  -522,  -522,    19,  -522,  -522,    43,
    -522,   619,   665,   571,  -522,   600,   578,   264,  -522,    12,
     189,   586,  -522,   588,   199,  -522,  1177,   584,    10,   520,
     189,  -522,   595,   580,  -522,  1467,   589,   596,  -522,   212,
     962,   985,   150,   597,   598,   393,   544,   354,   603,  -522,
     429,   289,  -522,  -522,   625,  -522,   602,   289,  -522,   189,
     600,   601,   314,  -522,   108,    43,  -522,  -522,   612,  -522,
    -522,  -522,  -522,    10,   559,   390,    43,   645,  -522,    43,
     305,  -522,  -522,   476,   537,    75,   276,   178,   276,   522,
     -14,  -522,  -522,   622,  -522,  -522,   626,   -14,  -522,    50,
    -522,   -14,  -522,   148,  -522,  -522,   148,  -522,   734,  -522,
    -522,  -522,  -522,   -14,   276,   713,  -522,   639,  -522,   559,
     559,   717,   673,  -522,  -522,  -522,  -522,   647,  -522,  -522,
      43,    92,  -522,   646,  -522,   189,  -522,  -522,  -522,  -522,
     677,  -522,   662,   189,  -522,   392,  -522,  -522,  -522,    89,
    -522,  -522,  -522,   659,  -522,  -522,   668,  -522,   -21,  -522,
     693,  -522,  -522,   670,   327,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,   648,  -522,   736,  -522,  -522,  -522,   679,
     675,   676,  -522,  -522,   678,  1377,   105,  -522,   680,   476,
     684,   254,  -522,   682,   682,  -522,  1254,   681,  -522,   108,
    -522,   685,   276,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
     688,  -522,  -522,   158,  -522,  -522,  -522,  -522,    10,   210,
     730,   686,  -522,   745,   691,   739,   697,  -522,   753,   698,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,   543,  -522,
    -522,   701,   189,  -522,  -522,   776,   778,  -522,  -522,  -522,
    -522,  -522,  -522,  -522,  -522,    43,   476,  -522,  -522,   -16,
      10,  -522,   -14,   702,  -522,  -522,  -522,   219,  -522,  -522,
    -522,  -522,  -522,    92,  -522,  -522,   243,   803,   289,  1325,
     707,   105,  -522,  -522,  -522,  -522,  -522,  -522,   296,   285,
      92,  -522,  -522,  -522,  -522,    35,    35,   599,  -522,  -522,
     121,    25,   238,   276,    43,    43,   305,  -522,   807,    10,
    -522,   714,  -522,    10,  -522,  -522,  -522,  -522,  -522,  -522,
     476,  -522,  -522,  -522,   715,  -522,  -522,  -522,  1483,  -522,
    -522,  -522,  -522,   712,   322,  -522,   392,   278,   296,  -522,
    -522,   390,   716,   718,  -522,  -522,    55,    55,  -522,   719,
     721,  -522,  1312,   722,  -522,   121,  -522,   714,   714,   775,
     723,  -522,   759,   724,  -522,  -522,  -522,  -522,   725,  -522,
      10,  -522,  -522,   716,  -522,  -522,   390,  -522,   276,  -522,
    -522,  -522,  -522,   392,  -522,   392,   599,  -522,  -522,   599,
    -522,  -522,    10,    10,  -522,  -522,  -522,  -522,  -522,  -522,
      18,   762,   762,  -522,   763,  -522,   726,  -522,  -522,   -14,
    -522,  -522,  -522,   450,  -522,  -522,   599,  -522,  -522,  -522
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const unsigned short int yydefact[] =
{
     121,    58,     0,     0,    64,    64,     0,    67,   121,   349,
      20,   349,   121,     0,     0,     0,     0,     0,   121,     2,
       4,    13,    14,    15,    16,     4,    30,    31,     9,     0,
       0,     4,    59,    60,    61,    62,     4,    89,   107,    90,
      91,   349,    92,     0,    93,     0,    94,    95,    96,    97,
      98,   177,    99,   100,   101,     0,   102,   282,   283,   284,
     121,   122,     4,   344,     0,   351,   350,   498,   244,   364,
     174,   173,    65,    63,    66,   121,     0,     0,    36,    35,
     311,   349,   349,     0,   349,   310,     0,    19,   107,    23,
       0,   302,   302,   305,   302,   307,     0,   308,   325,   326,
     309,   329,    24,   322,    68,    21,     0,     0,    28,    27,
       0,     0,     0,   352,   333,   331,   484,   483,   481,   482,
     479,   480,     1,    12,     5,     7,     8,    55,    56,    57,
      10,     6,   228,   109,     0,   123,     0,   113,     0,     0,
     110,   111,   112,   114,   115,   116,   117,   272,   108,     0,
     107,   214,   177,   215,     0,   311,   349,   144,   137,     0,
     140,   329,     0,   172,   180,   456,   460,   462,   464,   465,
     467,   469,   470,   471,   473,   475,   477,   458,   459,   472,
     474,   463,   461,   466,   457,   468,   476,   478,     0,   177,
     181,   453,   454,   455,     0,   178,     0,   121,     0,   337,
       3,   361,     0,   349,   349,   357,   345,   356,   349,   364,
       0,   393,   450,   452,   451,     0,   349,   349,   404,   424,
     376,   377,   378,   379,   425,   366,   374,   375,   367,   368,
     397,   398,   399,   369,   371,   370,   372,   348,   427,   428,
     429,   430,   431,   432,   433,   434,   373,     0,     0,   245,
       0,   365,   496,   119,     0,   121,    33,   313,   312,     0,
     121,     0,   327,   489,   490,   488,   487,   491,   492,   493,
     494,     0,   319,     0,   316,   317,   349,   109,     0,   349,
       0,   121,   301,   303,   304,   306,     0,   349,    40,    26,
       0,     0,     0,   335,   330,   332,   249,   177,   274,   127,
     128,   131,   129,   126,   125,   130,     0,   124,   252,   244,
     246,   177,   121,   280,   179,   349,   149,   106,     0,   270,
     349,     0,   349,   139,   175,   485,   486,     0,    70,    72,
      74,     0,     0,   121,   277,   278,   279,   362,     0,   359,
     354,     0,   358,   353,   363,     0,   349,     0,   349,   416,
       0,   422,     0,   419,   420,     0,   387,     0,   382,   385,
       0,   385,   448,     0,   183,   121,   405,     0,   183,   446,
       0,   349,   447,   435,     0,   426,   523,   522,   121,   275,
       0,    86,    88,     0,   118,    29,     0,    32,    34,   515,
     198,   197,     0,     0,   501,   192,   503,     0,   513,     0,
       0,     0,   512,     0,   349,   314,   349,     0,     0,   328,
       0,   229,   323,   346,   347,   349,     0,     0,    41,    40,
     121,   121,   288,     0,     0,   335,   335,   335,     0,   336,
     335,   244,   134,   120,   132,   135,     0,   244,   190,     0,
     192,   194,   199,   136,   121,     0,   138,   145,     0,   142,
     146,   147,   143,     0,   183,   188,     0,     0,    71,     0,
       0,   273,   269,   281,   107,   121,   121,   121,   121,   360,
     349,   400,   402,     0,   394,   396,     0,   349,   417,   349,
     389,   349,   380,   349,   383,   388,   349,   390,     0,   413,
     414,   415,   412,   349,   121,     0,   184,     0,   410,   183,
     183,     0,   364,   440,   443,   441,   444,     0,   439,   436,
       0,   121,   105,     0,    85,     0,   497,    38,    37,   519,
       0,   516,   517,     0,   507,     0,   499,   193,   502,   121,
     511,   520,   521,   508,   509,   510,     0,   318,   349,    25,
     495,   324,   320,     0,    50,    52,    39,    42,    45,    43,
      46,    44,   296,     0,   289,   293,   292,   286,   285,     0,
       0,     0,   334,   338,     0,     0,   121,   251,     0,   208,
       0,   121,   200,   201,   201,   220,   107,     0,   218,   121,
     221,     0,   121,   148,   186,   176,   182,   189,   187,    77,
      78,    80,    81,     0,    69,    73,    75,    76,   164,   165,
       0,     0,   153,     0,     0,     0,     0,   162,     0,     0,
     355,   401,   395,   423,   421,   392,   387,   384,     0,   391,
     449,     0,     0,   406,   403,     0,     0,   407,   442,   445,
     524,   103,   276,    87,   514,     0,   505,   506,   504,   349,
       0,    47,   349,    48,    51,   295,   287,     0,   290,   294,
     339,   340,   341,   121,   248,   133,   107,     0,   244,     0,
       0,   121,   255,   256,   257,   258,   259,   260,   177,     0,
     121,   243,   191,   195,   202,     0,     0,     0,   216,   219,
     121,     0,   121,   121,     0,     0,     0,   155,     0,     0,
     158,   157,   151,     0,   154,   165,   160,   164,   163,   411,
     185,   408,   409,   518,     0,    17,    53,    54,   349,   298,
     300,   299,   297,     0,     0,   150,     0,   267,   177,   253,
     261,     0,     0,     0,   209,   210,   203,   203,   222,   223,
     226,   234,   107,     0,   232,   121,   235,   157,   157,     0,
       0,   168,     0,     0,    79,    84,    82,    83,     0,   156,
       0,    49,   250,     0,   268,   266,     0,   264,   121,   265,
     247,   211,   212,     0,   204,     0,     0,   225,   227,     0,
     230,   233,     0,     0,   166,   169,   159,    22,   262,   263,
       0,   205,   205,   224,   240,   236,   237,   171,   170,   349,
     207,   206,   196,     0,   239,   241,     0,   213,   242,   238
};

  /* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
    -522,  -522,  -522,   288,    23,   801,  -522,   747,  -270,  -522,
    -522,  -522,   590,  -522,  -522,   447,  -522,  -522,  -522,   806,
     420,  -522,  -522,  -522,   139,  -522,  -522,  -522,  -522,  -522,
    -522,   437,  -522,  -522,   838,  -522,  -522,  -522,  -522,  -522,
     389,  -522,  -522,   172,  -522,  -522,  -522,  -522,   339,  -522,
       5,  -522,  -482,  -522,   -74,  -522,    -5,  -522,    -6,  -522,
    -522,   293,  -522,  -522,  -219,  -522,  -522,   550,    30,  -521,
     203,   554,  -522,   404,   407,  -253,  -522,  -299,  -522,   401,
     412,  -522,  -522,   200,   208,  -522,  -517,  -522,   175,  -522,
    -147,  -516,   234,   138,  -332,  -522,  -522,   440,  -522,  -132,
     463,   333,  -522,  -279,  -522,   328,   179,   125,   229,  -522,
    -522,  -522,  -522,   334,  -522,  -522,  -522,   142,  -522,  -522,
    -522,  -271,  -522,   177,  -522,  -522,  -522,   120,  -522,  -522,
    -522,  -522,  -283,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,   256,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -510,  -522,  -522,  -522,  -522,  -522,  -522,  -496,   249,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,     7,   304,  -522,  -522,  -522,   507,  -522,   518,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,   -18,  -522,  -522,  -522,     0,  -244,  -176,  -522,
    -522,  -522,   720,  -522,  -522,  -522,  -184,  -522,  -522,  -522,
     443,   566,  -522,  -522,   434,  -522,  -522,  -522,  -522,  -522,
    -522,   556,  -522,  -522,  -522,  -522,  -522,   692,  -522,   449,
    -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,  -522,
    -522,  -522,  -522,  -330,   149,   -91,   -29,   -43,   694,   -55,
    -155,    22,  -164,   205,  -522,  -522,   416,  -522,  -522,  -522,
    -522,  -522,  -522,  -425,  -522,   306,  -522,  -522,  -522,   439
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const short int yydefgoto[] =
{
      -1,    17,    18,   125,   254,    20,    21,    86,   104,    87,
      22,    23,   107,    24,    25,    26,   387,    77,   388,    27,
     417,   418,   419,   420,   543,   643,   421,   644,   706,    28,
      29,    30,    31,    32,    73,    33,    34,    35,   195,   457,
     328,   329,   458,   589,   590,   591,   592,   251,   380,   381,
      36,   512,   513,   148,   149,   150,   687,    37,    38,   306,
     307,   433,   434,    39,   157,   158,   448,   323,    40,    41,
     159,   335,   601,   465,   466,   689,   690,   336,   606,   467,
     468,   583,   740,   682,   683,    42,    43,    71,   163,    44,
     196,    45,   189,   453,   495,   496,   585,   454,   588,   455,
     528,   440,   441,   392,   574,   675,   763,   790,   726,   764,
     791,    46,   151,   577,   578,   579,   580,   728,   729,   767,
     152,   730,   153,   733,   734,   735,   736,   785,   786,   794,
     795,    47,   248,   311,   671,    48,   297,   654,    49,   309,
     567,   660,   661,   662,   663,   664,   665,   666,   667,   755,
      50,    51,   154,   462,    52,    53,   379,    54,    55,   198,
      56,    57,    58,    59,   553,   554,   555,   648,   556,   645,
     649,   712,   160,   282,    91,    92,    93,    94,   273,   274,
     275,    95,    96,   542,    97,    98,    99,   100,    60,   294,
     115,   295,   428,    61,   429,   430,   161,   102,    63,    64,
      65,   205,   206,   207,   338,   224,   252,   225,   226,   357,
     358,   484,   359,   227,   360,   361,   228,   229,   230,   231,
     232,   233,   365,   366,   367,   493,   234,   235,   352,   353,
     354,   236,   237,   238,   374,   509,   239,   240,   241,   242,
     243,   244,   245,   368,   246,   190,   191,    66,   193,   382,
     283,   263,    69,   264,   393,   394,   395,   396,   525,   265,
     266,   267,   268,   269,   520,   521,   522,   270,   249,   377
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const short int yytable[] =
{
      62,    76,   192,    88,   321,   318,   407,   313,    79,   101,
     105,   106,   109,    78,   278,   412,    90,   108,    62,   290,
     291,   292,   451,    19,    68,   344,   436,   340,   262,   631,
     330,   103,   343,   442,   208,   597,   501,   500,   724,    89,
     502,   123,   327,   414,     8,   657,    67,   503,   350,   658,
     659,   531,    14,   350,   199,   345,   668,    14,   761,    14,
     697,    70,   314,   103,   331,   315,   737,   192,   192,   192,
     669,   316,   256,   695,   504,    62,   317,   346,    88,    80,
     -20,   322,   -20,   280,   101,   738,   364,    81,   257,   258,
      16,   272,  -121,    82,  -121,    16,   443,    16,   505,     2,
       1,   446,   289,   103,   103,   155,   103,   324,     3,   362,
      83,    75,   523,    81,    89,     2,   322,   333,    14,    82,
      75,     3,   586,    14,     3,   471,  -121,   507,     2,   298,
       2,   532,   472,   390,   536,   390,    83,     3,    80,     3,
     657,    13,   725,  -418,   658,   659,    81,   339,   564,    14,
     431,   668,    82,  -321,   568,   506,    16,    13,   620,  -349,
    -349,    16,   762,   272,   437,   669,     1,   625,   626,    83,
      13,   713,    13,   156,  -315,    14,   208,  -152,   103,  -321,
     287,    15,  -346,    85,  -349,  -349,  -349,    16,   723,  -500,
    -291,   332,    67,   334,  -104,    15,    14,    15,    15,   156,
    -349,   259,   552,   312,   341,   363,   397,  -254,    14,    85,
    -217,    15,  -321,    16,    15,   435,   351,   356,   362,   474,
    -349,    14,  -349,  -231,  -349,   409,   475,    15,   347,    15,
    -349,   415,   156,   416,    16,   499,   685,  -349,  -349,  -349,
    -349,   498,    85,    14,   113,  -498,    16,   277,  -386,   114,
     348,  -311,  -288,  -271,   391,   109,   137,  -121,   139,    16,
     108,   747,   686,   192,   709,  -197,   710,   122,   640,   376,
    -381,  -197,    14,   711,   355,   410,   105,   463,  -150,   408,
    -161,    16,  -121,   469,    15,   124,   260,   413,   261,   140,
    -197,   141,   442,   142,   610,   330,  -197,  -498,   390,   143,
     144,   145,   146,  -311,   -20,   369,   439,   688,    67,   279,
      16,  -157,   312,   126,   370,   280,   447,   259,   628,   130,
     209,    80,   452,   390,   131,   572,   461,   464,   129,    81,
     314,   573,   398,    62,   216,    82,   371,   103,  -348,   316,
    -167,   399,   103,   162,    15,   533,   473,   372,   476,   188,
     200,   400,    83,   210,   211,   540,   147,   642,   110,   280,
      15,  -197,  -197,   401,   530,    62,   111,   194,   112,   704,
     637,   413,   197,   444,   402,   717,   445,   438,   212,   213,
     214,   518,    15,   511,   569,    15,  -197,  -197,   497,   325,
     326,    14,     6,   247,   215,  -321,   284,     9,   285,    11,
     250,    12,   255,   539,   105,   516,  -121,   559,   560,   561,
       2,   519,   563,   272,   216,   156,   217,   276,   218,     3,
      62,    62,   544,   759,   219,    85,   286,   398,   103,    16,
     281,   220,   221,   222,   223,   281,   399,   103,   576,  -349,
    -349,    72,    72,   549,   551,   281,   400,   288,   584,   575,
     293,   425,    13,   426,   778,   427,  -335,   296,   401,   600,
     603,   605,   608,   308,  -349,  -349,  -349,   581,   636,   402,
     310,   425,  -335,   426,   435,   427,    14,   613,   593,   351,
    -349,   615,   596,   616,   772,   773,   618,   312,   622,   319,
     425,  -335,   426,   621,   427,   299,   281,   300,   784,   301,
    -349,   320,  -349,   302,  -349,   303,   333,   304,   305,    15,
    -349,   212,   213,   214,    16,   250,   511,  -349,  -349,  -349,
    -349,   721,   192,   391,   398,   784,   425,  -335,   426,  -335,
     427,  -335,   376,   399,   489,   490,   491,   492,   105,   398,
     132,   133,   134,   400,   398,   337,   135,  -271,   399,   136,
     137,   138,   139,   399,   349,   401,   378,   383,   400,   277,
     656,   753,   386,   400,   384,   439,   402,   700,   137,   389,
     401,   756,   280,   576,   280,   401,   681,   404,   280,   598,
     403,   402,   714,   140,   575,   141,   402,   142,   398,   757,
     398,   405,   599,   143,   144,   145,   146,   399,   406,   399,
     316,   140,   411,   141,   422,   142,   423,   400,   781,   400,
     782,   143,   144,   145,   146,   424,   192,    80,  -121,   401,
    -121,   401,   456,   460,     2,    81,   459,  -121,   470,   477,
     402,    82,   402,     3,   478,   705,   479,   483,   480,   105,
     514,   425,   707,   426,  -335,   427,   494,   481,    83,   482,
     147,   486,   485,  -349,  -349,   656,   488,   519,   511,  -435,
    -121,   218,  -121,   390,  -121,   510,    13,   515,   524,   526,
    -121,  -121,  -121,  -121,   732,   511,   739,   742,  -349,  -349,
    -349,   529,   527,   287,   749,   731,   534,    14,   535,   538,
      14,  -321,   156,   545,  -349,   116,   117,   118,   546,   557,
     558,   562,   565,   566,   571,   119,   593,   745,   746,   120,
     121,   156,  -315,   582,  -349,   544,  -349,   594,  -349,   -18,
      15,    85,   611,    15,  -349,    16,   612,   398,    16,   732,
     103,  -349,  -349,  -349,  -349,   -11,   399,   362,     1,   623,
     731,   624,     2,   627,   250,   777,   400,   629,   632,   634,
     646,     3,   780,     4,   -11,     5,   -11,     6,   401,     7,
       8,   398,     9,    10,    11,   635,    12,   787,   788,   402,
     399,  -349,  -349,   639,   641,   651,   647,   650,   652,   653,
     400,   670,   672,   678,    13,   691,   680,   693,   692,   797,
     674,   684,   401,   694,   695,   697,  -349,  -349,  -349,   696,
     698,   699,   701,   402,   702,   708,   715,    80,    14,   719,
     748,   688,  -349,   750,   752,    81,   737,   758,   260,   738,
     760,    82,   766,   776,   770,   774,   775,   789,   793,   796,
     127,   271,  -349,   517,  -349,   128,  -349,   -11,    83,   547,
       1,    15,  -349,    74,     2,   385,    16,   751,   595,  -349,
    -349,  -349,  -349,     3,   633,     4,   744,     5,   655,     6,
     716,     7,     8,     1,     9,    10,    11,     2,    12,   609,
     604,   449,   602,  -349,  -349,   450,     3,    14,     4,   607,
       5,  -321,     6,   743,     7,     8,    13,     9,    10,    11,
     741,    12,   754,   718,   779,   587,  -349,  -349,  -349,  -349,
    -349,   156,   676,   570,   673,   727,   765,   792,   783,    13,
      14,    85,   771,   679,  -349,    16,   799,   720,   722,   541,
     619,  -349,  -349,  -349,   537,   342,   617,   487,   614,   373,
     508,   375,    80,    14,  -349,   768,  -349,  -349,  -349,   253,
      81,   703,   798,    15,  -349,   638,    82,     0,    16,   630,
       0,  -349,  -349,  -349,  -349,     0,     0,  -349,     0,  -349,
       0,  -349,   253,    83,     0,     1,    15,  -349,     0,     2,
       0,    16,     0,     0,  -349,  -349,  -349,  -349,     3,     0,
       4,     0,     5,     0,     6,     0,     7,     8,     1,     9,
      10,    11,     2,    12,     0,     0,     0,     0,  -349,  -349,
       0,     3,    14,     4,     0,     5,  -321,     6,     0,     7,
       8,    13,     9,    10,    11,     0,    12,     0,     0,     0,
       0,  -349,  -349,  -349,  -349,  -349,   156,     0,     0,     0,
       0,     0,     0,     0,    13,    14,    85,     0,     0,  -349,
      16,     0,     0,     0,     0,     0,  -349,  -349,  -349,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    14,  -349,
       0,  -349,  -349,  -349,     0,     0,     0,   548,    15,  -349,
       0,     0,     0,    16,     0,     0,  -349,  -349,  -349,  -349,
       0,     0,  -349,     0,  -349,     0,  -349,     0,     0,     0,
     550,    15,  -349,     1,     0,     0,    16,     2,     0,  -349,
    -349,  -349,  -349,     0,     0,     0,     3,     0,     4,     0,
       5,     0,     6,     0,     7,     8,     1,     9,    10,    11,
       2,    12,     0,     0,     0,     0,  -349,  -349,     0,     3,
       0,     4,     0,     5,     0,     6,     0,     7,     8,    13,
       9,    10,    11,     0,    12,     0,     0,     0,     0,  -349,
    -349,  -349,  -349,  -349,     0,     0,     0,     0,     0,     0,
       0,     0,    13,    14,     0,     0,     0,  -349,     0,     0,
       0,     0,     0,     0,  -349,  -349,  -349,     0,     0,     0,
      80,     0,   -20,     0,     0,     0,    14,  -349,    81,  -349,
    -349,  -349,     0,     0,    82,     0,    15,  -349,     0,     0,
       0,    16,     0,     0,  -349,  -349,  -349,  -349,     0,     0,
    -349,    83,  -349,     0,  -349,   -20,   -20,     0,     0,    15,
    -349,     0,     0,     0,    16,     0,     0,  -349,  -349,  -349,
    -349,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     -20,   -20,   -20,     0,     0,     0,     0,     0,     0,     0,
      14,     0,    14,     0,  -321,     0,   -20,   132,   133,   134,
       0,     0,     0,   135,  -271,     0,   136,   137,   138,   139,
       0,     0,     0,   677,   156,     0,   -20,     0,   -20,     0,
     -20,     0,     0,     0,    85,     0,   -20,     0,    16,     0,
      16,     0,     0,   -20,   -20,   -20,   -20,     0,     0,     0,
     140,     0,   141,     0,   142,     0,     0,     0,     0,     0,
     143,   144,   145,   146,     0,   132,   133,   134,     0,     0,
       0,   135,  -271,     0,   136,   137,   138,   139,   164,     0,
       0,   769,   132,   133,   134,     0,     0,     0,   135,  -271,
       0,   136,   137,   138,   139,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   140,     0,
     141,     0,   142,     0,     0,     0,     0,   147,   143,   144,
     145,   146,     0,     0,     0,   140,     0,   141,     0,   142,
     432,     0,     0,     0,     0,   143,   144,   145,   146,   165,
       0,   166,   167,   168,   169,   170,   171,   172,   173,   174,
     175,   176,     0,   177,   178,     0,     0,     0,     0,     0,
     179,   180,     0,   181,   182,   183,   184,   185,     0,   186,
     187,     0,     0,     0,     0,   147,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    16,   188,     0,     0,
       0,   165,   147,   166,   167,   168,   169,   170,   171,   172,
     173,   174,   175,   176,     0,   177,   178,     0,     0,     0,
       0,     0,   179,   180,     0,   181,   182,   183,   184,   185,
      80,   186,   187,    80,  -121,     0,     0,     0,    81,     0,
       0,    81,     0,  -121,    82,     0,    80,    82,    16,   188,
       0,     0,     0,     0,    81,     0,     0,     0,     0,     0,
      82,    83,     0,     0,    83,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  -121,    83,  -121,     0,
    -121,     0,     0,     0,     0,     0,  -121,  -121,  -121,  -121,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      14,     0,     0,    14,  -321,     0,     0,  -321,     0,     0,
       0,     0,     0,     0,     0,     0,    14,     0,     0,     0,
    -321,     0,     0,   201,   156,   202,     0,    84,     0,     0,
       0,     0,     0,     0,    85,   -18,    15,    85,    16,     0,
     156,    16,     0,     0,     0,     0,     0,     0,     0,     0,
      85,     0,     0,     0,    16,   165,   203,   166,   167,   168,
     169,   170,   171,   172,   173,   174,   175,   176,     0,   177,
     178,   201,     0,   202,     0,     0,   179,   180,     0,   181,
     182,   183,   184,   185,     0,   186,   187,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   204,     0,   165,   203,   166,   167,   168,   169,   170,
     171,   172,   173,   174,   175,   176,     0,   177,   178,     0,
       0,     0,     0,     0,   179,   180,     0,   181,   182,   183,
     184,   185,     0,   186,   187,     0,   165,     0,   166,   167,
     168,   169,   170,   171,   172,   173,   174,   175,   176,   204,
     177,   178,     0,     0,     0,     0,     0,   179,   180,     0,
     181,   182,   183,   184,   185,     0,   186,   187,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    16,   188
};

static const short int yycheck[] =
{
       0,     6,    45,     9,   159,   152,   276,   139,     8,     9,
      10,    11,    12,     8,    88,   286,     9,    12,    18,   110,
     111,   112,   321,     0,     2,   209,   309,   203,    83,   511,
     194,     9,   208,   312,    63,   460,   368,   367,     3,     9,
       3,    18,   189,   287,    25,   566,     3,    10,     3,   566,
     566,    39,    73,     3,    60,    77,   566,    73,     3,    73,
      42,     3,     8,    41,   196,    11,    41,   110,   111,   112,
     566,    17,    77,    55,    37,    75,   150,    99,    84,     3,
     101,    65,    98,    32,    84,    60,   218,    11,    81,    82,
     111,    84,     3,    17,     3,   111,   315,   111,    61,     7,
       3,   320,   107,    81,    82,     3,    84,   162,    16,     3,
      34,   101,   391,    11,    84,     7,    65,   101,    73,    17,
     101,    16,   454,    73,    16,     3,     3,   371,     7,   134,
       7,   119,    10,    44,   404,    44,    34,    16,     3,    16,
     661,    49,   107,    98,   661,   661,    11,   202,   431,    73,
     297,   661,    17,    77,   437,   118,   111,    49,   488,    36,
      37,   111,   107,   156,   311,   661,     3,   499,   500,    34,
      49,   653,    49,    97,    98,    73,   205,   102,   156,    77,
     103,   106,   105,   107,    61,    62,    63,   111,   670,    98,
      40,   197,     3,   198,   102,   106,    73,   106,   106,    97,
      77,    12,    52,    97,   204,    99,   261,   102,    73,   107,
     102,   106,    77,   111,   106,   306,   216,   217,     3,     3,
      97,    73,    99,   102,   101,   280,    10,   106,    77,   106,
     107,    19,    97,    21,   111,   367,    78,   114,   115,   116,
     117,    26,   107,    73,     3,    71,   111,     4,   100,     3,
      99,    77,   102,    10,   260,   255,    13,     3,    15,   111,
     255,   686,   104,   306,    45,    11,    47,     0,   538,   247,
     100,    17,    73,    54,   104,   281,   276,   332,   104,   279,
     102,   111,     3,   338,   106,   105,    97,   287,    99,    46,
      11,    48,   571,    50,   470,   459,    17,    71,    44,    56,
      57,    58,    59,    77,   105,    68,   312,    97,     3,    26,
     111,   101,    97,    25,    77,    32,   321,    12,   502,    31,
       3,     3,   322,    44,    36,    11,   331,   333,   104,    11,
       8,    17,    68,   333,    97,    17,    99,   315,   101,    17,
     102,    77,   320,    65,   106,   400,   346,   110,   348,   112,
      62,    87,    34,    36,    37,   410,   113,    30,    43,    32,
     106,   107,   108,    99,   100,   365,    51,    71,    53,   639,
     525,   371,    87,   101,   110,   658,   104,    98,    61,    62,
      63,   386,   106,   378,   439,   106,   107,   108,   365,    80,
      81,    73,    22,   104,    77,    77,    92,    27,    94,    29,
      71,    31,    31,   408,   404,   383,     3,   425,   426,   427,
       7,   389,   430,   406,    97,    97,    99,   105,   101,    16,
     420,   421,   415,   722,   107,   107,    77,    68,   406,   111,
     104,   114,   115,   116,   117,   104,    77,   415,   444,    36,
      37,     4,     5,   420,   421,   104,    87,   101,   453,   444,
      97,    97,    49,    99,   753,   101,   102,     3,    99,   465,
     466,   467,   468,     3,    61,    62,    63,   445,   523,   110,
       3,    97,    98,    99,   565,   101,    73,   477,   456,   479,
      77,   481,   460,   483,   737,   738,   486,    97,   494,    10,
      97,    98,    99,   493,   101,     4,   104,     6,   769,     8,
      97,   103,    99,    12,   101,    14,   101,    16,    17,   106,
     107,    61,    62,    63,   111,    71,   511,   114,   115,   116,
     117,   668,   565,   529,    68,   796,    97,    98,    99,   100,
     101,   102,   510,    77,    56,    57,    58,    59,   538,    68,
       3,     4,     5,    87,    68,   110,     9,    10,    77,    12,
      13,    14,    15,    77,     3,    99,   101,    77,    87,     4,
     566,   716,    23,    87,   102,   571,   110,   622,    13,    71,
      99,   718,    32,   579,    32,    99,   582,   105,    32,    42,
      99,   110,   656,    46,   579,    48,   110,    50,    68,   721,
      68,    98,    55,    56,    57,    58,    59,    77,   103,    77,
      17,    46,     3,    48,   101,    50,   101,    87,   763,    87,
     765,    56,    57,    58,    59,   101,   659,     3,     4,    99,
       3,    99,    30,   104,     7,    11,   103,    13,   104,   104,
     110,    17,   110,    16,    98,   640,   103,   103,   100,   639,
      72,    97,   642,    99,   100,   101,    87,   104,    34,   100,
     113,   103,   100,    36,    37,   661,   103,   635,   653,   101,
      46,   101,    48,    44,    50,   103,    49,   103,     3,    98,
      56,    57,    58,    59,   680,   670,   682,   683,    61,    62,
      63,   103,    82,   103,   689,   680,   100,    73,   100,   105,
      73,    77,    97,   104,    77,    66,    67,    68,   102,   102,
     102,    98,    77,   101,   103,    76,   684,   685,   686,    80,
      81,    97,    98,   101,    97,   708,    99,    72,   101,   105,
     106,   107,   100,   106,   107,   111,   100,    68,   111,   735,
     708,   114,   115,   116,   117,     0,    77,     3,     3,    26,
     735,   102,     7,    26,    71,   750,    87,   100,   102,    72,
     102,    16,   758,    18,    19,    20,    21,    22,    99,    24,
      25,    68,    27,    28,    29,   103,    31,   772,   773,   110,
      77,    36,    37,   105,   104,   100,    40,    98,   102,   101,
      87,   101,    98,   102,    49,    55,   101,    42,   102,   789,
     108,   103,    99,   102,    55,    42,    61,    62,    63,   102,
     102,   100,    26,   110,    26,   103,     3,     3,    73,   102,
       3,    97,    77,    98,   102,    11,    41,   101,    97,    60,
     102,    17,   103,    98,   102,   102,   102,    65,    65,   103,
      29,    84,    97,   386,    99,    29,   101,   102,    34,   419,
       3,   106,   107,     5,     7,   255,   111,   708,   459,   114,
     115,   116,   117,    16,   515,    18,   684,    20,   565,    22,
     657,    24,    25,     3,    27,    28,    29,     7,    31,   468,
     466,   321,   465,    36,    37,   321,    16,    73,    18,   467,
      20,    77,    22,   683,    24,    25,    49,    27,    28,    29,
     682,    31,   717,   659,   756,   455,    36,    37,    61,    62,
      63,    97,   574,   440,   571,   676,   727,   782,   766,    49,
      73,   107,   735,   579,    77,   111,   796,   661,   669,   412,
     486,    61,    62,    63,   406,   205,   483,   361,   479,   237,
     374,   237,     3,    73,    97,   730,    99,    77,   101,   102,
      11,   635,   793,   106,   107,   529,    17,    -1,   111,   510,
      -1,   114,   115,   116,   117,    -1,    -1,    97,    -1,    99,
      -1,   101,   102,    34,    -1,     3,   106,   107,    -1,     7,
      -1,   111,    -1,    -1,   114,   115,   116,   117,    16,    -1,
      18,    -1,    20,    -1,    22,    -1,    24,    25,     3,    27,
      28,    29,     7,    31,    -1,    -1,    -1,    -1,    36,    37,
      -1,    16,    73,    18,    -1,    20,    77,    22,    -1,    24,
      25,    49,    27,    28,    29,    -1,    31,    -1,    -1,    -1,
      -1,    36,    37,    61,    62,    63,    97,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    49,    73,   107,    -1,    -1,    77,
     111,    -1,    -1,    -1,    -1,    -1,    61,    62,    63,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,    97,
      -1,    99,    77,   101,    -1,    -1,    -1,   105,   106,   107,
      -1,    -1,    -1,   111,    -1,    -1,   114,   115,   116,   117,
      -1,    -1,    97,    -1,    99,    -1,   101,    -1,    -1,    -1,
     105,   106,   107,     3,    -1,    -1,   111,     7,    -1,   114,
     115,   116,   117,    -1,    -1,    -1,    16,    -1,    18,    -1,
      20,    -1,    22,    -1,    24,    25,     3,    27,    28,    29,
       7,    31,    -1,    -1,    -1,    -1,    36,    37,    -1,    16,
      -1,    18,    -1,    20,    -1,    22,    -1,    24,    25,    49,
      27,    28,    29,    -1,    31,    -1,    -1,    -1,    -1,    36,
      37,    61,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    49,    73,    -1,    -1,    -1,    77,    -1,    -1,
      -1,    -1,    -1,    -1,    61,    62,    63,    -1,    -1,    -1,
       3,    -1,     3,    -1,    -1,    -1,    73,    97,    11,    99,
      77,   101,    -1,    -1,    17,    -1,   106,   107,    -1,    -1,
      -1,   111,    -1,    -1,   114,   115,   116,   117,    -1,    -1,
      97,    34,    99,    -1,   101,    36,    37,    -1,    -1,   106,
     107,    -1,    -1,    -1,   111,    -1,    -1,   114,   115,   116,
     117,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      61,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      73,    -1,    73,    -1,    77,    -1,    77,     3,     4,     5,
      -1,    -1,    -1,     9,    10,    -1,    12,    13,    14,    15,
      -1,    -1,    -1,    19,    97,    -1,    97,    -1,    99,    -1,
     101,    -1,    -1,    -1,   107,    -1,   107,    -1,   111,    -1,
     111,    -1,    -1,   114,   115,   116,   117,    -1,    -1,    -1,
      46,    -1,    48,    -1,    50,    -1,    -1,    -1,    -1,    -1,
      56,    57,    58,    59,    -1,     3,     4,     5,    -1,    -1,
      -1,     9,    10,    -1,    12,    13,    14,    15,     3,    -1,
      -1,    19,     3,     4,     5,    -1,    -1,    -1,     9,    10,
      -1,    12,    13,    14,    15,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,    -1,
      48,    -1,    50,    -1,    -1,    -1,    -1,   113,    56,    57,
      58,    59,    -1,    -1,    -1,    46,    -1,    48,    -1,    50,
       3,    -1,    -1,    -1,    -1,    56,    57,    58,    59,    64,
      -1,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    -1,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    -1,    88,    89,    90,    91,    92,    -1,    94,
      95,    -1,    -1,    -1,    -1,   113,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   111,   112,    -1,    -1,
      -1,    64,   113,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    -1,    78,    79,    -1,    -1,    -1,
      -1,    -1,    85,    86,    -1,    88,    89,    90,    91,    92,
       3,    94,    95,     3,     4,    -1,    -1,    -1,    11,    -1,
      -1,    11,    -1,    13,    17,    -1,     3,    17,   111,   112,
      -1,    -1,    -1,    -1,    11,    -1,    -1,    -1,    -1,    -1,
      17,    34,    -1,    -1,    34,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    46,    34,    48,    -1,
      50,    -1,    -1,    -1,    -1,    -1,    56,    57,    58,    59,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      73,    -1,    -1,    73,    77,    -1,    -1,    77,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    -1,    -1,    -1,
      77,    -1,    -1,    32,    97,    34,    -1,    97,    -1,    -1,
      -1,    -1,    -1,    -1,   107,   105,   106,   107,   111,    -1,
      97,   111,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     107,    -1,    -1,    -1,   111,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    -1,    78,
      79,    32,    -1,    34,    -1,    -1,    85,    86,    -1,    88,
      89,    90,    91,    92,    -1,    94,    95,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   110,    -1,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    -1,    78,    79,    -1,
      -1,    -1,    -1,    -1,    85,    86,    -1,    88,    89,    90,
      91,    92,    -1,    94,    95,    -1,    64,    -1,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,   110,
      78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,    -1,
      88,    89,    90,    91,    92,    -1,    94,    95,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   111,   112
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const unsigned short int yystos[] =
{
       0,     3,     7,    16,    18,    20,    22,    24,    25,    27,
      28,    29,    31,    49,    73,   106,   111,   121,   122,   124,
     125,   126,   130,   131,   133,   134,   135,   139,   149,   150,
     151,   152,   153,   155,   156,   157,   170,   177,   178,   183,
     188,   189,   205,   206,   209,   211,   231,   251,   255,   258,
     270,   271,   274,   275,   277,   278,   280,   281,   282,   283,
     308,   313,   316,   318,   319,   320,   367,     3,   371,   372,
       3,   207,   151,   154,   154,   101,   176,   137,   170,   316,
       3,    11,    17,    34,    97,   107,   127,   129,   178,   188,
     292,   294,   295,   296,   297,   301,   302,   304,   305,   306,
     307,   316,   317,   371,   128,   316,   316,   132,   170,   316,
      43,    51,    53,     3,     3,   310,    66,    67,    68,    76,
      80,    81,     0,   124,   105,   123,   123,   125,   139,   104,
     123,   123,     3,     4,     5,     9,    12,    13,    14,    15,
      46,    48,    50,    56,    57,    58,    59,   113,   173,   174,
     175,   232,   240,   242,   272,     3,    97,   184,   185,   190,
     292,   316,    65,   208,     3,    64,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    78,    79,    85,
      86,    88,    89,    90,    91,    92,    94,    95,   112,   212,
     365,   366,   367,   368,    71,   158,   210,    87,   279,   178,
     123,    32,    34,    65,   110,   321,   322,   323,   366,     3,
      36,    37,    61,    62,    63,    77,    97,    99,   101,   107,
     114,   115,   116,   117,   325,   327,   328,   333,   336,   337,
     338,   339,   340,   341,   346,   347,   351,   352,   353,   356,
     357,   358,   359,   360,   361,   362,   364,   104,   252,   388,
      71,   167,   326,   102,   124,    31,   176,   292,   292,    12,
      97,    99,   369,   371,   373,   379,   380,   381,   382,   383,
     387,   127,   292,   298,   299,   300,   105,     4,   174,    26,
      32,   104,   293,   370,   293,   293,    77,   103,   101,   176,
     365,   365,   365,    97,   309,   311,     3,   256,   176,     4,
       6,     8,    12,    14,    16,    17,   179,   180,     3,   259,
       3,   253,    97,   219,     8,    11,    17,   174,   210,    10,
     103,   370,    65,   187,   369,    80,    81,   210,   160,   161,
     372,   219,   178,   101,   176,   191,   197,   110,   324,   369,
     318,   316,   322,   318,   326,    77,    99,    77,    99,     3,
       3,   316,   348,   349,   350,   104,   316,   329,   330,   332,
     334,   335,     3,    99,   219,   342,   343,   344,   363,    68,
      77,    99,   110,   347,   354,   368,   371,   389,   101,   276,
     168,   169,   369,    77,   102,   132,    23,   136,   138,    71,
      44,   178,   223,   374,   375,   376,   377,   369,    68,    77,
      87,    99,   110,    99,   105,    98,   103,   128,   316,   369,
     178,     3,   241,   316,   317,    19,    21,   140,   141,   142,
     143,   146,   101,   101,   101,    97,    99,   101,   312,   314,
     315,   210,     3,   181,   182,   365,   252,   210,    98,   178,
     221,   222,   223,   184,   101,   104,   184,   176,   186,   187,
     191,   197,   316,   213,   217,   219,    30,   159,   162,   103,
     104,   176,   273,   369,   178,   193,   194,   199,   200,   369,
     104,     3,    10,   316,     3,    10,   316,   104,    98,   103,
     100,   104,   100,   103,   331,   100,   103,   331,   103,    56,
      57,    58,    59,   345,    87,   214,   215,   124,    26,   219,
     363,   214,     3,    10,    37,    61,   118,   317,   341,   355,
     103,   170,   171,   172,    72,   103,   371,   135,   176,   371,
     384,   385,   386,   223,     3,   378,    98,    82,   220,   103,
     100,    39,   119,   369,   100,   100,   128,   299,   105,   176,
     369,   297,   303,   144,   292,   104,   102,   140,   105,   124,
     105,   124,    52,   284,   285,   286,   288,   102,   102,   312,
     312,   312,    98,   312,   252,    77,   101,   260,   252,   369,
     220,   103,    11,    17,   224,   170,   178,   233,   234,   235,
     236,   371,   101,   201,   176,   216,   214,   217,   218,   163,
     164,   165,   166,   371,    72,   160,   371,   383,    42,    55,
     178,   192,   194,   178,   193,   178,   198,   200,   178,   199,
     318,   100,   100,   316,   349,   316,   316,   330,   316,   334,
     363,   316,   178,    26,   102,   214,   214,    26,   326,   100,
     389,   172,   102,   168,    72,   103,   369,   370,   376,   105,
     128,   104,    30,   145,   147,   289,   102,    40,   287,   290,
      98,   100,   102,   101,   257,   181,   178,   189,   206,   211,
     261,   262,   263,   264,   265,   266,   267,   268,   271,   278,
     101,   254,    98,   221,   108,   225,   225,    19,   102,   233,
     101,   178,   203,   204,   103,    78,   104,   176,    97,   195,
     196,    55,   102,    42,   102,    55,   102,    42,   102,   100,
     369,    26,    26,   385,   128,   176,   148,   316,   103,    45,
      47,    54,   291,   172,   174,     3,   190,   252,   212,   102,
     261,   210,   279,   172,     3,   107,   228,   228,   237,   238,
     241,   170,   178,   243,   244,   245,   246,    41,    60,   178,
     202,   204,   178,   203,   163,   371,   371,   383,     3,   176,
      98,   144,   102,   370,   208,   269,   210,   219,   101,   197,
     102,     3,   107,   226,   229,   226,   103,   239,   373,    19,
     102,   243,   195,   195,   102,   102,    98,   176,   197,   213,
     178,   370,   370,   237,   241,   247,   248,   176,   176,    65,
     227,   230,   227,    65,   249,   250,   103,   316,   364,   247
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const unsigned short int yyr1[] =
{
       0,   120,   121,   122,   123,   123,   122,   122,   122,   122,
     122,   124,   124,   125,   125,   125,   125,   126,   127,   127,
     128,   128,   126,   129,   129,   130,   131,   132,   132,   133,
     134,   134,   135,   136,   136,   137,   137,   138,   138,   139,
     140,   140,   141,   142,   142,   142,   142,   143,   144,   144,
     145,   145,   146,   147,   148,   149,   149,   150,   151,   152,
     152,   152,   152,   153,   154,   154,   155,   156,   157,   158,
     159,   159,   160,   160,   161,   161,   161,   162,   163,   163,
     164,   164,   165,   165,   166,   167,   168,   168,   169,   170,
     170,   170,   170,   170,   170,   170,   170,   170,   170,   170,
     170,   170,   170,   171,   172,   172,   173,   174,   174,   175,
     175,   175,   175,   175,   175,   175,   175,   175,   176,   176,
     177,   178,   178,   179,   179,   180,   180,   180,   180,   180,
     180,   180,   181,   181,   182,   182,   183,   184,   184,   185,
     185,   186,   186,   187,   188,   188,   188,   188,   188,   189,
     190,   191,   192,   192,   191,   193,   194,   195,   195,   196,
     197,   198,   198,   197,   199,   200,   201,   202,   202,   201,
     203,   204,   205,   206,   207,   208,   209,   210,   210,   211,
     212,   212,   213,   214,   214,   215,   216,   217,   218,   218,
     219,   219,   220,   220,   221,   221,   222,   223,   223,   224,
     224,   225,   225,   226,   226,   227,   227,   222,   222,   228,
     228,   229,   229,   230,   231,   231,   232,   233,   233,   234,
     235,   235,   236,   237,   237,   238,   239,   239,   240,   241,
     242,   243,   243,   244,   245,   245,   246,   247,   247,   248,
     249,   249,   250,   251,   252,   252,   253,   254,   255,   256,
     257,   258,   259,   260,   261,   261,   262,   262,   262,   262,
     262,   263,   264,   265,   266,   267,   268,   269,   269,   270,
     271,   272,   272,   273,   274,   275,   276,   277,   277,   277,
     278,   279,   280,   280,   280,   281,   282,   283,   284,   284,
     285,   286,   286,   287,   287,   288,   289,   290,   291,   291,
     291,   292,   293,   293,   292,   292,   292,   292,   292,   292,
     294,   295,   296,   296,   297,   298,   298,   299,   299,   300,
     301,   302,   302,   303,   303,   304,   304,   305,   306,   307,
     308,   309,   309,   310,   311,   312,   312,   313,   314,   315,
     315,   315,   315,   315,   316,   316,   317,   317,   318,   319,
     319,   318,   320,   321,   321,   321,   321,   322,   322,   323,
     323,   324,   324,   325,   326,   326,   325,   325,   325,   325,
     325,   325,   325,   327,   327,   327,   327,   327,   327,   327,
     328,   329,   329,   330,   330,   331,   331,   332,   333,   333,
     334,   334,   335,   336,   336,   336,   336,   337,   337,   337,
     338,   339,   340,   341,   342,   342,   343,   343,   343,   343,
     343,   344,   345,   345,   345,   345,   346,   347,   348,   348,
     349,   349,   350,   350,   351,   352,   352,   352,   352,   352,
     352,   352,   352,   352,   352,   353,   353,   354,   354,   355,
     356,   357,   357,   358,   359,   360,   361,   362,   363,   363,
     364,   364,   364,   365,   365,   365,   366,   366,   366,   366,
     366,   366,   366,   366,   366,   366,   366,   366,   366,   366,
     366,   366,   366,   366,   366,   366,   366,   366,   366,   367,
     367,   367,   367,   367,   367,   368,   368,   369,   369,   369,
     369,   369,   369,   369,   369,   370,   371,   371,   372,   373,
     374,   374,   375,   376,   376,   377,   377,   378,   379,   380,
     380,   380,   381,   382,   383,   384,   384,   385,   385,   386,
     387,   387,   388,   389,   389
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const unsigned char yyr2[] =
{
       0,     2,     1,     2,     0,     1,     2,     2,     2,     1,
       2,     1,     2,     1,     1,     1,     1,     7,     0,     1,
       0,     1,     9,     1,     1,     5,     3,     1,     1,     4,
       1,     1,     4,     0,     1,     1,     1,     2,     2,     5,
       0,     1,     2,     2,     2,     2,     2,     3,     2,     4,
       0,     1,     2,     2,     1,     2,     2,     2,     1,     1,
       1,     1,     1,     2,     0,     1,     2,     1,     2,     4,
       0,     1,     1,     3,     1,     3,     3,     2,     1,     3,
       1,     1,     3,     3,     3,     3,     1,     3,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     2,     0,     1,     2,     0,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     2,
       4,     0,     1,     0,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     3,     1,     1,     4,     1,     3,     2,
       1,     0,     1,     2,     2,     4,     4,     4,     5,     3,
       1,     4,     0,     1,     4,     3,     4,     0,     1,     3,
       4,     0,     1,     4,     2,     2,     4,     0,     1,     4,
       4,     4,     2,     2,     1,     2,     5,     0,     1,     3,
       1,     1,     2,     0,     1,     3,     1,     2,     0,     1,
       2,     4,     0,     1,     1,     3,     7,     0,     1,     0,
       1,     0,     1,     0,     1,     0,     1,     7,     2,     1,
       1,     1,     1,     2,     2,     2,     5,     0,     1,     2,
       1,     1,     3,     1,     3,     2,     0,     1,     1,     1,
       7,     0,     1,     2,     1,     1,     3,     1,     3,     2,
       0,     1,     2,     6,     0,     1,     1,     3,     6,     1,
       3,     5,     1,     3,     0,     1,     1,     1,     1,     1,
       1,     2,     4,     4,     3,     3,     3,     0,     1,     4,
       3,     0,     1,     1,     3,     4,     3,     3,     3,     3,
       3,     3,     1,     1,     1,     5,     5,     6,     0,     1,
       2,     0,     1,     0,     1,     2,     0,     2,     1,     1,
       1,     2,     0,     1,     2,     1,     2,     1,     1,     1,
       1,     1,     2,     2,     3,     0,     1,     1,     3,     1,
       4,     0,     1,     0,     1,     1,     1,     2,     3,     1,
       3,     0,     1,     1,     3,     0,     1,     2,     2,     3,
       3,     3,     0,     0,     1,     2,     1,     3,     2,     0,
       1,     1,     2,     2,     2,     4,     1,     1,     2,     2,
       3,     0,     1,     2,     0,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     0,     1,     2,     3,     0,     1,     1,     3,     3,
       2,     3,     3,     1,     3,     4,     3,     1,     1,     1,
       3,     4,     3,     4,     0,     1,     3,     3,     4,     4,
       2,     4,     1,     1,     1,     1,     2,     3,     0,     1,
       1,     3,     1,     3,     1,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     2,     3,     0,     1,     1,
       3,     3,     4,     3,     3,     4,     2,     2,     1,     3,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     2,
       2,     2,     2,     2,     2,     2,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     2,     4,     1,     3,
       0,     1,     2,     1,     3,     3,     3,     1,     3,     3,
       3,     3,     2,     2,     4,     0,     1,     1,     3,     1,
       3,     3,     2,     1,     3
};


/* YYDPREC[RULE-NUM] -- Dynamic precedence of rule #RULE-NUM (0 if none).  */
static const unsigned char yydprec[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     1,
       2,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     1,     0,     0,     0,     0,     2,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0
};

/* YYMERGER[RULE-NUM] -- Index of merging function for rule #RULE-NUM.  */
static const unsigned char yymerger[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     1,     1,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     1,     1,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0
};

/* YYIMMEDIATE[RULE-NUM] -- True iff rule #RULE-NUM is not to be deferred, as
   in the case of predicates.  */
static const yybool yyimmediate[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0
};

/* YYCONFLP[YYPACT[STATE-NUM]] -- Pointer into YYCONFL of start of
   list of conflicting reductions corresponding to action entry for
   state STATE-NUM in yytable.  0 means no conflicts.  The list in
   yyconfl is terminated by a rule number of 0.  */
static const unsigned short int yyconflp[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   140,     0,
       0,     0,     0,   324,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   120,
     342,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   328,     0,   168,     0,     0,     0,     0,     0,
       4,     0,     0,     0,     0,    59,     0,     0,     0,   142,
       0,     0,     0,     0,     0,     0,     0,   208,     0,     0,
       0,     0,     0,     0,     0,     0,     8,     0,     0,     0,
       0,     0,     0,   330,     0,   170,     0,     0,    80,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   122,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     6,     0,     0,     0,
       0,     0,     0,   124,     0,     0,     0,     0,     0,    61,
     112,     0,     0,   126,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    63,
       0,     0,     0,   144,     0,   146,     0,     0,     0,    65,
       0,     0,    82,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   136,     0,
       0,     0,    84,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    86,     0,     0,     0,     0,     0,     0,     0,
     138,   116,   258,     0,     0,     0,     0,   348,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   118,     0,
       0,     0,   190,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    78,     0,   148,     0,     0,     0,     0,
       0,     0,     0,     0,   150,     0,     0,     0,     0,     0,
       0,    88,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   152,     0,   154,     0,   156,     0,
       0,     0,     0,     0,     0,     0,     0,   158,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    90,     0,     0,     0,     0,
      73,     0,     0,     0,     0,     0,    54,     0,     0,     0,
       0,     0,     0,     0,     0,    92,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    94,     0,     0,     0,     0,
     106,     0,     0,     0,     0,   108,   172,     0,     0,     0,
       0,     0,     0,     0,     0,   110,     0,     0,     0,     0,
     114,   284,     0,   287,     0,   290,   293,     0,   174,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   178,   181,   184,     0,   187,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     260,   263,   266,     0,   269,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   134,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   296,   299,   302,   305,
     308,   311,     0,   210,     0,     0,     0,     0,     0,   217,
       0,     0,     0,     0,     0,     0,     0,     0,   219,     0,
       0,     0,     0,     0,     0,   212,     0,   160,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     221,     0,   164,     0,   166,     0,     0,     0,     0,     0,
     176,   223,     0,     0,     0,     0,     0,     0,     0,     0,
     316,     0,     0,     0,     0,     0,     0,   238,     0,   318,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    96,     0,   240,
     162,   320,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    98,   322,     0,     0,     0,     0,     0,     0,     0,
       0,   272,     0,   275,   278,   281,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   228,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   100,   242,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   314,     0,     0,     0,     0,     0,     0,     0,
       0,   102,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   104,     0,     0,     0,     0,     0,   332,     0,     0,
       0,     0,     0,     0,     0,     0,   334,     0,    56,     0,
       0,     0,     0,     0,   326,     0,   336,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   338,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   340,
     344,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   346,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   192,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      75,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   214,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   194,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   196,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   198,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   200,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   252,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   255,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   202,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   204,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   206,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     1,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   225,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     230,     0,    20,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    22,    24,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      26,    28,    30,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    32,     0,   232,     0,    34,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   234,     0,    36,     0,    38,     0,
      40,     0,     0,     0,   236,     0,    42,     0,     0,     0,
      44,     0,     0,    46,    48,    50,    52,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     244,     0,     0,    10,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   350,    12,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   246,     0,     0,    14,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     352,     0,     0,    67,   248,     0,     0,    16,     0,     0,
       0,     0,     0,     0,   250,     0,     0,    18,     0,     0,
     354,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     356,     0,     0,     0,     0,     0,    69,     0,     0,     0,
       0,     0,     0,     0,    71,     0,     0,     0,     0,     0,
       0,   128,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   130,     0,     0,     0,     0,     0,
       0,     0,   132,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0
};

/* YYCONFL[I] -- lists of conflicting rule numbers, each terminated by
   0, pointed into by YYCONFLP.  */
static const short int yyconfl[] =
{
       0,   121,   349,     0,    64,     0,    64,     0,   349,     0,
     349,     0,   121,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     349,     0,    20,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   349,     0,    20,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   121,   349,     0,   349,
       0,   349,     0,   349,     0,   349,     0,   344,     0,   344,
       0,   344,     0,   364,     0,   121,   349,     0,   498,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   121,     0,
     349,     0,   349,     0,   349,     0,   302,     0,   302,     0,
     302,     0,   329,     0,   331,     0,   498,     0,   311,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   357,     0,
     357,     0,   357,     0,   364,     0,   393,     0,   393,     0,
     349,     0,   404,     0,   404,     0,   404,     0,   348,     0,
     348,     0,   348,     0,   348,     0,   437,     0,   348,     0,
     496,     0,   349,     0,   313,     0,   312,     0,   197,     0,
     121,     0,   327,     0,   327,     0,   487,     0,   342,   343,
       0,   342,   343,     0,   342,   343,     0,   342,   343,     0,
     197,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   141,     0,
     175,     0,   175,     0,   121,   349,     0,   359,     0,   359,
       0,   359,     0,   359,     0,   121,   349,     0,   438,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   328,     0,
     328,     0,   323,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   121,   349,     0,   121,   349,     0,   291,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   342,   343,     0,   342,   343,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   132,     0,   360,     0,   360,     0,
     360,     0,   360,     0,   349,     0,   364,     0,   197,     0,
     121,     0,   508,     0,   508,     0,   508,     0,   508,     0,
     508,     0,   349,     0,   495,     0,   495,     0,   197,     0,
     349,     0,   349,     0,   349,     0,   349,     0
};

/* Error token number */
#define YYTERROR 1



YYSTYPE yylval;

int yynerrs;
int yychar;

static const int YYEOF = 0;
static const int YYEMPTY = -2;

typedef enum { yyok, yyaccept, yyabort, yyerr } YYRESULTTAG;

#define YYCHK(YYE)                              \
  do {                                          \
    YYRESULTTAG yychk_flag = YYE;               \
    if (yychk_flag != yyok)                     \
      return yychk_flag;                        \
  } while (0)

#if YYDEBUG

# ifndef YYFPRINTF
#  define YYFPRINTF fprintf
# endif

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YYDPRINTF(Args)                        \
  do {                                          \
    if (yydebug)                                \
      YYFPRINTF Args;                           \
  } while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                  \
  do {                                                                  \
    if (yydebug)                                                        \
      {                                                                 \
        YYFPRINTF (stderr, "%s ", Title);                               \
        yy_symbol_print (stderr, Type, Value);        \
        YYFPRINTF (stderr, "\n");                                       \
      }                                                                 \
  } while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;

struct yyGLRStack;
static void yypstack (struct yyGLRStack* yystackp, size_t yyk)
  YY_ATTRIBUTE_UNUSED;
static void yypdumpstack (struct yyGLRStack* yystackp)
  YY_ATTRIBUTE_UNUSED;

#else /* !YYDEBUG */

# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)

#endif /* !YYDEBUG */

/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   SIZE_MAX < YYMAXDEPTH * sizeof (GLRStackItem)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif

/* Minimum number of free items on the stack allowed after an
   allocation.  This is to allow allocation and initialization
   to be completed by functions that call yyexpandGLRStack before the
   stack is expanded, thus insuring that all necessary pointers get
   properly redirected to new data.  */
#define YYHEADROOM 2

#ifndef YYSTACKEXPANDABLE
#  define YYSTACKEXPANDABLE 1
#endif

#if YYSTACKEXPANDABLE
# define YY_RESERVE_GLRSTACK(Yystack)                   \
  do {                                                  \
    if (Yystack->yyspaceLeft < YYHEADROOM)              \
      yyexpandGLRStack (Yystack);                       \
  } while (0)
#else
# define YY_RESERVE_GLRSTACK(Yystack)                   \
  do {                                                  \
    if (Yystack->yyspaceLeft < YYHEADROOM)              \
      yyMemoryExhausted (Yystack);                      \
  } while (0)
#endif


#if YYERROR_VERBOSE

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static size_t
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      size_t yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return strlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

#endif /* !YYERROR_VERBOSE */

/** State numbers, as in LALR(1) machine */
typedef int yyStateNum;

/** Rule numbers, as in LALR(1) machine */
typedef int yyRuleNum;

/** Grammar symbol */
typedef int yySymbol;

/** Item references, as in LALR(1) machine */
typedef short int yyItemNum;

typedef struct yyGLRState yyGLRState;
typedef struct yyGLRStateSet yyGLRStateSet;
typedef struct yySemanticOption yySemanticOption;
typedef union yyGLRStackItem yyGLRStackItem;
typedef struct yyGLRStack yyGLRStack;

struct yyGLRState {
  /** Type tag: always true.  */
  yybool yyisState;
  /** Type tag for yysemantics.  If true, yysval applies, otherwise
   *  yyfirstVal applies.  */
  yybool yyresolved;
  /** Number of corresponding LALR(1) machine state.  */
  yyStateNum yylrState;
  /** Preceding state in this stack */
  yyGLRState* yypred;
  /** Source position of the last token produced by my symbol */
  size_t yyposn;
  union {
    /** First in a chain of alternative reductions producing the
     *  non-terminal corresponding to this state, threaded through
     *  yynext.  */
    yySemanticOption* yyfirstVal;
    /** Semantic value for this state.  */
    YYSTYPE yysval;
  } yysemantics;
};

struct yyGLRStateSet {
  yyGLRState** yystates;
  /** During nondeterministic operation, yylookaheadNeeds tracks which
   *  stacks have actually needed the current lookahead.  During deterministic
   *  operation, yylookaheadNeeds[0] is not maintained since it would merely
   *  duplicate yychar != YYEMPTY.  */
  yybool* yylookaheadNeeds;
  size_t yysize, yycapacity;
};

struct yySemanticOption {
  /** Type tag: always false.  */
  yybool yyisState;
  /** Rule number for this reduction */
  yyRuleNum yyrule;
  /** The last RHS state in the list of states to be reduced.  */
  yyGLRState* yystate;
  /** The lookahead for this reduction.  */
  int yyrawchar;
  YYSTYPE yyval;
  /** Next sibling in chain of options.  To facilitate merging,
   *  options are chained in decreasing order by address.  */
  yySemanticOption* yynext;
};

/** Type of the items in the GLR stack.  The yyisState field
 *  indicates which item of the union is valid.  */
union yyGLRStackItem {
  yyGLRState yystate;
  yySemanticOption yyoption;
};

struct yyGLRStack {
  int yyerrState;


  YYJMP_BUF yyexception_buffer;
  yyGLRStackItem* yyitems;
  yyGLRStackItem* yynextFree;
  size_t yyspaceLeft;
  yyGLRState* yysplitPoint;
  yyGLRState* yylastDeleted;
  yyGLRStateSet yytops;
};

#if YYSTACKEXPANDABLE
static void yyexpandGLRStack (yyGLRStack* yystackp);
#endif

static _Noreturn void
yyFail (yyGLRStack* yystackp, const char* yymsg)
{
  if (yymsg != YY_NULLPTR)
    yyerror (yymsg);
  YYLONGJMP (yystackp->yyexception_buffer, 1);
}

static _Noreturn void
yyMemoryExhausted (yyGLRStack* yystackp)
{
  YYLONGJMP (yystackp->yyexception_buffer, 2);
}

#if YYDEBUG || YYERROR_VERBOSE
/** A printable representation of TOKEN.  */
static inline const char*
yytokenName (yySymbol yytoken)
{
  if (yytoken == YYEMPTY)
    return "";

  return yytname[yytoken];
}
#endif

/** Fill in YYVSP[YYLOW1 .. YYLOW0-1] from the chain of states starting
 *  at YYVSP[YYLOW0].yystate.yypred.  Leaves YYVSP[YYLOW1].yystate.yypred
 *  containing the pointer to the next state in the chain.  */
static void yyfillin (yyGLRStackItem *, int, int) YY_ATTRIBUTE_UNUSED;
static void
yyfillin (yyGLRStackItem *yyvsp, int yylow0, int yylow1)
{
  int i;
  yyGLRState *s = yyvsp[yylow0].yystate.yypred;
  for (i = yylow0-1; i >= yylow1; i -= 1)
    {
#if YYDEBUG
      yyvsp[i].yystate.yylrState = s->yylrState;
#endif
      yyvsp[i].yystate.yyresolved = s->yyresolved;
      if (s->yyresolved)
        yyvsp[i].yystate.yysemantics.yysval = s->yysemantics.yysval;
      else
        /* The effect of using yysval or yyloc (in an immediate rule) is
         * undefined.  */
        yyvsp[i].yystate.yysemantics.yyfirstVal = YY_NULLPTR;
      s = yyvsp[i].yystate.yypred = s->yypred;
    }
}

/* Do nothing if YYNORMAL or if *YYLOW <= YYLOW1.  Otherwise, fill in
 * YYVSP[YYLOW1 .. *YYLOW-1] as in yyfillin and set *YYLOW = YYLOW1.
 * For convenience, always return YYLOW1.  */
static inline int yyfill (yyGLRStackItem *, int *, int, yybool)
     YY_ATTRIBUTE_UNUSED;
static inline int
yyfill (yyGLRStackItem *yyvsp, int *yylow, int yylow1, yybool yynormal)
{
  if (!yynormal && yylow1 < *yylow)
    {
      yyfillin (yyvsp, *yylow, yylow1);
      *yylow = yylow1;
    }
  return yylow1;
}

/** Perform user action for rule number YYN, with RHS length YYRHSLEN,
 *  and top stack item YYVSP.  YYLVALP points to place to put semantic
 *  value ($$), and yylocp points to place for location information
 *  (@$).  Returns yyok for normal return, yyaccept for YYACCEPT,
 *  yyerr for YYERROR, yyabort for YYABORT.  */
static YYRESULTTAG
yyuserAction (yyRuleNum yyn, size_t yyrhslen, yyGLRStackItem* yyvsp,
              yyGLRStack* yystackp,
              YYSTYPE* yyvalp)
{
  yybool yynormal YY_ATTRIBUTE_UNUSED = (yystackp->yysplitPoint == YY_NULLPTR);
  int yylow;
  YYUSE (yyvalp);
  YYUSE (yyrhslen);
# undef yyerrok
# define yyerrok (yystackp->yyerrState = 0)
# undef YYACCEPT
# define YYACCEPT return yyaccept
# undef YYABORT
# define YYABORT return yyabort
# undef YYERROR
# define YYERROR return yyerrok, yyerr
# undef YYRECOVERING
# define YYRECOVERING() (yystackp->yyerrState != 0)
# undef yyclearin
# define yyclearin (yychar = YYEMPTY)
# undef YYFILL
# define YYFILL(N) yyfill (yyvsp, &yylow, N, yynormal)
# undef YYBACKUP
# define YYBACKUP(Token, Value)                                              \
  return yyerror (YY_("syntax error: cannot back up")),     \
         yyerrok, yyerr

  yylow = 1;
  if (yyrhslen == 0)
    *yyvalp = yyval_default;
  else
    *yyvalp = yyvsp[YYFILL (1-yyrhslen)].yystate.yysemantics.yysval;
  switch (yyn)
    {
        case 2:
#line 414 "grammar.y" /* glr.c:783  */
    {ast = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node);}
#line 2204 "grammar.mm" /* glr.c:783  */
    break;

  case 3:
#line 421 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[StatementNode alloc] initWithStatement:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("statement (0)\n"); }
#line 2210 "grammar.mm" /* glr.c:783  */
    break;

  case 4:
#line 422 "grammar.y" /* glr.c:783  */
    {}
#line 2216 "grammar.mm" /* glr.c:783  */
    break;

  case 5:
#line 422 "grammar.y" /* glr.c:783  */
    { LOG("semicolon_opt\n"); }
#line 2222 "grammar.mm" /* glr.c:783  */
    break;

  case 6:
#line 423 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[DeclarationStatement alloc] initWithDeclaration:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("statement (0)\n"); }
#line 2228 "grammar.mm" /* glr.c:783  */
    break;

  case 7:
#line 424 "grammar.y" /* glr.c:783  */
    { LOG("statement (0)\n"); }
#line 2234 "grammar.mm" /* glr.c:783  */
    break;

  case 8:
#line 425 "grammar.y" /* glr.c:783  */
    { LOG("statement (0)\n"); }
#line 2240 "grammar.mm" /* glr.c:783  */
    break;

  case 9:
#line 426 "grammar.y" /* glr.c:783  */
    { LOG("statement (0)\n"); }
#line 2246 "grammar.mm" /* glr.c:783  */
    break;

  case 10:
#line 427 "grammar.y" /* glr.c:783  */
    { LOG("statement (0)\n"); }
#line 2252 "grammar.mm" /* glr.c:783  */
    break;

  case 11:
#line 428 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; }
#line 2258 "grammar.mm" /* glr.c:783  */
    break;

  case 12:
#line 429 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:(StatementsNode*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; }
#line 2264 "grammar.mm" /* glr.c:783  */
    break;

  case 13:
#line 433 "grammar.y" /* glr.c:783  */
    { LOG("loop_statement (0)\n"); }
#line 2270 "grammar.mm" /* glr.c:783  */
    break;

  case 14:
#line 434 "grammar.y" /* glr.c:783  */
    { LOG("loop_statement (0)\n"); }
#line 2276 "grammar.mm" /* glr.c:783  */
    break;

  case 15:
#line 435 "grammar.y" /* glr.c:783  */
    { LOG("loop_statement (0)\n"); }
#line 2282 "grammar.mm" /* glr.c:783  */
    break;

  case 16:
#line 436 "grammar.y" /* glr.c:783  */
    { LOG("loop_statement (0)\n"); }
#line 2288 "grammar.mm" /* glr.c:783  */
    break;

  case 17:
#line 440 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[ForStatement alloc] initWithExpr1:(((yyGLRStackItem const *)yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.node) expr2:(((yyGLRStackItem const *)yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.node) expr3:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) block:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("for_statement (0)\n"); }
#line 2294 "grammar.mm" /* glr.c:783  */
    break;

  case 18:
#line 441 "grammar.y" /* glr.c:783  */
    {}
#line 2300 "grammar.mm" /* glr.c:783  */
    break;

  case 19:
#line 441 "grammar.y" /* glr.c:783  */
    { LOG("for_init_opt\n"); }
#line 2306 "grammar.mm" /* glr.c:783  */
    break;

  case 20:
#line 442 "grammar.y" /* glr.c:783  */
    {}
#line 2312 "grammar.mm" /* glr.c:783  */
    break;

  case 21:
#line 442 "grammar.y" /* glr.c:783  */
    { LOG("expression_opt\n"); }
#line 2318 "grammar.mm" /* glr.c:783  */
    break;

  case 22:
#line 443 "grammar.y" /* glr.c:783  */
    { LOG("for_statement (0)\n"); }
#line 2324 "grammar.mm" /* glr.c:783  */
    break;

  case 23:
#line 444 "grammar.y" /* glr.c:783  */
    { LOG("for_init (0)\n"); }
#line 2330 "grammar.mm" /* glr.c:783  */
    break;

  case 24:
#line 445 "grammar.y" /* glr.c:783  */
    { LOG("for_init (1)\n"); }
#line 2336 "grammar.mm" /* glr.c:783  */
    break;

  case 25:
#line 449 "grammar.y" /* glr.c:783  */
    { LOG("for_in_statement (0)\n"); }
#line 2342 "grammar.mm" /* glr.c:783  */
    break;

  case 26:
#line 453 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[WhileStatement alloc] initWithWhileCondition:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) codeBlock:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("while_statement (0)\n"); }
#line 2348 "grammar.mm" /* glr.c:783  */
    break;

  case 27:
#line 454 "grammar.y" /* glr.c:783  */
    { LOG("while_condition (0)\n"); }
#line 2354 "grammar.mm" /* glr.c:783  */
    break;

  case 28:
#line 455 "grammar.y" /* glr.c:783  */
    { LOG("while_condition (1)\n"); }
#line 2360 "grammar.mm" /* glr.c:783  */
    break;

  case 29:
#line 459 "grammar.y" /* glr.c:783  */
    { LOG("do_while_statement (0)\n"); }
#line 2366 "grammar.mm" /* glr.c:783  */
    break;

  case 30:
#line 463 "grammar.y" /* glr.c:783  */
    { LOG("branch_statement (0)\n"); }
#line 2372 "grammar.mm" /* glr.c:783  */
    break;

  case 31:
#line 464 "grammar.y" /* glr.c:783  */
    { LOG("branch_statement (0)\n"); }
#line 2378 "grammar.mm" /* glr.c:783  */
    break;

  case 32:
#line 468 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[IfStatement alloc] initWithIfCondition:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) body:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) elseClause:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("if_statement (0)\n"); }
#line 2384 "grammar.mm" /* glr.c:783  */
    break;

  case 33:
#line 469 "grammar.y" /* glr.c:783  */
    {}
#line 2390 "grammar.mm" /* glr.c:783  */
    break;

  case 34:
#line 469 "grammar.y" /* glr.c:783  */
    { LOG("else_clause_opt\n"); }
#line 2396 "grammar.mm" /* glr.c:783  */
    break;

  case 35:
#line 470 "grammar.y" /* glr.c:783  */
    { LOG("if_condition (0)\n"); }
#line 2402 "grammar.mm" /* glr.c:783  */
    break;

  case 36:
#line 471 "grammar.y" /* glr.c:783  */
    { LOG("if_condition (1)\n"); }
#line 2408 "grammar.mm" /* glr.c:783  */
    break;

  case 37:
#line 472 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node); LOG("else_clause (0)\n"); }
#line 2414 "grammar.mm" /* glr.c:783  */
    break;

  case 38:
#line 473 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node); LOG("else_clause (1)\n"); }
#line 2420 "grammar.mm" /* glr.c:783  */
    break;

  case 39:
#line 477 "grammar.y" /* glr.c:783  */
    { LOG("switch_statement (0)\n"); }
#line 2426 "grammar.mm" /* glr.c:783  */
    break;

  case 40:
#line 478 "grammar.y" /* glr.c:783  */
    {}
#line 2432 "grammar.mm" /* glr.c:783  */
    break;

  case 41:
#line 478 "grammar.y" /* glr.c:783  */
    { LOG("switch_cases_opt\n"); }
#line 2438 "grammar.mm" /* glr.c:783  */
    break;

  case 42:
#line 479 "grammar.y" /* glr.c:783  */
    { LOG("switch_cases (0)\n"); }
#line 2444 "grammar.mm" /* glr.c:783  */
    break;

  case 43:
#line 480 "grammar.y" /* glr.c:783  */
    { LOG("switch_case (0)\n"); }
#line 2450 "grammar.mm" /* glr.c:783  */
    break;

  case 44:
#line 481 "grammar.y" /* glr.c:783  */
    { LOG("switch_case (1)\n"); }
#line 2456 "grammar.mm" /* glr.c:783  */
    break;

  case 45:
#line 482 "grammar.y" /* glr.c:783  */
    { LOG("switch_case (0)\n"); }
#line 2462 "grammar.mm" /* glr.c:783  */
    break;

  case 46:
#line 483 "grammar.y" /* glr.c:783  */
    { LOG("switch_case (1)\n"); }
#line 2468 "grammar.mm" /* glr.c:783  */
    break;

  case 47:
#line 484 "grammar.y" /* glr.c:783  */
    { LOG("case_label (0)\n"); }
#line 2474 "grammar.mm" /* glr.c:783  */
    break;

  case 48:
#line 485 "grammar.y" /* glr.c:783  */
    { LOG("case_item_list (0)\n"); }
#line 2480 "grammar.mm" /* glr.c:783  */
    break;

  case 49:
#line 486 "grammar.y" /* glr.c:783  */
    { LOG("case_item_list (1)\n"); }
#line 2486 "grammar.mm" /* glr.c:783  */
    break;

  case 50:
#line 487 "grammar.y" /* glr.c:783  */
    {}
#line 2492 "grammar.mm" /* glr.c:783  */
    break;

  case 51:
#line 487 "grammar.y" /* glr.c:783  */
    { LOG("guard_clause_opt\n"); }
#line 2498 "grammar.mm" /* glr.c:783  */
    break;

  case 52:
#line 488 "grammar.y" /* glr.c:783  */
    { LOG("default_label (0)\n"); }
#line 2504 "grammar.mm" /* glr.c:783  */
    break;

  case 53:
#line 489 "grammar.y" /* glr.c:783  */
    { LOG("guard_clause (0)\n"); }
#line 2510 "grammar.mm" /* glr.c:783  */
    break;

  case 54:
#line 490 "grammar.y" /* glr.c:783  */
    { LOG("guard_expression (0)\n"); }
#line 2516 "grammar.mm" /* glr.c:783  */
    break;

  case 55:
#line 494 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[LabelStatement alloc] initWithLabelName:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str)) loop:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("labeled_statement (0)\n"); }
#line 2522 "grammar.mm" /* glr.c:783  */
    break;

  case 56:
#line 495 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = NULL; LOG("labeled_statement (1)\n"); }
#line 2528 "grammar.mm" /* glr.c:783  */
    break;

  case 57:
#line 496 "grammar.y" /* glr.c:783  */
    { LOG("statement_label (0)\n"); }
#line 2534 "grammar.mm" /* glr.c:783  */
    break;

  case 58:
#line 497 "grammar.y" /* glr.c:783  */
    { LOG("label_name (0)\n"); }
#line 2540 "grammar.mm" /* glr.c:783  */
    break;

  case 59:
#line 501 "grammar.y" /* glr.c:783  */
    { LOG("control_transfer_statement (0)\n"); }
#line 2546 "grammar.mm" /* glr.c:783  */
    break;

  case 60:
#line 502 "grammar.y" /* glr.c:783  */
    { LOG("control_transfer_statement (0)\n"); }
#line 2552 "grammar.mm" /* glr.c:783  */
    break;

  case 61:
#line 503 "grammar.y" /* glr.c:783  */
    { LOG("control_transfer_statement (0)\n"); }
#line 2558 "grammar.mm" /* glr.c:783  */
    break;

  case 62:
#line 504 "grammar.y" /* glr.c:783  */
    { LOG("control_transfer_statement (0)\n"); }
#line 2564 "grammar.mm" /* glr.c:783  */
    break;

  case 63:
#line 508 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BreakStatement alloc] initWithLabelId:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))]; LOG("break_statement (0)\n"); }
#line 2570 "grammar.mm" /* glr.c:783  */
    break;

  case 64:
#line 509 "grammar.y" /* glr.c:783  */
    {}
#line 2576 "grammar.mm" /* glr.c:783  */
    break;

  case 65:
#line 509 "grammar.y" /* glr.c:783  */
    {  LOG("label_name_opt\n"); }
#line 2582 "grammar.mm" /* glr.c:783  */
    break;

  case 66:
#line 513 "grammar.y" /* glr.c:783  */
    { LOG("continue_statement (0)\n"); }
#line 2588 "grammar.mm" /* glr.c:783  */
    break;

  case 67:
#line 517 "grammar.y" /* glr.c:783  */
    { LOG("fallthrough_statement (0)\n"); }
#line 2594 "grammar.mm" /* glr.c:783  */
    break;

  case 68:
#line 521 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[ReturnStatement alloc] initWithReturnExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("return_statement (0)\n"); }
#line 2600 "grammar.mm" /* glr.c:783  */
    break;

  case 69:
#line 528 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter_clause (0)\n"); }
#line 2606 "grammar.mm" /* glr.c:783  */
    break;

  case 70:
#line 529 "grammar.y" /* glr.c:783  */
    {}
#line 2612 "grammar.mm" /* glr.c:783  */
    break;

  case 71:
#line 529 "grammar.y" /* glr.c:783  */
    { LOG("requirement_clause_opt\n"); }
#line 2618 "grammar.mm" /* glr.c:783  */
    break;

  case 72:
#line 530 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter_list (0)\n"); }
#line 2624 "grammar.mm" /* glr.c:783  */
    break;

  case 73:
#line 531 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter_list (1)\n"); }
#line 2630 "grammar.mm" /* glr.c:783  */
    break;

  case 74:
#line 532 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter (0)\n"); }
#line 2636 "grammar.mm" /* glr.c:783  */
    break;

  case 75:
#line 533 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter (0)\n"); }
#line 2642 "grammar.mm" /* glr.c:783  */
    break;

  case 76:
#line 534 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter (0)\n"); }
#line 2648 "grammar.mm" /* glr.c:783  */
    break;

  case 77:
#line 535 "grammar.y" /* glr.c:783  */
    { LOG("requirement_clause (0)\n"); }
#line 2654 "grammar.mm" /* glr.c:783  */
    break;

  case 78:
#line 536 "grammar.y" /* glr.c:783  */
    { LOG("requirement_list (0)\n"); }
#line 2660 "grammar.mm" /* glr.c:783  */
    break;

  case 79:
#line 537 "grammar.y" /* glr.c:783  */
    { LOG("requirement_list (1)\n"); }
#line 2666 "grammar.mm" /* glr.c:783  */
    break;

  case 80:
#line 538 "grammar.y" /* glr.c:783  */
    { LOG("requirement (0)\n"); }
#line 2672 "grammar.mm" /* glr.c:783  */
    break;

  case 81:
#line 539 "grammar.y" /* glr.c:783  */
    { LOG("requirement (1)\n"); }
#line 2678 "grammar.mm" /* glr.c:783  */
    break;

  case 82:
#line 540 "grammar.y" /* glr.c:783  */
    { LOG("conformance_requirement (0)\n"); }
#line 2684 "grammar.mm" /* glr.c:783  */
    break;

  case 83:
#line 541 "grammar.y" /* glr.c:783  */
    { LOG("conformance_requirement (0)\n"); }
#line 2690 "grammar.mm" /* glr.c:783  */
    break;

  case 84:
#line 542 "grammar.y" /* glr.c:783  */
    { LOG("same_type_requirement (0)\n"); }
#line 2696 "grammar.mm" /* glr.c:783  */
    break;

  case 85:
#line 546 "grammar.y" /* glr.c:783  */
    { LOG("generic_argument_clause (0)\n"); }
#line 2702 "grammar.mm" /* glr.c:783  */
    break;

  case 86:
#line 547 "grammar.y" /* glr.c:783  */
    { LOG("generic_argument_list (0)\n"); }
#line 2708 "grammar.mm" /* glr.c:783  */
    break;

  case 87:
#line 548 "grammar.y" /* glr.c:783  */
    { LOG("generic_argument_list (1)\n"); }
#line 2714 "grammar.mm" /* glr.c:783  */
    break;

  case 88:
#line 549 "grammar.y" /* glr.c:783  */
    { LOG("generic_argument (0)\n"); }
#line 2720 "grammar.mm" /* glr.c:783  */
    break;

  case 89:
#line 556 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2726 "grammar.mm" /* glr.c:783  */
    break;

  case 90:
#line 557 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2732 "grammar.mm" /* glr.c:783  */
    break;

  case 91:
#line 558 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2738 "grammar.mm" /* glr.c:783  */
    break;

  case 92:
#line 559 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2744 "grammar.mm" /* glr.c:783  */
    break;

  case 93:
#line 560 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2750 "grammar.mm" /* glr.c:783  */
    break;

  case 94:
#line 561 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2756 "grammar.mm" /* glr.c:783  */
    break;

  case 95:
#line 562 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2762 "grammar.mm" /* glr.c:783  */
    break;

  case 96:
#line 563 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2768 "grammar.mm" /* glr.c:783  */
    break;

  case 97:
#line 564 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2774 "grammar.mm" /* glr.c:783  */
    break;

  case 98:
#line 565 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2780 "grammar.mm" /* glr.c:783  */
    break;

  case 99:
#line 566 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2786 "grammar.mm" /* glr.c:783  */
    break;

  case 100:
#line 567 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2792 "grammar.mm" /* glr.c:783  */
    break;

  case 101:
#line 568 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2798 "grammar.mm" /* glr.c:783  */
    break;

  case 102:
#line 569 "grammar.y" /* glr.c:783  */
    { LOG("declaration (0)\n"); }
#line 2804 "grammar.mm" /* glr.c:783  */
    break;

  case 103:
#line 570 "grammar.y" /* glr.c:783  */
    { LOG("declarations (0)\n"); }
#line 2810 "grammar.mm" /* glr.c:783  */
    break;

  case 104:
#line 571 "grammar.y" /* glr.c:783  */
    {}
#line 2816 "grammar.mm" /* glr.c:783  */
    break;

  case 105:
#line 571 "grammar.y" /* glr.c:783  */
    { LOG("declarations_opt\n"); }
#line 2822 "grammar.mm" /* glr.c:783  */
    break;

  case 106:
#line 572 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifiers (0)\n"); }
#line 2828 "grammar.mm" /* glr.c:783  */
    break;

  case 107:
#line 573 "grammar.y" /* glr.c:783  */
    {}
#line 2834 "grammar.mm" /* glr.c:783  */
    break;

  case 108:
#line 573 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifiers_opt\n"); }
#line 2840 "grammar.mm" /* glr.c:783  */
    break;

  case 109:
#line 574 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (0)\n"); }
#line 2846 "grammar.mm" /* glr.c:783  */
    break;

  case 110:
#line 575 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (1)\n"); }
#line 2852 "grammar.mm" /* glr.c:783  */
    break;

  case 111:
#line 576 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (2)\n"); }
#line 2858 "grammar.mm" /* glr.c:783  */
    break;

  case 112:
#line 577 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (3)\n"); }
#line 2864 "grammar.mm" /* glr.c:783  */
    break;

  case 113:
#line 578 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (4)\n"); }
#line 2870 "grammar.mm" /* glr.c:783  */
    break;

  case 114:
#line 579 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (5)\n"); }
#line 2876 "grammar.mm" /* glr.c:783  */
    break;

  case 115:
#line 580 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (6)\n"); }
#line 2882 "grammar.mm" /* glr.c:783  */
    break;

  case 116:
#line 581 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (7)\n"); }
#line 2888 "grammar.mm" /* glr.c:783  */
    break;

  case 117:
#line 582 "grammar.y" /* glr.c:783  */
    { LOG("declaration_specifier (8)\n"); }
#line 2894 "grammar.mm" /* glr.c:783  */
    break;

  case 118:
#line 586 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node); LOG("code_block (0)\n"); }
#line 2900 "grammar.mm" /* glr.c:783  */
    break;

  case 119:
#line 587 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = NULL; LOG("code_block (1)\n"); }
#line 2906 "grammar.mm" /* glr.c:783  */
    break;

  case 120:
#line 591 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[ImportStatement alloc] initWithPath:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))]; LOG("import_declaration (0)\n"); }
#line 2912 "grammar.mm" /* glr.c:783  */
    break;

  case 121:
#line 592 "grammar.y" /* glr.c:783  */
    {}
#line 2918 "grammar.mm" /* glr.c:783  */
    break;

  case 122:
#line 592 "grammar.y" /* glr.c:783  */
    { LOG("attributes_opt\n"); }
#line 2924 "grammar.mm" /* glr.c:783  */
    break;

  case 123:
#line 593 "grammar.y" /* glr.c:783  */
    {}
#line 2930 "grammar.mm" /* glr.c:783  */
    break;

  case 124:
#line 593 "grammar.y" /* glr.c:783  */
    { LOG("import_kind_opt\n"); }
#line 2936 "grammar.mm" /* glr.c:783  */
    break;

  case 125:
#line 594 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (0)\n"); }
#line 2942 "grammar.mm" /* glr.c:783  */
    break;

  case 126:
#line 595 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (1)\n"); }
#line 2948 "grammar.mm" /* glr.c:783  */
    break;

  case 127:
#line 596 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (2)\n"); }
#line 2954 "grammar.mm" /* glr.c:783  */
    break;

  case 128:
#line 597 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (3)\n"); }
#line 2960 "grammar.mm" /* glr.c:783  */
    break;

  case 129:
#line 598 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (4)\n"); }
#line 2966 "grammar.mm" /* glr.c:783  */
    break;

  case 130:
#line 599 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (5)\n"); }
#line 2972 "grammar.mm" /* glr.c:783  */
    break;

  case 131:
#line 600 "grammar.y" /* glr.c:783  */
    { LOG("import_kind (6)\n"); }
#line 2978 "grammar.mm" /* glr.c:783  */
    break;

  case 132:
#line 601 "grammar.y" /* glr.c:783  */
    { LOG("import_path (0)\n"); }
#line 2984 "grammar.mm" /* glr.c:783  */
    break;

  case 133:
#line 602 "grammar.y" /* glr.c:783  */
    { LOG("import_path (1)\n"); }
#line 2990 "grammar.mm" /* glr.c:783  */
    break;

  case 134:
#line 603 "grammar.y" /* glr.c:783  */
    { LOG("import_path_identifier (0)\n"); }
#line 2996 "grammar.mm" /* glr.c:783  */
    break;

  case 135:
#line 604 "grammar.y" /* glr.c:783  */
    { LOG("import_path_identifier (1)\n"); }
#line 3002 "grammar.mm" /* glr.c:783  */
    break;

  case 136:
#line 608 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[VariableDeclaration alloc] initWithInitializer:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("constant_declaration (0)\n"); }
#line 3008 "grammar.mm" /* glr.c:783  */
    break;

  case 137:
#line 609 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) next:nil];  LOG("pattern_initializer_list (0)\n"); }
#line 3014 "grammar.mm" /* glr.c:783  */
    break;

  case 138:
#line 610 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("pattern_initializer_list (1)\n"); }
#line 3020 "grammar.mm" /* glr.c:783  */
    break;

  case 139:
#line 611 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:[[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) next:nil]]; LOG("pattern_initializer (0)\n"); }
#line 3026 "grammar.mm" /* glr.c:783  */
    break;

  case 140:
#line 612 "grammar.y" /* glr.c:783  */
    { LOG("pattern_initializer (1)\n"); }
#line 3032 "grammar.mm" /* glr.c:783  */
    break;

  case 141:
#line 613 "grammar.y" /* glr.c:783  */
    {}
#line 3038 "grammar.mm" /* glr.c:783  */
    break;

  case 142:
#line 613 "grammar.y" /* glr.c:783  */
    { LOG("initializer_opt\n"); }
#line 3044 "grammar.mm" /* glr.c:783  */
    break;

  case 143:
#line 614 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[AssignmentOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];  LOG("initializer (0)\n"); }
#line 3050 "grammar.mm" /* glr.c:783  */
    break;

  case 144:
#line 618 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[VariableDeclaration alloc] initWithInitializer:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("variable_declaration (0)\n"); }
#line 3056 "grammar.mm" /* glr.c:783  */
    break;

  case 145:
#line 619 "grammar.y" /* glr.c:783  */
    { LOG("variable_declaration (0)\n"); }
#line 3062 "grammar.mm" /* glr.c:783  */
    break;

  case 146:
#line 620 "grammar.y" /* glr.c:783  */
    { LOG("variable_declaration (0)\n"); }
#line 3068 "grammar.mm" /* glr.c:783  */
    break;

  case 147:
#line 621 "grammar.y" /* glr.c:783  */
    { LOG("variable_declaration (0)\n"); }
#line 3074 "grammar.mm" /* glr.c:783  */
    break;

  case 148:
#line 622 "grammar.y" /* glr.c:783  */
    { LOG("variable_declaration (0)\n"); }
#line 3080 "grammar.mm" /* glr.c:783  */
    break;

  case 149:
#line 623 "grammar.y" /* glr.c:783  */
    { LOG("variable_declaration_head (0)\n"); }
#line 3086 "grammar.mm" /* glr.c:783  */
    break;

  case 150:
#line 624 "grammar.y" /* glr.c:783  */
    { LOG("variable_name (0)\n"); }
#line 3092 "grammar.mm" /* glr.c:783  */
    break;

  case 151:
#line 625 "grammar.y" /* glr.c:783  */
    { LOG("getter_setter_block (0)\n"); }
#line 3098 "grammar.mm" /* glr.c:783  */
    break;

  case 152:
#line 626 "grammar.y" /* glr.c:783  */
    {}
#line 3104 "grammar.mm" /* glr.c:783  */
    break;

  case 153:
#line 626 "grammar.y" /* glr.c:783  */
    { LOG("setter_clause_opt\n"); }
#line 3110 "grammar.mm" /* glr.c:783  */
    break;

  case 154:
#line 627 "grammar.y" /* glr.c:783  */
    { LOG("getter_setter_block (0)\n"); }
#line 3116 "grammar.mm" /* glr.c:783  */
    break;

  case 155:
#line 628 "grammar.y" /* glr.c:783  */
    { LOG("getter_clause (0)\n"); }
#line 3122 "grammar.mm" /* glr.c:783  */
    break;

  case 156:
#line 629 "grammar.y" /* glr.c:783  */
    { LOG("setter_clause (0)\n"); }
#line 3128 "grammar.mm" /* glr.c:783  */
    break;

  case 157:
#line 630 "grammar.y" /* glr.c:783  */
    {}
#line 3134 "grammar.mm" /* glr.c:783  */
    break;

  case 158:
#line 630 "grammar.y" /* glr.c:783  */
    { LOG("setter_name_opt\n"); }
#line 3140 "grammar.mm" /* glr.c:783  */
    break;

  case 159:
#line 631 "grammar.y" /* glr.c:783  */
    { LOG("setter_name (0)\n"); }
#line 3146 "grammar.mm" /* glr.c:783  */
    break;

  case 160:
#line 632 "grammar.y" /* glr.c:783  */
    { LOG("getter_setter_keyword_block (0)\n"); }
#line 3152 "grammar.mm" /* glr.c:783  */
    break;

  case 161:
#line 633 "grammar.y" /* glr.c:783  */
    {}
#line 3158 "grammar.mm" /* glr.c:783  */
    break;

  case 162:
#line 633 "grammar.y" /* glr.c:783  */
    { LOG("setter_keyword_clause_opt\n"); }
#line 3164 "grammar.mm" /* glr.c:783  */
    break;

  case 163:
#line 634 "grammar.y" /* glr.c:783  */
    { LOG("getter_setter_keyword_block (0)\n"); }
#line 3170 "grammar.mm" /* glr.c:783  */
    break;

  case 164:
#line 635 "grammar.y" /* glr.c:783  */
    { LOG("getter_keyword_clause (0)\n"); }
#line 3176 "grammar.mm" /* glr.c:783  */
    break;

  case 165:
#line 636 "grammar.y" /* glr.c:783  */
    { LOG("setter_keyword_clause (0)\n"); }
#line 3182 "grammar.mm" /* glr.c:783  */
    break;

  case 166:
#line 637 "grammar.y" /* glr.c:783  */
    { LOG("willSet_didSet_block (0)\n"); }
#line 3188 "grammar.mm" /* glr.c:783  */
    break;

  case 167:
#line 638 "grammar.y" /* glr.c:783  */
    {}
#line 3194 "grammar.mm" /* glr.c:783  */
    break;

  case 168:
#line 638 "grammar.y" /* glr.c:783  */
    { LOG("didSet_clause_opt\n"); }
#line 3200 "grammar.mm" /* glr.c:783  */
    break;

  case 169:
#line 639 "grammar.y" /* glr.c:783  */
    { LOG("willSet_didSet_block (0)\n"); }
#line 3206 "grammar.mm" /* glr.c:783  */
    break;

  case 170:
#line 640 "grammar.y" /* glr.c:783  */
    { LOG("willSet_clause (0)\n"); }
#line 3212 "grammar.mm" /* glr.c:783  */
    break;

  case 171:
#line 641 "grammar.y" /* glr.c:783  */
    { LOG("didSet_clause (0)\n"); }
#line 3218 "grammar.mm" /* glr.c:783  */
    break;

  case 172:
#line 645 "grammar.y" /* glr.c:783  */
    { LOG("typealias_declaration (0)\n"); }
#line 3224 "grammar.mm" /* glr.c:783  */
    break;

  case 173:
#line 646 "grammar.y" /* glr.c:783  */
    { LOG("typealias_head (0)\n"); }
#line 3230 "grammar.mm" /* glr.c:783  */
    break;

  case 174:
#line 647 "grammar.y" /* glr.c:783  */
    { LOG("typealias_name (0)\n"); }
#line 3236 "grammar.mm" /* glr.c:783  */
    break;

  case 175:
#line 648 "grammar.y" /* glr.c:783  */
    { LOG("typealias_assignment (0)\n"); }
#line 3242 "grammar.mm" /* glr.c:783  */
    break;

  case 176:
#line 652 "grammar.y" /* glr.c:783  */
    {
    ((*yyvalp).node) = [[FunctionDeclaration alloc] initWithName:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.str)) signature:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) body:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];
    LOG("function_declaration (0)\n");
}
#line 3251 "grammar.mm" /* glr.c:783  */
    break;

  case 177:
#line 656 "grammar.y" /* glr.c:783  */
    {}
#line 3257 "grammar.mm" /* glr.c:783  */
    break;

  case 178:
#line 656 "grammar.y" /* glr.c:783  */
    { LOG("generic_parameter_clause_opt\n"); }
#line 3263 "grammar.mm" /* glr.c:783  */
    break;

  case 179:
#line 657 "grammar.y" /* glr.c:783  */
    { LOG("function_head (0)\n"); }
#line 3269 "grammar.mm" /* glr.c:783  */
    break;

  case 180:
#line 658 "grammar.y" /* glr.c:783  */
    { LOG("function_name (0)\n"); }
#line 3275 "grammar.mm" /* glr.c:783  */
    break;

  case 181:
#line 659 "grammar.y" /* glr.c:783  */
    { LOG("function_name (1)\n"); }
#line 3281 "grammar.mm" /* glr.c:783  */
    break;

  case 182:
#line 660 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node); LOG("function_signature (0)\n"); }
#line 3287 "grammar.mm" /* glr.c:783  */
    break;

  case 183:
#line 661 "grammar.y" /* glr.c:783  */
    {}
#line 3293 "grammar.mm" /* glr.c:783  */
    break;

  case 184:
#line 661 "grammar.y" /* glr.c:783  */
    { LOG("function_result_opt\n"); }
#line 3299 "grammar.mm" /* glr.c:783  */
    break;

  case 185:
#line 662 "grammar.y" /* glr.c:783  */
    { LOG("function_result (0)\n"); }
#line 3305 "grammar.mm" /* glr.c:783  */
    break;

  case 186:
#line 663 "grammar.y" /* glr.c:783  */
    { LOG("function_body (0)\n"); }
#line 3311 "grammar.mm" /* glr.c:783  */
    break;

  case 187:
#line 664 "grammar.y" /* glr.c:783  */
    { LOG("parameter_clauses (0)\n"); }
#line 3317 "grammar.mm" /* glr.c:783  */
    break;

  case 188:
#line 665 "grammar.y" /* glr.c:783  */
    {}
#line 3323 "grammar.mm" /* glr.c:783  */
    break;

  case 189:
#line 665 "grammar.y" /* glr.c:783  */
    { LOG("parameter_clauses_opt\n"); }
#line 3329 "grammar.mm" /* glr.c:783  */
    break;

  case 190:
#line 666 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = NULL; LOG("parameter_clause (0)\n"); }
#line 3335 "grammar.mm" /* glr.c:783  */
    break;

  case 191:
#line 667 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node); LOG("parameter_clause (1)\n"); }
#line 3341 "grammar.mm" /* glr.c:783  */
    break;

  case 192:
#line 668 "grammar.y" /* glr.c:783  */
    {}
#line 3347 "grammar.mm" /* glr.c:783  */
    break;

  case 193:
#line 668 "grammar.y" /* glr.c:783  */
    { LOG("tripledot_opt\n"); }
#line 3353 "grammar.mm" /* glr.c:783  */
    break;

  case 194:
#line 669 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) next:nil]; LOG("parameter_list (0)\n"); }
#line 3359 "grammar.mm" /* glr.c:783  */
    break;

  case 195:
#line 670 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];LOG("parameter_list (1)\n"); }
#line 3365 "grammar.mm" /* glr.c:783  */
    break;

  case 196:
#line 671 "grammar.y" /* glr.c:783  */
    {
    ((*yyvalp).node) = [[FunctionParameter alloc] initWithInoutVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL (-6)].yystate.yysemantics.yysval.node) letVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.node) hashVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.node) external:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.str)) local:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.str)) defVal:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];
    LOG("parameter (0)\n");
}
#line 3374 "grammar.mm" /* glr.c:783  */
    break;

  case 197:
#line 675 "grammar.y" /* glr.c:783  */
    {}
#line 3380 "grammar.mm" /* glr.c:783  */
    break;

  case 198:
#line 675 "grammar.y" /* glr.c:783  */
    { LOG("inout_opt\n"); }
#line 3386 "grammar.mm" /* glr.c:783  */
    break;

  case 199:
#line 676 "grammar.y" /* glr.c:783  */
    {}
#line 3392 "grammar.mm" /* glr.c:783  */
    break;

  case 200:
#line 676 "grammar.y" /* glr.c:783  */
    { LOG("let_opt\n"); }
#line 3398 "grammar.mm" /* glr.c:783  */
    break;

  case 201:
#line 677 "grammar.y" /* glr.c:783  */
    {}
#line 3404 "grammar.mm" /* glr.c:783  */
    break;

  case 202:
#line 677 "grammar.y" /* glr.c:783  */
    { LOG("hash_opt\n"); }
#line 3410 "grammar.mm" /* glr.c:783  */
    break;

  case 203:
#line 678 "grammar.y" /* glr.c:783  */
    {}
#line 3416 "grammar.mm" /* glr.c:783  */
    break;

  case 204:
#line 678 "grammar.y" /* glr.c:783  */
    { LOG("local_parameter_name_opt\n"); }
#line 3422 "grammar.mm" /* glr.c:783  */
    break;

  case 205:
#line 679 "grammar.y" /* glr.c:783  */
    {}
#line 3428 "grammar.mm" /* glr.c:783  */
    break;

  case 206:
#line 679 "grammar.y" /* glr.c:783  */
    { LOG("default_argument_clause_opt\n"); }
#line 3434 "grammar.mm" /* glr.c:783  */
    break;

  case 207:
#line 680 "grammar.y" /* glr.c:783  */
    { LOG("parameter (0)\n"); }
#line 3440 "grammar.mm" /* glr.c:783  */
    break;

  case 208:
#line 681 "grammar.y" /* glr.c:783  */
    { LOG("parameter (0)\n"); }
#line 3446 "grammar.mm" /* glr.c:783  */
    break;

  case 209:
#line 682 "grammar.y" /* glr.c:783  */
    { LOG("parameter_name (0)\n"); }
#line 3452 "grammar.mm" /* glr.c:783  */
    break;

  case 210:
#line 683 "grammar.y" /* glr.c:783  */
    { LOG("parameter_name (1)\n"); }
#line 3458 "grammar.mm" /* glr.c:783  */
    break;

  case 211:
#line 684 "grammar.y" /* glr.c:783  */
    { LOG("local_parameter_name (0)\n"); }
#line 3464 "grammar.mm" /* glr.c:783  */
    break;

  case 212:
#line 685 "grammar.y" /* glr.c:783  */
    { LOG("local_parameter_name (1)\n"); }
#line 3470 "grammar.mm" /* glr.c:783  */
    break;

  case 213:
#line 686 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node); LOG("default_argument_clause (0)\n"); }
#line 3476 "grammar.mm" /* glr.c:783  */
    break;

  case 214:
#line 690 "grammar.y" /* glr.c:783  */
    { LOG("enum_declaration (0)\n"); }
#line 3482 "grammar.mm" /* glr.c:783  */
    break;

  case 215:
#line 691 "grammar.y" /* glr.c:783  */
    { LOG("enum_declaration (1)\n"); }
#line 3488 "grammar.mm" /* glr.c:783  */
    break;

  case 216:
#line 692 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum (0)\n"); }
#line 3494 "grammar.mm" /* glr.c:783  */
    break;

  case 217:
#line 693 "grammar.y" /* glr.c:783  */
    {}
#line 3500 "grammar.mm" /* glr.c:783  */
    break;

  case 218:
#line 693 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_members_opt\n"); }
#line 3506 "grammar.mm" /* glr.c:783  */
    break;

  case 219:
#line 694 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_members (0)\n"); }
#line 3512 "grammar.mm" /* glr.c:783  */
    break;

  case 220:
#line 695 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_member (0)\n"); }
#line 3518 "grammar.mm" /* glr.c:783  */
    break;

  case 221:
#line 696 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_member (1)\n"); }
#line 3524 "grammar.mm" /* glr.c:783  */
    break;

  case 222:
#line 697 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_case_clause (0)\n"); }
#line 3530 "grammar.mm" /* glr.c:783  */
    break;

  case 223:
#line 698 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_case_list (0)\n"); }
#line 3536 "grammar.mm" /* glr.c:783  */
    break;

  case 224:
#line 699 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_case_list (1)\n"); }
#line 3542 "grammar.mm" /* glr.c:783  */
    break;

  case 225:
#line 700 "grammar.y" /* glr.c:783  */
    { LOG("union_style_enum_case (0)\n"); }
#line 3548 "grammar.mm" /* glr.c:783  */
    break;

  case 226:
#line 701 "grammar.y" /* glr.c:783  */
    {}
#line 3554 "grammar.mm" /* glr.c:783  */
    break;

  case 227:
#line 701 "grammar.y" /* glr.c:783  */
    { LOG("tuple_type_opt\n"); }
#line 3560 "grammar.mm" /* glr.c:783  */
    break;

  case 228:
#line 702 "grammar.y" /* glr.c:783  */
    { LOG("enum_name (0)\n"); }
#line 3566 "grammar.mm" /* glr.c:783  */
    break;

  case 229:
#line 703 "grammar.y" /* glr.c:783  */
    { LOG("enum_case_name (0)\n"); }
#line 3572 "grammar.mm" /* glr.c:783  */
    break;

  case 230:
#line 704 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum (0)\n"); }
#line 3578 "grammar.mm" /* glr.c:783  */
    break;

  case 231:
#line 705 "grammar.y" /* glr.c:783  */
    {}
#line 3584 "grammar.mm" /* glr.c:783  */
    break;

  case 232:
#line 705 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_members_opt\n"); }
#line 3590 "grammar.mm" /* glr.c:783  */
    break;

  case 233:
#line 706 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_members (0)\n"); }
#line 3596 "grammar.mm" /* glr.c:783  */
    break;

  case 234:
#line 707 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_member (0)\n"); }
#line 3602 "grammar.mm" /* glr.c:783  */
    break;

  case 235:
#line 708 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_member (1)\n"); }
#line 3608 "grammar.mm" /* glr.c:783  */
    break;

  case 236:
#line 709 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_case_clause (0)\n"); }
#line 3614 "grammar.mm" /* glr.c:783  */
    break;

  case 237:
#line 710 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_case_list (0)\n"); }
#line 3620 "grammar.mm" /* glr.c:783  */
    break;

  case 238:
#line 711 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_case_list (1)\n"); }
#line 3626 "grammar.mm" /* glr.c:783  */
    break;

  case 239:
#line 712 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_style_enum_case (0)\n"); }
#line 3632 "grammar.mm" /* glr.c:783  */
    break;

  case 240:
#line 713 "grammar.y" /* glr.c:783  */
    {}
#line 3638 "grammar.mm" /* glr.c:783  */
    break;

  case 241:
#line 713 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_assignment_opt\n"); }
#line 3644 "grammar.mm" /* glr.c:783  */
    break;

  case 242:
#line 714 "grammar.y" /* glr.c:783  */
    { LOG("raw_value_assignment (0)\n"); }
#line 3650 "grammar.mm" /* glr.c:783  */
    break;

  case 243:
#line 718 "grammar.y" /* glr.c:783  */
    { LOG("struct_declaration (0)\n"); }
#line 3656 "grammar.mm" /* glr.c:783  */
    break;

  case 244:
#line 719 "grammar.y" /* glr.c:783  */
    {}
#line 3662 "grammar.mm" /* glr.c:783  */
    break;

  case 245:
#line 719 "grammar.y" /* glr.c:783  */
    { LOG("type_inheritance_clause_opt\n"); }
#line 3668 "grammar.mm" /* glr.c:783  */
    break;

  case 246:
#line 720 "grammar.y" /* glr.c:783  */
    { LOG("struct_name (0)\n"); }
#line 3674 "grammar.mm" /* glr.c:783  */
    break;

  case 247:
#line 721 "grammar.y" /* glr.c:783  */
    { LOG("struct_body (0)\n"); }
#line 3680 "grammar.mm" /* glr.c:783  */
    break;

  case 248:
#line 725 "grammar.y" /* glr.c:783  */
    { LOG("class_declaration (0)\n"); }
#line 3686 "grammar.mm" /* glr.c:783  */
    break;

  case 249:
#line 726 "grammar.y" /* glr.c:783  */
    { LOG("class_name (0)\n"); }
#line 3692 "grammar.mm" /* glr.c:783  */
    break;

  case 250:
#line 727 "grammar.y" /* glr.c:783  */
    { LOG("class_body (0)\n"); }
#line 3698 "grammar.mm" /* glr.c:783  */
    break;

  case 251:
#line 731 "grammar.y" /* glr.c:783  */
    { LOG("protocol_declaration (0)\n"); }
#line 3704 "grammar.mm" /* glr.c:783  */
    break;

  case 252:
#line 732 "grammar.y" /* glr.c:783  */
    { LOG("protocol_name (0)\n"); }
#line 3710 "grammar.mm" /* glr.c:783  */
    break;

  case 253:
#line 733 "grammar.y" /* glr.c:783  */
    { LOG("protocol_body (0)\n"); }
#line 3716 "grammar.mm" /* glr.c:783  */
    break;

  case 254:
#line 734 "grammar.y" /* glr.c:783  */
    {}
#line 3722 "grammar.mm" /* glr.c:783  */
    break;

  case 255:
#line 734 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declarations_opt\n"); }
#line 3728 "grammar.mm" /* glr.c:783  */
    break;

  case 256:
#line 735 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declaration (0)\n"); }
#line 3734 "grammar.mm" /* glr.c:783  */
    break;

  case 257:
#line 736 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declaration (0)\n"); }
#line 3740 "grammar.mm" /* glr.c:783  */
    break;

  case 258:
#line 737 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declaration (0)\n"); }
#line 3746 "grammar.mm" /* glr.c:783  */
    break;

  case 259:
#line 738 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declaration (0)\n"); }
#line 3752 "grammar.mm" /* glr.c:783  */
    break;

  case 260:
#line 739 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declaration (0)\n"); }
#line 3758 "grammar.mm" /* glr.c:783  */
    break;

  case 261:
#line 740 "grammar.y" /* glr.c:783  */
    { LOG("protocol_member_declarations (0)\n"); }
#line 3764 "grammar.mm" /* glr.c:783  */
    break;

  case 262:
#line 744 "grammar.y" /* glr.c:783  */
    { LOG("protocol_property_declaration (0)\n"); }
#line 3770 "grammar.mm" /* glr.c:783  */
    break;

  case 263:
#line 748 "grammar.y" /* glr.c:783  */
    { LOG("protocol_method_declaration (0)\n"); }
#line 3776 "grammar.mm" /* glr.c:783  */
    break;

  case 264:
#line 752 "grammar.y" /* glr.c:783  */
    { LOG("protocol_initializer_declaration (0)\n"); }
#line 3782 "grammar.mm" /* glr.c:783  */
    break;

  case 265:
#line 756 "grammar.y" /* glr.c:783  */
    { LOG("protocol_subscript_declaration (0)\n"); }
#line 3788 "grammar.mm" /* glr.c:783  */
    break;

  case 266:
#line 760 "grammar.y" /* glr.c:783  */
    { LOG("protocol_associated_type_declaration (0)\n"); }
#line 3794 "grammar.mm" /* glr.c:783  */
    break;

  case 267:
#line 761 "grammar.y" /* glr.c:783  */
    {}
#line 3800 "grammar.mm" /* glr.c:783  */
    break;

  case 268:
#line 761 "grammar.y" /* glr.c:783  */
    { LOG("typealias_assignment_opt\n"); }
#line 3806 "grammar.mm" /* glr.c:783  */
    break;

  case 269:
#line 765 "grammar.y" /* glr.c:783  */
    { LOG("initializer_declaration (0)\n"); }
#line 3812 "grammar.mm" /* glr.c:783  */
    break;

  case 270:
#line 766 "grammar.y" /* glr.c:783  */
    { LOG("initializer_head (0)\n"); }
#line 3818 "grammar.mm" /* glr.c:783  */
    break;

  case 271:
#line 767 "grammar.y" /* glr.c:783  */
    {}
#line 3824 "grammar.mm" /* glr.c:783  */
    break;

  case 272:
#line 767 "grammar.y" /* glr.c:783  */
    { LOG("convenience_opt\n"); }
#line 3830 "grammar.mm" /* glr.c:783  */
    break;

  case 273:
#line 768 "grammar.y" /* glr.c:783  */
    { LOG("initializer_body (0)\n"); }
#line 3836 "grammar.mm" /* glr.c:783  */
    break;

  case 274:
#line 772 "grammar.y" /* glr.c:783  */
    { LOG("deinitializer_declaration (0)\n"); }
#line 3842 "grammar.mm" /* glr.c:783  */
    break;

  case 275:
#line 776 "grammar.y" /* glr.c:783  */
    { LOG("extension_declaration (0)\n"); }
#line 3848 "grammar.mm" /* glr.c:783  */
    break;

  case 276:
#line 777 "grammar.y" /* glr.c:783  */
    { LOG("extension_body (0)\n"); }
#line 3854 "grammar.mm" /* glr.c:783  */
    break;

  case 277:
#line 781 "grammar.y" /* glr.c:783  */
    { LOG("subscript_declaration (0)\n"); }
#line 3860 "grammar.mm" /* glr.c:783  */
    break;

  case 278:
#line 782 "grammar.y" /* glr.c:783  */
    { LOG("subscript_declaration (0)\n"); }
#line 3866 "grammar.mm" /* glr.c:783  */
    break;

  case 279:
#line 783 "grammar.y" /* glr.c:783  */
    { LOG("subscript_declaration (0)\n"); }
#line 3872 "grammar.mm" /* glr.c:783  */
    break;

  case 280:
#line 784 "grammar.y" /* glr.c:783  */
    { LOG("subscript_head (0)\n"); }
#line 3878 "grammar.mm" /* glr.c:783  */
    break;

  case 281:
#line 785 "grammar.y" /* glr.c:783  */
    { LOG("subscript_result (0)\n"); }
#line 3884 "grammar.mm" /* glr.c:783  */
    break;

  case 282:
#line 789 "grammar.y" /* glr.c:783  */
    { LOG("operator_declaration (0)\n"); }
#line 3890 "grammar.mm" /* glr.c:783  */
    break;

  case 283:
#line 790 "grammar.y" /* glr.c:783  */
    { LOG("operator_declaration (1)\n"); }
#line 3896 "grammar.mm" /* glr.c:783  */
    break;

  case 284:
#line 791 "grammar.y" /* glr.c:783  */
    { LOG("operator_declaration (2)\n"); }
#line 3902 "grammar.mm" /* glr.c:783  */
    break;

  case 285:
#line 792 "grammar.y" /* glr.c:783  */
    { LOG("prefix_operator_declaration (0)\n"); }
#line 3908 "grammar.mm" /* glr.c:783  */
    break;

  case 286:
#line 793 "grammar.y" /* glr.c:783  */
    { LOG("postfix_operator_declaration (0)\n"); }
#line 3914 "grammar.mm" /* glr.c:783  */
    break;

  case 287:
#line 794 "grammar.y" /* glr.c:783  */
    { LOG("infix_operator_declaration (0)\n"); }
#line 3920 "grammar.mm" /* glr.c:783  */
    break;

  case 288:
#line 795 "grammar.y" /* glr.c:783  */
    {}
#line 3926 "grammar.mm" /* glr.c:783  */
    break;

  case 289:
#line 795 "grammar.y" /* glr.c:783  */
    { LOG("infix_operator_attributes_opt\n"); }
#line 3932 "grammar.mm" /* glr.c:783  */
    break;

  case 290:
#line 796 "grammar.y" /* glr.c:783  */
    { LOG("infix_operator_attributes (0)\n"); }
#line 3938 "grammar.mm" /* glr.c:783  */
    break;

  case 291:
#line 797 "grammar.y" /* glr.c:783  */
    {}
#line 3944 "grammar.mm" /* glr.c:783  */
    break;

  case 292:
#line 797 "grammar.y" /* glr.c:783  */
    { LOG("precedence_clause_opt\n"); }
#line 3950 "grammar.mm" /* glr.c:783  */
    break;

  case 293:
#line 798 "grammar.y" /* glr.c:783  */
    {}
#line 3956 "grammar.mm" /* glr.c:783  */
    break;

  case 294:
#line 798 "grammar.y" /* glr.c:783  */
    { LOG("associativity_clause_opt\n"); }
#line 3962 "grammar.mm" /* glr.c:783  */
    break;

  case 295:
#line 799 "grammar.y" /* glr.c:783  */
    { LOG("precedence_clause (0)\n"); }
#line 3968 "grammar.mm" /* glr.c:783  */
    break;

  case 296:
#line 800 "grammar.y" /* glr.c:783  */
    { LOG("precedence_level (0)\n"); }
#line 3974 "grammar.mm" /* glr.c:783  */
    break;

  case 297:
#line 801 "grammar.y" /* glr.c:783  */
    { LOG("associativity_clause (0)\n"); }
#line 3980 "grammar.mm" /* glr.c:783  */
    break;

  case 298:
#line 802 "grammar.y" /* glr.c:783  */
    { LOG("associativity (0)\n"); }
#line 3986 "grammar.mm" /* glr.c:783  */
    break;

  case 299:
#line 803 "grammar.y" /* glr.c:783  */
    { LOG("associativity (1)\n"); }
#line 3992 "grammar.mm" /* glr.c:783  */
    break;

  case 300:
#line 804 "grammar.y" /* glr.c:783  */
    { LOG("associativity (2)\n"); }
#line 3998 "grammar.mm" /* glr.c:783  */
    break;

  case 301:
#line 811 "grammar.y" /* glr.c:783  */
    { LOG("pattern (0)\n"); }
#line 4004 "grammar.mm" /* glr.c:783  */
    break;

  case 302:
#line 812 "grammar.y" /* glr.c:783  */
    {}
#line 4010 "grammar.mm" /* glr.c:783  */
    break;

  case 303:
#line 812 "grammar.y" /* glr.c:783  */
    { LOG("type_annotation_opt\n"); }
#line 4016 "grammar.mm" /* glr.c:783  */
    break;

  case 304:
#line 813 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))]; ((*yyvalp).node).type=(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.type); LOG("pattern (1)\n"); }
#line 4022 "grammar.mm" /* glr.c:783  */
    break;

  case 305:
#line 814 "grammar.y" /* glr.c:783  */
    { LOG("pattern (3)\n"); }
#line 4028 "grammar.mm" /* glr.c:783  */
    break;

  case 306:
#line 815 "grammar.y" /* glr.c:783  */
    { LOG("pattern (4)\n"); }
#line 4034 "grammar.mm" /* glr.c:783  */
    break;

  case 307:
#line 816 "grammar.y" /* glr.c:783  */
    { LOG("pattern (5)\n"); }
#line 4040 "grammar.mm" /* glr.c:783  */
    break;

  case 308:
#line 817 "grammar.y" /* glr.c:783  */
    { LOG("pattern (6)\n"); }
#line 4046 "grammar.mm" /* glr.c:783  */
    break;

  case 309:
#line 818 "grammar.y" /* glr.c:783  */
    { LOG("pattern (7)\n"); }
#line 4052 "grammar.mm" /* glr.c:783  */
    break;

  case 310:
#line 822 "grammar.y" /* glr.c:783  */
    { LOG("wildcard_pattern (0)\n"); }
#line 4058 "grammar.mm" /* glr.c:783  */
    break;

  case 311:
#line 826 "grammar.y" /* glr.c:783  */
    { LOG("identifier_pattern (0)\n"); }
#line 4064 "grammar.mm" /* glr.c:783  */
    break;

  case 312:
#line 830 "grammar.y" /* glr.c:783  */
    { LOG("value_binding_pattern (0)\n"); }
#line 4070 "grammar.mm" /* glr.c:783  */
    break;

  case 313:
#line 831 "grammar.y" /* glr.c:783  */
    { LOG("value_binding_pattern (1)\n"); }
#line 4076 "grammar.mm" /* glr.c:783  */
    break;

  case 314:
#line 835 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern (0)\n"); }
#line 4082 "grammar.mm" /* glr.c:783  */
    break;

  case 315:
#line 836 "grammar.y" /* glr.c:783  */
    {}
#line 4088 "grammar.mm" /* glr.c:783  */
    break;

  case 316:
#line 836 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern_element_list_opt\n"); }
#line 4094 "grammar.mm" /* glr.c:783  */
    break;

  case 317:
#line 837 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern_element_list (0)\n"); }
#line 4100 "grammar.mm" /* glr.c:783  */
    break;

  case 318:
#line 838 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern_element_list (1)\n"); }
#line 4106 "grammar.mm" /* glr.c:783  */
    break;

  case 319:
#line 839 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern_element (0)\n"); }
#line 4112 "grammar.mm" /* glr.c:783  */
    break;

  case 320:
#line 843 "grammar.y" /* glr.c:783  */
    { LOG("enum_case_pattern (0)\n"); }
#line 4118 "grammar.mm" /* glr.c:783  */
    break;

  case 321:
#line 844 "grammar.y" /* glr.c:783  */
    {}
#line 4124 "grammar.mm" /* glr.c:783  */
    break;

  case 322:
#line 844 "grammar.y" /* glr.c:783  */
    { LOG("type_identifier_opt\n"); }
#line 4130 "grammar.mm" /* glr.c:783  */
    break;

  case 323:
#line 845 "grammar.y" /* glr.c:783  */
    {}
#line 4136 "grammar.mm" /* glr.c:783  */
    break;

  case 324:
#line 845 "grammar.y" /* glr.c:783  */
    { LOG("tuple_pattern_opt\n"); }
#line 4142 "grammar.mm" /* glr.c:783  */
    break;

  case 325:
#line 849 "grammar.y" /* glr.c:783  */
    { LOG("type_casting_pattern (0)\n"); }
#line 4148 "grammar.mm" /* glr.c:783  */
    break;

  case 326:
#line 850 "grammar.y" /* glr.c:783  */
    { LOG("type_casting_pattern (1)\n"); }
#line 4154 "grammar.mm" /* glr.c:783  */
    break;

  case 327:
#line 851 "grammar.y" /* glr.c:783  */
    { LOG("is_pattern (0)\n"); }
#line 4160 "grammar.mm" /* glr.c:783  */
    break;

  case 328:
#line 852 "grammar.y" /* glr.c:783  */
    { LOG("as_pattern (0)\n"); }
#line 4166 "grammar.mm" /* glr.c:783  */
    break;

  case 329:
#line 856 "grammar.y" /* glr.c:783  */
    { LOG("expression_pattern (0)\n"); }
#line 4172 "grammar.mm" /* glr.c:783  */
    break;

  case 330:
#line 863 "grammar.y" /* glr.c:783  */
    { LOG("attribute (0)\n"); }
#line 4178 "grammar.mm" /* glr.c:783  */
    break;

  case 331:
#line 864 "grammar.y" /* glr.c:783  */
    {}
#line 4184 "grammar.mm" /* glr.c:783  */
    break;

  case 332:
#line 864 "grammar.y" /* glr.c:783  */
    { LOG("attribute_argument_clause_opt\n"); }
#line 4190 "grammar.mm" /* glr.c:783  */
    break;

  case 333:
#line 865 "grammar.y" /* glr.c:783  */
    { LOG("attribute_name (0)\n"); }
#line 4196 "grammar.mm" /* glr.c:783  */
    break;

  case 334:
#line 866 "grammar.y" /* glr.c:783  */
    { LOG("attribute_argument_clause (0)\n"); }
#line 4202 "grammar.mm" /* glr.c:783  */
    break;

  case 335:
#line 867 "grammar.y" /* glr.c:783  */
    {}
#line 4208 "grammar.mm" /* glr.c:783  */
    break;

  case 336:
#line 867 "grammar.y" /* glr.c:783  */
    { LOG("balanced_tokens_opt\n"); }
#line 4214 "grammar.mm" /* glr.c:783  */
    break;

  case 337:
#line 868 "grammar.y" /* glr.c:783  */
    { LOG("attributes (0)\n"); }
#line 4220 "grammar.mm" /* glr.c:783  */
    break;

  case 338:
#line 869 "grammar.y" /* glr.c:783  */
    { LOG("balanced_tokens (0)\n"); }
#line 4226 "grammar.mm" /* glr.c:783  */
    break;

  case 339:
#line 870 "grammar.y" /* glr.c:783  */
    { LOG("balanced_token (0)\n"); }
#line 4232 "grammar.mm" /* glr.c:783  */
    break;

  case 340:
#line 871 "grammar.y" /* glr.c:783  */
    { LOG("balanced_token (0)\n"); }
#line 4238 "grammar.mm" /* glr.c:783  */
    break;

  case 341:
#line 872 "grammar.y" /* glr.c:783  */
    { LOG("balanced_token (0)\n"); }
#line 4244 "grammar.mm" /* glr.c:783  */
    break;

  case 342:
#line 873 "grammar.y" /* glr.c:783  */
    { LOG("balanced_token (0)\n"); }
#line 4250 "grammar.mm" /* glr.c:783  */
    break;

  case 343:
#line 874 "grammar.y" /* glr.c:783  */
    { LOG("balanced_token (0)\n"); }
#line 4256 "grammar.mm" /* glr.c:783  */
    break;

  case 344:
#line 881 "grammar.y" /* glr.c:783  */
    {LOG("expression (0)\n"); }
#line 4262 "grammar.mm" /* glr.c:783  */
    break;

  case 345:
#line 882 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];}
#line 4268 "grammar.mm" /* glr.c:783  */
    break;

  case 346:
#line 883 "grammar.y" /* glr.c:783  */
    { LOG("expression_list (0)\n"); }
#line 4274 "grammar.mm" /* glr.c:783  */
    break;

  case 347:
#line 884 "grammar.y" /* glr.c:783  */
    { LOG("expression_list (1)\n"); }
#line 4280 "grammar.mm" /* glr.c:783  */
    break;

  case 348:
#line 888 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str) ? [[PrefixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))] : (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node);  LOG("prefix_expression\n"); }
#line 4286 "grammar.mm" /* glr.c:783  */
    break;

  case 349:
#line 889 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = NULL;}
#line 4292 "grammar.mm" /* glr.c:783  */
    break;

  case 350:
#line 889 "grammar.y" /* glr.c:783  */
    { LOG("prefix_operator_opt\n"); }
#line 4298 "grammar.mm" /* glr.c:783  */
    break;

  case 351:
#line 890 "grammar.y" /* glr.c:783  */
    { LOG("prefix_expression (0)\n"); }
#line 4304 "grammar.mm" /* glr.c:783  */
    break;

  case 352:
#line 891 "grammar.y" /* glr.c:783  */
    { LOG("in_out_expression (0)\n"); }
#line 4310 "grammar.mm" /* glr.c:783  */
    break;

  case 353:
#line 895 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BinaryOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) binaryOperator:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))]; LOG("binary_expression (0)\n"); }
#line 4316 "grammar.mm" /* glr.c:783  */
    break;

  case 354:
#line 896 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[AssignmentOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("binary_expression (0)\n"); }
#line 4322 "grammar.mm" /* glr.c:783  */
    break;

  case 355:
#line 897 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[TernaryOperator alloc] initWithTrueOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) falseOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("binary_expression (0)\n"); }
#line 4328 "grammar.mm" /* glr.c:783  */
    break;

  case 356:
#line 898 "grammar.y" /* glr.c:783  */
    { LOG("binary_expression (0)\n"); }
#line 4334 "grammar.mm" /* glr.c:783  */
    break;

  case 357:
#line 899 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; }
#line 4340 "grammar.mm" /* glr.c:783  */
    break;

  case 358:
#line 900 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)];  }
#line 4346 "grammar.mm" /* glr.c:783  */
    break;

  case 359:
#line 906 "grammar.y" /* glr.c:783  */
    { LOG("type_casting_operator (0)\n"); }
#line 4352 "grammar.mm" /* glr.c:783  */
    break;

  case 360:
#line 907 "grammar.y" /* glr.c:783  */
    { LOG("type_casting_operator (1)\n"); }
#line 4358 "grammar.mm" /* glr.c:783  */
    break;

  case 361:
#line 908 "grammar.y" /* glr.c:783  */
    {}
#line 4364 "grammar.mm" /* glr.c:783  */
    break;

  case 362:
#line 908 "grammar.y" /* glr.c:783  */
    { LOG("question_opt\n"); }
#line 4370 "grammar.mm" /* glr.c:783  */
    break;

  case 363:
#line 912 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[IdentifierExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))]; LOG("primary_expression (1)\n"); }
#line 4376 "grammar.mm" /* glr.c:783  */
    break;

  case 364:
#line 913 "grammar.y" /* glr.c:783  */
    {}
#line 4382 "grammar.mm" /* glr.c:783  */
    break;

  case 365:
#line 913 "grammar.y" /* glr.c:783  */
    { LOG("generic_argument_clause_opt\n"); }
#line 4388 "grammar.mm" /* glr.c:783  */
    break;

  case 366:
#line 914 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (2)\n"); }
#line 4394 "grammar.mm" /* glr.c:783  */
    break;

  case 367:
#line 915 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (3)\n"); }
#line 4400 "grammar.mm" /* glr.c:783  */
    break;

  case 368:
#line 916 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (4)\n"); }
#line 4406 "grammar.mm" /* glr.c:783  */
    break;

  case 369:
#line 917 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (5)\n"); }
#line 4412 "grammar.mm" /* glr.c:783  */
    break;

  case 370:
#line 918 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (6)\n"); }
#line 4418 "grammar.mm" /* glr.c:783  */
    break;

  case 371:
#line 919 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (7)\n"); }
#line 4424 "grammar.mm" /* glr.c:783  */
    break;

  case 372:
#line 920 "grammar.y" /* glr.c:783  */
    { LOG("primary_expression (8)\n"); }
#line 4430 "grammar.mm" /* glr.c:783  */
    break;

  case 373:
#line 924 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))]; LOG("Literal: %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))}
#line 4436 "grammar.mm" /* glr.c:783  */
    break;

  case 374:
#line 925 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (0)\n"); }
#line 4442 "grammar.mm" /* glr.c:783  */
    break;

  case 375:
#line 926 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (1)\n"); }
#line 4448 "grammar.mm" /* glr.c:783  */
    break;

  case 376:
#line 927 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (0)\n"); }
#line 4454 "grammar.mm" /* glr.c:783  */
    break;

  case 377:
#line 928 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (1)\n"); }
#line 4460 "grammar.mm" /* glr.c:783  */
    break;

  case 378:
#line 929 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (2)\n"); }
#line 4466 "grammar.mm" /* glr.c:783  */
    break;

  case 379:
#line 930 "grammar.y" /* glr.c:783  */
    { LOG("literal_expression (3)\n"); }
#line 4472 "grammar.mm" /* glr.c:783  */
    break;

  case 380:
#line 931 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[ArrayLiteral alloc] initWithItems:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("array_literal (0)\n"); }
#line 4478 "grammar.mm" /* glr.c:783  */
    break;

  case 381:
#line 932 "grammar.y" /* glr.c:783  */
    {}
#line 4484 "grammar.mm" /* glr.c:783  */
    break;

  case 382:
#line 932 "grammar.y" /* glr.c:783  */
    { LOG("array_literal_items_opt\n"); }
#line 4490 "grammar.mm" /* glr.c:783  */
    break;

  case 383:
#line 933 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:nil]; LOG("array_literal_items (0)\n"); }
#line 4496 "grammar.mm" /* glr.c:783  */
    break;

  case 384:
#line 934 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("array_literal_items (1)\n"); }
#line 4502 "grammar.mm" /* glr.c:783  */
    break;

  case 385:
#line 935 "grammar.y" /* glr.c:783  */
    {}
#line 4508 "grammar.mm" /* glr.c:783  */
    break;

  case 386:
#line 935 "grammar.y" /* glr.c:783  */
    { LOG("comma_opt\n"); }
#line 4514 "grammar.mm" /* glr.c:783  */
    break;

  case 387:
#line 936 "grammar.y" /* glr.c:783  */
    { LOG("array_literal_item (0)\n"); }
#line 4520 "grammar.mm" /* glr.c:783  */
    break;

  case 388:
#line 937 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[DictionaryLiteral alloc] initWithPairs:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("array_literal (0)\n"); LOG("dictionary_literal (0)\n"); }
#line 4526 "grammar.mm" /* glr.c:783  */
    break;

  case 389:
#line 938 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[DictionaryLiteral alloc] initWithPairs:nil];  LOG("dictionary_literal (1)\n"); }
#line 4532 "grammar.mm" /* glr.c:783  */
    break;

  case 390:
#line 939 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) next:nil]; LOG("dictionary_literal_items (0)\n"); }
#line 4538 "grammar.mm" /* glr.c:783  */
    break;

  case 391:
#line 940 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("dictionary_literal_items (1)\n"); }
#line 4544 "grammar.mm" /* glr.c:783  */
    break;

  case 392:
#line 941 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[DictionaryItem alloc] initWithKey:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) value:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("dictionary_literal_item (0)\n"); }
#line 4550 "grammar.mm" /* glr.c:783  */
    break;

  case 393:
#line 945 "grammar.y" /* glr.c:783  */
    { LOG("self_expression (0)\n"); }
#line 4556 "grammar.mm" /* glr.c:783  */
    break;

  case 394:
#line 946 "grammar.y" /* glr.c:783  */
    { LOG("self_expression (0)\n"); }
#line 4562 "grammar.mm" /* glr.c:783  */
    break;

  case 395:
#line 947 "grammar.y" /* glr.c:783  */
    { LOG("self_expression (0)\n"); }
#line 4568 "grammar.mm" /* glr.c:783  */
    break;

  case 396:
#line 948 "grammar.y" /* glr.c:783  */
    { LOG("self_expression (0)\n"); }
#line 4574 "grammar.mm" /* glr.c:783  */
    break;

  case 397:
#line 952 "grammar.y" /* glr.c:783  */
    { LOG("superclass_expression (0)\n"); }
#line 4580 "grammar.mm" /* glr.c:783  */
    break;

  case 398:
#line 953 "grammar.y" /* glr.c:783  */
    { LOG("superclass_expression (1)\n"); }
#line 4586 "grammar.mm" /* glr.c:783  */
    break;

  case 399:
#line 954 "grammar.y" /* glr.c:783  */
    { LOG("superclass_expression (2)\n"); }
#line 4592 "grammar.mm" /* glr.c:783  */
    break;

  case 400:
#line 955 "grammar.y" /* glr.c:783  */
    { LOG("superclass_method_expression (0)\n"); }
#line 4598 "grammar.mm" /* glr.c:783  */
    break;

  case 401:
#line 956 "grammar.y" /* glr.c:783  */
    { LOG("superclass_subscript_expression (0)\n"); }
#line 4604 "grammar.mm" /* glr.c:783  */
    break;

  case 402:
#line 957 "grammar.y" /* glr.c:783  */
    { LOG("superclass_initializer_expression (0)\n"); }
#line 4610 "grammar.mm" /* glr.c:783  */
    break;

  case 403:
#line 961 "grammar.y" /* glr.c:783  */
    { LOG("closure_expression (0)\n"); }
#line 4616 "grammar.mm" /* glr.c:783  */
    break;

  case 404:
#line 962 "grammar.y" /* glr.c:783  */
    {}
#line 4622 "grammar.mm" /* glr.c:783  */
    break;

  case 405:
#line 962 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature_opt\n"); }
#line 4628 "grammar.mm" /* glr.c:783  */
    break;

  case 406:
#line 963 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature (0)\n"); }
#line 4634 "grammar.mm" /* glr.c:783  */
    break;

  case 407:
#line 964 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature (0)\n"); }
#line 4640 "grammar.mm" /* glr.c:783  */
    break;

  case 408:
#line 965 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature (0)\n"); }
#line 4646 "grammar.mm" /* glr.c:783  */
    break;

  case 409:
#line 966 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature (0)\n"); }
#line 4652 "grammar.mm" /* glr.c:783  */
    break;

  case 410:
#line 967 "grammar.y" /* glr.c:783  */
    { LOG("closure_signature (0)\n"); }
#line 4658 "grammar.mm" /* glr.c:783  */
    break;

  case 411:
#line 968 "grammar.y" /* glr.c:783  */
    { LOG("capture_list (0)\n"); }
#line 4664 "grammar.mm" /* glr.c:783  */
    break;

  case 412:
#line 969 "grammar.y" /* glr.c:783  */
    { LOG("capture_specifier (0)\n"); }
#line 4670 "grammar.mm" /* glr.c:783  */
    break;

  case 413:
#line 970 "grammar.y" /* glr.c:783  */
    { LOG("capture_specifier (1)\n"); }
#line 4676 "grammar.mm" /* glr.c:783  */
    break;

  case 414:
#line 971 "grammar.y" /* glr.c:783  */
    { LOG("capture_specifier (2)\n"); }
#line 4682 "grammar.mm" /* glr.c:783  */
    break;

  case 415:
#line 972 "grammar.y" /* glr.c:783  */
    { LOG("capture_specifier (3)\n"); }
#line 4688 "grammar.mm" /* glr.c:783  */
    break;

  case 416:
#line 976 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))];  LOG("implicit_member_expression (0)\n"); }
#line 4694 "grammar.mm" /* glr.c:783  */
    break;

  case 417:
#line 980 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[ParenthesizedExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("parenthesized_expression (0)\n"); }
#line 4700 "grammar.mm" /* glr.c:783  */
    break;

  case 418:
#line 981 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = NULL;}
#line 4706 "grammar.mm" /* glr.c:783  */
    break;

  case 419:
#line 981 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node); LOG("expression_element_list_opt\n"); }
#line 4712 "grammar.mm" /* glr.c:783  */
    break;

  case 420:
#line 982 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) next:nil]; LOG("expression_element_list (0)\n"); }
#line 4718 "grammar.mm" /* glr.c:783  */
    break;

  case 421:
#line 983 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("expression_element_list (1)\n"); }
#line 4724 "grammar.mm" /* glr.c:783  */
    break;

  case 422:
#line 984 "grammar.y" /* glr.c:783  */
    { LOG("expression_element (0)\n"); }
#line 4730 "grammar.mm" /* glr.c:783  */
    break;

  case 423:
#line 985 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[NamedExpression alloc] initWithName:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.str)) expr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("expression_element (1)\n"); }
#line 4736 "grammar.mm" /* glr.c:783  */
    break;

  case 424:
#line 989 "grammar.y" /* glr.c:783  */
    { LOG("wildcard_expression (0)\n"); }
#line 4742 "grammar.mm" /* glr.c:783  */
    break;

  case 425:
#line 993 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4748 "grammar.mm" /* glr.c:783  */
    break;

  case 426:
#line 994 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[PostfixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))]; LOG("postfix_expression op %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str)); }
#line 4754 "grammar.mm" /* glr.c:783  */
    break;

  case 427:
#line 995 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4760 "grammar.mm" /* glr.c:783  */
    break;

  case 428:
#line 996 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4766 "grammar.mm" /* glr.c:783  */
    break;

  case 429:
#line 997 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4772 "grammar.mm" /* glr.c:783  */
    break;

  case 430:
#line 998 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4778 "grammar.mm" /* glr.c:783  */
    break;

  case 431:
#line 999 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4784 "grammar.mm" /* glr.c:783  */
    break;

  case 432:
#line 1000 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4790 "grammar.mm" /* glr.c:783  */
    break;

  case 433:
#line 1001 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4796 "grammar.mm" /* glr.c:783  */
    break;

  case 434:
#line 1002 "grammar.y" /* glr.c:783  */
    { LOG("postfix_expression (0)\n"); }
#line 4802 "grammar.mm" /* glr.c:783  */
    break;

  case 435:
#line 1006 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[FunctionCallExpression alloc] initWithFunction:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node) parenthesized:(ParenthesizedExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("function_call_expression (0)\n"); }
#line 4808 "grammar.mm" /* glr.c:783  */
    break;

  case 436:
#line 1007 "grammar.y" /* glr.c:783  */
    { LOG("function_call_expression (0)\n"); }
#line 4814 "grammar.mm" /* glr.c:783  */
    break;

  case 437:
#line 1008 "grammar.y" /* glr.c:783  */
    {}
#line 4820 "grammar.mm" /* glr.c:783  */
    break;

  case 438:
#line 1008 "grammar.y" /* glr.c:783  */
    { LOG("parenthesized_expression_opt\n"); }
#line 4826 "grammar.mm" /* glr.c:783  */
    break;

  case 439:
#line 1009 "grammar.y" /* glr.c:783  */
    { LOG("trailing_closure (0)\n"); }
#line 4832 "grammar.mm" /* glr.c:783  */
    break;

  case 440:
#line 1013 "grammar.y" /* glr.c:783  */
    { LOG("initializer_expression (0)\n"); }
#line 4838 "grammar.mm" /* glr.c:783  */
    break;

  case 441:
#line 1017 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[ExplicitMemberExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) literal:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str))]; LOG("explicit_member_expression (0)\n"); }
#line 4844 "grammar.mm" /* glr.c:783  */
    break;

  case 442:
#line 1018 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[ExplicitMemberExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.node) literal:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))]; LOG("explicit_member_expression (0)\n"); }
#line 4850 "grammar.mm" /* glr.c:783  */
    break;

  case 443:
#line 1022 "grammar.y" /* glr.c:783  */
    { LOG("postfix_self_expression (0)\n"); }
#line 4856 "grammar.mm" /* glr.c:783  */
    break;

  case 444:
#line 1026 "grammar.y" /* glr.c:783  */
    { LOG("dynamic_type_expression (0)\n"); }
#line 4862 "grammar.mm" /* glr.c:783  */
    break;

  case 445:
#line 1030 "grammar.y" /* glr.c:783  */
    { LOG("subscript_expression (0)\n"); }
#line 4868 "grammar.mm" /* glr.c:783  */
    break;

  case 446:
#line 1034 "grammar.y" /* glr.c:783  */
    { LOG("forced_value_expression (0)\n"); }
#line 4874 "grammar.mm" /* glr.c:783  */
    break;

  case 447:
#line 1038 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node) = [[OptionalChainingExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("optional_chaining_expression (0)\n"); }
#line 4880 "grammar.mm" /* glr.c:783  */
    break;

  case 448:
#line 1045 "grammar.y" /* glr.c:783  */
    { LOG("identifier_list (0)\n"); }
#line 4886 "grammar.mm" /* glr.c:783  */
    break;

  case 449:
#line 1046 "grammar.y" /* glr.c:783  */
    { LOG("identifier_list (1)\n"); }
#line 4892 "grammar.mm" /* glr.c:783  */
    break;

  case 479:
#line 1069 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4898 "grammar.mm" /* glr.c:783  */
    break;

  case 480:
#line 1070 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4904 "grammar.mm" /* glr.c:783  */
    break;

  case 481:
#line 1071 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4910 "grammar.mm" /* glr.c:783  */
    break;

  case 482:
#line 1072 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4916 "grammar.mm" /* glr.c:783  */
    break;

  case 483:
#line 1073 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4922 "grammar.mm" /* glr.c:783  */
    break;

  case 484:
#line 1074 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4928 "grammar.mm" /* glr.c:783  */
    break;

  case 485:
#line 1075 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4934 "grammar.mm" /* glr.c:783  */
    break;

  case 486:
#line 1076 "grammar.y" /* glr.c:783  */
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.str);}
#line 4940 "grammar.mm" /* glr.c:783  */
    break;

  case 487:
#line 1083 "grammar.y" /* glr.c:783  */
    { LOG("type (0)\n"); }
#line 4946 "grammar.mm" /* glr.c:783  */
    break;

  case 488:
#line 1084 "grammar.y" /* glr.c:783  */
    { LOG("type (1)\n"); }
#line 4952 "grammar.mm" /* glr.c:783  */
    break;

  case 489:
#line 1085 "grammar.y" /* glr.c:783  */
    { LOG("type (2)\n"); }
#line 4958 "grammar.mm" /* glr.c:783  */
    break;

  case 490:
#line 1086 "grammar.y" /* glr.c:783  */
    { LOG("type (3)\n"); }
#line 4964 "grammar.mm" /* glr.c:783  */
    break;

  case 491:
#line 1087 "grammar.y" /* glr.c:783  */
    { LOG("type (4)\n"); }
#line 4970 "grammar.mm" /* glr.c:783  */
    break;

  case 492:
#line 1088 "grammar.y" /* glr.c:783  */
    { LOG("type (5)\n"); }
#line 4976 "grammar.mm" /* glr.c:783  */
    break;

  case 493:
#line 1089 "grammar.y" /* glr.c:783  */
    { LOG("type (6)\n"); }
#line 4982 "grammar.mm" /* glr.c:783  */
    break;

  case 494:
#line 1090 "grammar.y" /* glr.c:783  */
    { LOG("type (7)\n"); }
#line 4988 "grammar.mm" /* glr.c:783  */
    break;

  case 495:
#line 1094 "grammar.y" /* glr.c:783  */
    {((*yyvalp).type) = (((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.type); LOG("type_annotation (0)\n"); }
#line 4994 "grammar.mm" /* glr.c:783  */
    break;

  case 496:
#line 1098 "grammar.y" /* glr.c:783  */
    {((*yyvalp).type) = [GenericType fromTypeIdentifier:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str))]; LOG("type_identifier (0)\n"); }
#line 5000 "grammar.mm" /* glr.c:783  */
    break;

  case 497:
#line 1099 "grammar.y" /* glr.c:783  */
    {((*yyvalp).type) = [GenericType fromTypeIdentifier:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.str))]; LOG("type_identifier (1)\n"); }
#line 5006 "grammar.mm" /* glr.c:783  */
    break;

  case 498:
#line 1100 "grammar.y" /* glr.c:783  */
    { LOG("type_name (0)\n"); }
#line 5012 "grammar.mm" /* glr.c:783  */
    break;

  case 499:
#line 1104 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).type) = [[TupleType alloc] initWithList:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.node)]; LOG("tuple_type (0)\n"); }
#line 5018 "grammar.mm" /* glr.c:783  */
    break;

  case 500:
#line 1105 "grammar.y" /* glr.c:783  */
    {}
#line 5024 "grammar.mm" /* glr.c:783  */
    break;

  case 501:
#line 1105 "grammar.y" /* glr.c:783  */
    { LOG("tuple_type_body_opt\n"); }
#line 5030 "grammar.mm" /* glr.c:783  */
    break;

  case 502:
#line 1106 "grammar.y" /* glr.c:783  */
    { LOG("tuple_type_body (0)\n"); }
#line 5036 "grammar.mm" /* glr.c:783  */
    break;

  case 503:
#line 1107 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node) next:nil]; LOG("tuple_type_element_list (0)\n"); }
#line 5042 "grammar.mm" /* glr.c:783  */
    break;

  case 504:
#line 1108 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.node)]; LOG("tuple_type_element_list (1)\n"); }
#line 5048 "grammar.mm" /* glr.c:783  */
    break;

  case 505:
#line 1109 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[TypeExpression alloc] initWithLinkedType:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.type)]; LOG("tuple_type_element (0)\n"); }
#line 5054 "grammar.mm" /* glr.c:783  */
    break;

  case 506:
#line 1110 "grammar.y" /* glr.c:783  */
    {((*yyvalp).node) = [[NamedExpression alloc] initWithName:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.str)) expr:[[TypeExpression alloc] initWithLinkedType:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.type)]]; LOG("tuple_type_element (1)\n"); }
#line 5060 "grammar.mm" /* glr.c:783  */
    break;

  case 507:
#line 1111 "grammar.y" /* glr.c:783  */
    { LOG("element_name (0)\n"); }
#line 5066 "grammar.mm" /* glr.c:783  */
    break;

  case 508:
#line 1115 "grammar.y" /* glr.c:783  */
    {((*yyvalp).type) = [[FunctionType alloc] initWithArgsType:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.type) returnType:(((yyGLRStackItem const *)yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.type)]; LOG("function_type (0)\n"); }
#line 5072 "grammar.mm" /* glr.c:783  */
    break;

  case 509:
#line 1119 "grammar.y" /* glr.c:783  */
    {((*yyvalp).type) = [[ArrayType alloc] initWithInnerType:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.type)]; LOG("array_type (0)\n"); }
#line 5078 "grammar.mm" /* glr.c:783  */
    break;

  case 510:
#line 1120 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).type) = [[ArrayType alloc] initWithInnerType:(((yyGLRStackItem const *)yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.type)]; LOG("array_type (1)\n"); }
#line 5084 "grammar.mm" /* glr.c:783  */
    break;

  case 511:
#line 1121 "grammar.y" /* glr.c:783  */
    { ((*yyvalp).type) = [[ArrayType alloc] initWithInnerType:(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.type)]; LOG("arry_type (2)\n");}
#line 5090 "grammar.mm" /* glr.c:783  */
    break;

  case 512:
#line 1125 "grammar.y" /* glr.c:783  */
    {(((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.type).optional = true; ((*yyvalp).type) = (((yyGLRStackItem const *)yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.type); LOG("optional_type (0)\n"); }
#line 5096 "grammar.mm" /* glr.c:783  */
    break;

  case 513:
#line 1129 "grammar.y" /* glr.c:783  */
    { LOG("implicitly_unwrapped_optional_type (0)\n"); }
#line 5102 "grammar.mm" /* glr.c:783  */
    break;

  case 514:
#line 1133 "grammar.y" /* glr.c:783  */
    { LOG("protocol_composition_type (0)\n"); }
#line 5108 "grammar.mm" /* glr.c:783  */
    break;

  case 515:
#line 1134 "grammar.y" /* glr.c:783  */
    {}
#line 5114 "grammar.mm" /* glr.c:783  */
    break;

  case 516:
#line 1134 "grammar.y" /* glr.c:783  */
    { LOG("protocol_identifier_list_opt\n"); }
#line 5120 "grammar.mm" /* glr.c:783  */
    break;

  case 517:
#line 1135 "grammar.y" /* glr.c:783  */
    { LOG("protocol_identifier_list (0)\n"); }
#line 5126 "grammar.mm" /* glr.c:783  */
    break;

  case 518:
#line 1136 "grammar.y" /* glr.c:783  */
    { LOG("protocol_identifier_list (1)\n"); }
#line 5132 "grammar.mm" /* glr.c:783  */
    break;

  case 519:
#line 1137 "grammar.y" /* glr.c:783  */
    { LOG("protocol_identifier (0)\n"); }
#line 5138 "grammar.mm" /* glr.c:783  */
    break;

  case 520:
#line 1141 "grammar.y" /* glr.c:783  */
    { LOG("metatype_type (0)\n"); }
#line 5144 "grammar.mm" /* glr.c:783  */
    break;

  case 521:
#line 1142 "grammar.y" /* glr.c:783  */
    { LOG("metatype_type (1)\n"); }
#line 5150 "grammar.mm" /* glr.c:783  */
    break;

  case 522:
#line 1146 "grammar.y" /* glr.c:783  */
    { LOG("type_inheritance_clause (0)\n"); }
#line 5156 "grammar.mm" /* glr.c:783  */
    break;

  case 523:
#line 1147 "grammar.y" /* glr.c:783  */
    { LOG("type_inheritance_list (0)\n"); }
#line 5162 "grammar.mm" /* glr.c:783  */
    break;

  case 524:
#line 1148 "grammar.y" /* glr.c:783  */
    { LOG("type_inheritance_list (1)\n"); }
#line 5168 "grammar.mm" /* glr.c:783  */
    break;


#line 5172 "grammar.mm" /* glr.c:783  */
      default: break;
    }

  return yyok;
# undef yyerrok
# undef YYABORT
# undef YYACCEPT
# undef YYERROR
# undef YYBACKUP
# undef yyclearin
# undef YYRECOVERING
}


static void
yyuserMerge (int yyn, YYSTYPE* yy0, YYSTYPE* yy1)
{
  YYUSE (yy0);
  YYUSE (yy1);

  switch (yyn)
    {
  case 1: yy0->node = statementsMerge (*yy0, *yy1); break;

      default: break;
    }
}

                              /* Bison grammar-table manipulation.  */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}

/** Number of symbols composing the right hand side of rule #RULE.  */
static inline int
yyrhsLength (yyRuleNum yyrule)
{
  return yyr2[yyrule];
}

static void
yydestroyGLRState (char const *yymsg, yyGLRState *yys)
{
  if (yys->yyresolved)
    yydestruct (yymsg, yystos[yys->yylrState],
                &yys->yysemantics.yysval);
  else
    {
#if YYDEBUG
      if (yydebug)
        {
          if (yys->yysemantics.yyfirstVal)
            YYFPRINTF (stderr, "%s unresolved", yymsg);
          else
            YYFPRINTF (stderr, "%s incomplete", yymsg);
          YY_SYMBOL_PRINT ("", yystos[yys->yylrState], YY_NULLPTR, &yys->yyloc);
        }
#endif

      if (yys->yysemantics.yyfirstVal)
        {
          yySemanticOption *yyoption = yys->yysemantics.yyfirstVal;
          yyGLRState *yyrh;
          int yyn;
          for (yyrh = yyoption->yystate, yyn = yyrhsLength (yyoption->yyrule);
               yyn > 0;
               yyrh = yyrh->yypred, yyn -= 1)
            yydestroyGLRState (yymsg, yyrh);
        }
    }
}

/** Left-hand-side symbol for rule #YYRULE.  */
static inline yySymbol
yylhsNonterm (yyRuleNum yyrule)
{
  return yyr1[yyrule];
}

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-522)))

/** True iff LR state YYSTATE has only a default reduction (regardless
 *  of token).  */
static inline yybool
yyisDefaultedState (yyStateNum yystate)
{
  return yypact_value_is_default (yypact[yystate]);
}

/** The default reduction for YYSTATE, assuming it has one.  */
static inline yyRuleNum
yydefaultAction (yyStateNum yystate)
{
  return yydefact[yystate];
}

#define yytable_value_is_error(Yytable_value) \
  0

/** Set *YYACTION to the action to take in YYSTATE on seeing YYTOKEN.
 *  Result R means
 *    R < 0:  Reduce on rule -R.
 *    R = 0:  Error.
 *    R > 0:  Shift to state R.
 *  Set *YYCONFLICTS to a pointer into yyconfl to a 0-terminated list
 *  of conflicting reductions.
 */
static inline void
yygetLRActions (yyStateNum yystate, int yytoken,
                int* yyaction, const short int** yyconflicts)
{
  int yyindex = yypact[yystate] + yytoken;
  if (yypact_value_is_default (yypact[yystate])
      || yyindex < 0 || YYLAST < yyindex || yycheck[yyindex] != yytoken)
    {
      *yyaction = -yydefact[yystate];
      *yyconflicts = yyconfl;
    }
  else if (! yytable_value_is_error (yytable[yyindex]))
    {
      *yyaction = yytable[yyindex];
      *yyconflicts = yyconfl + yyconflp[yyindex];
    }
  else
    {
      *yyaction = 0;
      *yyconflicts = yyconfl + yyconflp[yyindex];
    }
}

/** Compute post-reduction state.
 * \param yystate   the current state
 * \param yysym     the nonterminal to push on the stack
 */
static inline yyStateNum
yyLRgotoState (yyStateNum yystate, yySymbol yysym)
{
  int yyr = yypgoto[yysym - YYNTOKENS] + yystate;
  if (0 <= yyr && yyr <= YYLAST && yycheck[yyr] == yystate)
    return yytable[yyr];
  else
    return yydefgoto[yysym - YYNTOKENS];
}

static inline yybool
yyisShiftAction (int yyaction)
{
  return 0 < yyaction;
}

static inline yybool
yyisErrorAction (int yyaction)
{
  return yyaction == 0;
}

                                /* GLRStates */

/** Return a fresh GLRStackItem in YYSTACKP.  The item is an LR state
 *  if YYISSTATE, and otherwise a semantic option.  Callers should call
 *  YY_RESERVE_GLRSTACK afterwards to make sure there is sufficient
 *  headroom.  */

static inline yyGLRStackItem*
yynewGLRStackItem (yyGLRStack* yystackp, yybool yyisState)
{
  yyGLRStackItem* yynewItem = yystackp->yynextFree;
  yystackp->yyspaceLeft -= 1;
  yystackp->yynextFree += 1;
  yynewItem->yystate.yyisState = yyisState;
  return yynewItem;
}

/** Add a new semantic action that will execute the action for rule
 *  YYRULE on the semantic values in YYRHS to the list of
 *  alternative actions for YYSTATE.  Assumes that YYRHS comes from
 *  stack #YYK of *YYSTACKP. */
static void
yyaddDeferredAction (yyGLRStack* yystackp, size_t yyk, yyGLRState* yystate,
                     yyGLRState* yyrhs, yyRuleNum yyrule)
{
  yySemanticOption* yynewOption =
    &yynewGLRStackItem (yystackp, yyfalse)->yyoption;
  YYASSERT (!yynewOption->yyisState);
  yynewOption->yystate = yyrhs;
  yynewOption->yyrule = yyrule;
  if (yystackp->yytops.yylookaheadNeeds[yyk])
    {
      yynewOption->yyrawchar = yychar;
      yynewOption->yyval = yylval;
    }
  else
    yynewOption->yyrawchar = YYEMPTY;
  yynewOption->yynext = yystate->yysemantics.yyfirstVal;
  yystate->yysemantics.yyfirstVal = yynewOption;

  YY_RESERVE_GLRSTACK (yystackp);
}

                                /* GLRStacks */

/** Initialize YYSET to a singleton set containing an empty stack.  */
static yybool
yyinitStateSet (yyGLRStateSet* yyset)
{
  yyset->yysize = 1;
  yyset->yycapacity = 16;
  yyset->yystates = (yyGLRState**) YYMALLOC (16 * sizeof yyset->yystates[0]);
  if (! yyset->yystates)
    return yyfalse;
  yyset->yystates[0] = YY_NULLPTR;
  yyset->yylookaheadNeeds =
    (yybool*) YYMALLOC (16 * sizeof yyset->yylookaheadNeeds[0]);
  if (! yyset->yylookaheadNeeds)
    {
      YYFREE (yyset->yystates);
      return yyfalse;
    }
  return yytrue;
}

static void yyfreeStateSet (yyGLRStateSet* yyset)
{
  YYFREE (yyset->yystates);
  YYFREE (yyset->yylookaheadNeeds);
}

/** Initialize *YYSTACKP to a single empty stack, with total maximum
 *  capacity for all stacks of YYSIZE.  */
static yybool
yyinitGLRStack (yyGLRStack* yystackp, size_t yysize)
{
  yystackp->yyerrState = 0;
  yynerrs = 0;
  yystackp->yyspaceLeft = yysize;
  yystackp->yyitems =
    (yyGLRStackItem*) YYMALLOC (yysize * sizeof yystackp->yynextFree[0]);
  if (!yystackp->yyitems)
    return yyfalse;
  yystackp->yynextFree = yystackp->yyitems;
  yystackp->yysplitPoint = YY_NULLPTR;
  yystackp->yylastDeleted = YY_NULLPTR;
  return yyinitStateSet (&yystackp->yytops);
}


#if YYSTACKEXPANDABLE
# define YYRELOC(YYFROMITEMS,YYTOITEMS,YYX,YYTYPE) \
  &((YYTOITEMS) - ((YYFROMITEMS) - (yyGLRStackItem*) (YYX)))->YYTYPE

/** If *YYSTACKP is expandable, extend it.  WARNING: Pointers into the
    stack from outside should be considered invalid after this call.
    We always expand when there are 1 or fewer items left AFTER an
    allocation, so that we can avoid having external pointers exist
    across an allocation.  */
static void
yyexpandGLRStack (yyGLRStack* yystackp)
{
  yyGLRStackItem* yynewItems;
  yyGLRStackItem* yyp0, *yyp1;
  size_t yynewSize;
  size_t yyn;
  size_t yysize = yystackp->yynextFree - yystackp->yyitems;
  if (YYMAXDEPTH - YYHEADROOM < yysize)
    yyMemoryExhausted (yystackp);
  yynewSize = 2*yysize;
  if (YYMAXDEPTH < yynewSize)
    yynewSize = YYMAXDEPTH;
  yynewItems = (yyGLRStackItem*) YYMALLOC (yynewSize * sizeof yynewItems[0]);
  if (! yynewItems)
    yyMemoryExhausted (yystackp);
  for (yyp0 = yystackp->yyitems, yyp1 = yynewItems, yyn = yysize;
       0 < yyn;
       yyn -= 1, yyp0 += 1, yyp1 += 1)
    {
      *yyp1 = *yyp0;
      if (*(yybool *) yyp0)
        {
          yyGLRState* yys0 = &yyp0->yystate;
          yyGLRState* yys1 = &yyp1->yystate;
          if (yys0->yypred != YY_NULLPTR)
            yys1->yypred =
              YYRELOC (yyp0, yyp1, yys0->yypred, yystate);
          if (! yys0->yyresolved && yys0->yysemantics.yyfirstVal != YY_NULLPTR)
            yys1->yysemantics.yyfirstVal =
              YYRELOC (yyp0, yyp1, yys0->yysemantics.yyfirstVal, yyoption);
        }
      else
        {
          yySemanticOption* yyv0 = &yyp0->yyoption;
          yySemanticOption* yyv1 = &yyp1->yyoption;
          if (yyv0->yystate != YY_NULLPTR)
            yyv1->yystate = YYRELOC (yyp0, yyp1, yyv0->yystate, yystate);
          if (yyv0->yynext != YY_NULLPTR)
            yyv1->yynext = YYRELOC (yyp0, yyp1, yyv0->yynext, yyoption);
        }
    }
  if (yystackp->yysplitPoint != YY_NULLPTR)
    yystackp->yysplitPoint = YYRELOC (yystackp->yyitems, yynewItems,
                                      yystackp->yysplitPoint, yystate);

  for (yyn = 0; yyn < yystackp->yytops.yysize; yyn += 1)
    if (yystackp->yytops.yystates[yyn] != YY_NULLPTR)
      yystackp->yytops.yystates[yyn] =
        YYRELOC (yystackp->yyitems, yynewItems,
                 yystackp->yytops.yystates[yyn], yystate);
  YYFREE (yystackp->yyitems);
  yystackp->yyitems = yynewItems;
  yystackp->yynextFree = yynewItems + yysize;
  yystackp->yyspaceLeft = yynewSize - yysize;
}
#endif

static void
yyfreeGLRStack (yyGLRStack* yystackp)
{
  YYFREE (yystackp->yyitems);
  yyfreeStateSet (&yystackp->yytops);
}

/** Assuming that YYS is a GLRState somewhere on *YYSTACKP, update the
 *  splitpoint of *YYSTACKP, if needed, so that it is at least as deep as
 *  YYS.  */
static inline void
yyupdateSplit (yyGLRStack* yystackp, yyGLRState* yys)
{
  if (yystackp->yysplitPoint != YY_NULLPTR && yystackp->yysplitPoint > yys)
    yystackp->yysplitPoint = yys;
}

/** Invalidate stack #YYK in *YYSTACKP.  */
static inline void
yymarkStackDeleted (yyGLRStack* yystackp, size_t yyk)
{
  if (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
    yystackp->yylastDeleted = yystackp->yytops.yystates[yyk];
  yystackp->yytops.yystates[yyk] = YY_NULLPTR;
}

/** Undelete the last stack in *YYSTACKP that was marked as deleted.  Can
    only be done once after a deletion, and only when all other stacks have
    been deleted.  */
static void
yyundeleteLastStack (yyGLRStack* yystackp)
{
  if (yystackp->yylastDeleted == YY_NULLPTR || yystackp->yytops.yysize != 0)
    return;
  yystackp->yytops.yystates[0] = yystackp->yylastDeleted;
  yystackp->yytops.yysize = 1;
  YYDPRINTF ((stderr, "Restoring last deleted stack as stack #0.\n"));
  yystackp->yylastDeleted = YY_NULLPTR;
}

static inline void
yyremoveDeletes (yyGLRStack* yystackp)
{
  size_t yyi, yyj;
  yyi = yyj = 0;
  while (yyj < yystackp->yytops.yysize)
    {
      if (yystackp->yytops.yystates[yyi] == YY_NULLPTR)
        {
          if (yyi == yyj)
            {
              YYDPRINTF ((stderr, "Removing dead stacks.\n"));
            }
          yystackp->yytops.yysize -= 1;
        }
      else
        {
          yystackp->yytops.yystates[yyj] = yystackp->yytops.yystates[yyi];
          /* In the current implementation, it's unnecessary to copy
             yystackp->yytops.yylookaheadNeeds[yyi] since, after
             yyremoveDeletes returns, the parser immediately either enters
             deterministic operation or shifts a token.  However, it doesn't
             hurt, and the code might evolve to need it.  */
          yystackp->yytops.yylookaheadNeeds[yyj] =
            yystackp->yytops.yylookaheadNeeds[yyi];
          if (yyj != yyi)
            {
              YYDPRINTF ((stderr, "Rename stack %lu -> %lu.\n",
                          (unsigned long int) yyi, (unsigned long int) yyj));
            }
          yyj += 1;
        }
      yyi += 1;
    }
}

/** Shift to a new state on stack #YYK of *YYSTACKP, corresponding to LR
 * state YYLRSTATE, at input position YYPOSN, with (resolved) semantic
 * value *YYVALP and source location *YYLOCP.  */
static inline void
yyglrShift (yyGLRStack* yystackp, size_t yyk, yyStateNum yylrState,
            size_t yyposn,
            YYSTYPE* yyvalp)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yytrue;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yysval = *yyvalp;
  yystackp->yytops.yystates[yyk] = yynewState;

  YY_RESERVE_GLRSTACK (yystackp);
}

/** Shift stack #YYK of *YYSTACKP, to a new state corresponding to LR
 *  state YYLRSTATE, at input position YYPOSN, with the (unresolved)
 *  semantic value of YYRHS under the action for YYRULE.  */
static inline void
yyglrShiftDefer (yyGLRStack* yystackp, size_t yyk, yyStateNum yylrState,
                 size_t yyposn, yyGLRState* yyrhs, yyRuleNum yyrule)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;
  YYASSERT (yynewState->yyisState);

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yyfalse;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yyfirstVal = YY_NULLPTR;
  yystackp->yytops.yystates[yyk] = yynewState;

  /* Invokes YY_RESERVE_GLRSTACK.  */
  yyaddDeferredAction (yystackp, yyk, yynewState, yyrhs, yyrule);
}

#if !YYDEBUG
# define YY_REDUCE_PRINT(Args)
#else
# define YY_REDUCE_PRINT(Args)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print Args;               \
} while (0)

/*----------------------------------------------------------------------.
| Report that stack #YYK of *YYSTACKP is going to be reduced by YYRULE. |
`----------------------------------------------------------------------*/

static inline void
yy_reduce_print (int yynormal, yyGLRStackItem* yyvsp, size_t yyk,
                 yyRuleNum yyrule)
{
  int yynrhs = yyrhsLength (yyrule);
  int yyi;
  YYFPRINTF (stderr, "Reducing stack %lu by rule %d (line %lu):\n",
             (unsigned long int) yyk, yyrule - 1,
             (unsigned long int) yyrline[yyrule]);
  if (! yynormal)
    yyfillin (yyvsp, 1, -yynrhs);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyvsp[yyi - yynrhs + 1].yystate.yylrState],
                       &yyvsp[yyi - yynrhs + 1].yystate.yysemantics.yysval
                                              );
      if (!yyvsp[yyi - yynrhs + 1].yystate.yyresolved)
        YYFPRINTF (stderr, " (unresolved)");
      YYFPRINTF (stderr, "\n");
    }
}
#endif

/** Pop the symbols consumed by reduction #YYRULE from the top of stack
 *  #YYK of *YYSTACKP, and perform the appropriate semantic action on their
 *  semantic values.  Assumes that all ambiguities in semantic values
 *  have been previously resolved.  Set *YYVALP to the resulting value,
 *  and *YYLOCP to the computed location (if any).  Return value is as
 *  for userAction.  */
static inline YYRESULTTAG
yydoAction (yyGLRStack* yystackp, size_t yyk, yyRuleNum yyrule,
            YYSTYPE* yyvalp)
{
  int yynrhs = yyrhsLength (yyrule);

  if (yystackp->yysplitPoint == YY_NULLPTR)
    {
      /* Standard special case: single stack.  */
      yyGLRStackItem* yyrhs = (yyGLRStackItem*) yystackp->yytops.yystates[yyk];
      YYASSERT (yyk == 0);
      yystackp->yynextFree -= yynrhs;
      yystackp->yyspaceLeft += yynrhs;
      yystackp->yytops.yystates[0] = & yystackp->yynextFree[-1].yystate;
      YY_REDUCE_PRINT ((1, yyrhs, yyk, yyrule));
      return yyuserAction (yyrule, yynrhs, yyrhs, yystackp,
                           yyvalp);
    }
  else
    {
      int yyi;
      yyGLRState* yys;
      yyGLRStackItem yyrhsVals[YYMAXRHS + YYMAXLEFT + 1];
      yys = yyrhsVals[YYMAXRHS + YYMAXLEFT].yystate.yypred
        = yystackp->yytops.yystates[yyk];
      for (yyi = 0; yyi < yynrhs; yyi += 1)
        {
          yys = yys->yypred;
          YYASSERT (yys);
        }
      yyupdateSplit (yystackp, yys);
      yystackp->yytops.yystates[yyk] = yys;
      YY_REDUCE_PRINT ((0, yyrhsVals + YYMAXRHS + YYMAXLEFT - 1, yyk, yyrule));
      return yyuserAction (yyrule, yynrhs, yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
                           yystackp, yyvalp);
    }
}

/** Pop items off stack #YYK of *YYSTACKP according to grammar rule YYRULE,
 *  and push back on the resulting nonterminal symbol.  Perform the
 *  semantic action associated with YYRULE and store its value with the
 *  newly pushed state, if YYFORCEEVAL or if *YYSTACKP is currently
 *  unambiguous.  Otherwise, store the deferred semantic action with
 *  the new state.  If the new state would have an identical input
 *  position, LR state, and predecessor to an existing state on the stack,
 *  it is identified with that existing state, eliminating stack #YYK from
 *  *YYSTACKP.  In this case, the semantic value is
 *  added to the options for the existing state's semantic value.
 */
static inline YYRESULTTAG
yyglrReduce (yyGLRStack* yystackp, size_t yyk, yyRuleNum yyrule,
             yybool yyforceEval)
{
  size_t yyposn = yystackp->yytops.yystates[yyk]->yyposn;

  if (yyforceEval || yystackp->yysplitPoint == YY_NULLPTR)
    {
      YYSTYPE yysval;

      YYRESULTTAG yyflag = yydoAction (yystackp, yyk, yyrule, &yysval);
      if (yyflag == yyerr && yystackp->yysplitPoint != YY_NULLPTR)
        {
          YYDPRINTF ((stderr, "Parse on stack %lu rejected by rule #%d.\n",
                     (unsigned long int) yyk, yyrule - 1));
        }
      if (yyflag != yyok)
        return yyflag;
      YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyrule], &yysval, &yyloc);
      yyglrShift (yystackp, yyk,
                  yyLRgotoState (yystackp->yytops.yystates[yyk]->yylrState,
                                 yylhsNonterm (yyrule)),
                  yyposn, &yysval);
    }
  else
    {
      size_t yyi;
      int yyn;
      yyGLRState* yys, *yys0 = yystackp->yytops.yystates[yyk];
      yyStateNum yynewLRState;

      for (yys = yystackp->yytops.yystates[yyk], yyn = yyrhsLength (yyrule);
           0 < yyn; yyn -= 1)
        {
          yys = yys->yypred;
          YYASSERT (yys);
        }
      yyupdateSplit (yystackp, yys);
      yynewLRState = yyLRgotoState (yys->yylrState, yylhsNonterm (yyrule));
      YYDPRINTF ((stderr,
                  "Reduced stack %lu by rule #%d; action deferred.  "
                  "Now in state %d.\n",
                  (unsigned long int) yyk, yyrule - 1, yynewLRState));
      for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
        if (yyi != yyk && yystackp->yytops.yystates[yyi] != YY_NULLPTR)
          {
            yyGLRState *yysplit = yystackp->yysplitPoint;
            yyGLRState *yyp = yystackp->yytops.yystates[yyi];
            while (yyp != yys && yyp != yysplit && yyp->yyposn >= yyposn)
              {
                if (yyp->yylrState == yynewLRState && yyp->yypred == yys)
                  {
                    yyaddDeferredAction (yystackp, yyk, yyp, yys0, yyrule);
                    yymarkStackDeleted (yystackp, yyk);
                    YYDPRINTF ((stderr, "Merging stack %lu into stack %lu.\n",
                                (unsigned long int) yyk,
                                (unsigned long int) yyi));
                    return yyok;
                  }
                yyp = yyp->yypred;
              }
          }
      yystackp->yytops.yystates[yyk] = yys;
      yyglrShiftDefer (yystackp, yyk, yynewLRState, yyposn, yys0, yyrule);
    }
  return yyok;
}

static size_t
yysplitStack (yyGLRStack* yystackp, size_t yyk)
{
  if (yystackp->yysplitPoint == YY_NULLPTR)
    {
      YYASSERT (yyk == 0);
      yystackp->yysplitPoint = yystackp->yytops.yystates[yyk];
    }
  if (yystackp->yytops.yysize >= yystackp->yytops.yycapacity)
    {
      yyGLRState** yynewStates;
      yybool* yynewLookaheadNeeds;

      yynewStates = YY_NULLPTR;

      if (yystackp->yytops.yycapacity
          > (YYSIZEMAX / (2 * sizeof yynewStates[0])))
        yyMemoryExhausted (yystackp);
      yystackp->yytops.yycapacity *= 2;

      yynewStates =
        (yyGLRState**) YYREALLOC (yystackp->yytops.yystates,
                                  (yystackp->yytops.yycapacity
                                   * sizeof yynewStates[0]));
      if (yynewStates == YY_NULLPTR)
        yyMemoryExhausted (yystackp);
      yystackp->yytops.yystates = yynewStates;

      yynewLookaheadNeeds =
        (yybool*) YYREALLOC (yystackp->yytops.yylookaheadNeeds,
                             (yystackp->yytops.yycapacity
                              * sizeof yynewLookaheadNeeds[0]));
      if (yynewLookaheadNeeds == YY_NULLPTR)
        yyMemoryExhausted (yystackp);
      yystackp->yytops.yylookaheadNeeds = yynewLookaheadNeeds;
    }
  yystackp->yytops.yystates[yystackp->yytops.yysize]
    = yystackp->yytops.yystates[yyk];
  yystackp->yytops.yylookaheadNeeds[yystackp->yytops.yysize]
    = yystackp->yytops.yylookaheadNeeds[yyk];
  yystackp->yytops.yysize += 1;
  return yystackp->yytops.yysize-1;
}

/** True iff YYY0 and YYY1 represent identical options at the top level.
 *  That is, they represent the same rule applied to RHS symbols
 *  that produce the same terminal symbols.  */
static yybool
yyidenticalOptions (yySemanticOption* yyy0, yySemanticOption* yyy1)
{
  if (yyy0->yyrule == yyy1->yyrule)
    {
      yyGLRState *yys0, *yys1;
      int yyn;
      for (yys0 = yyy0->yystate, yys1 = yyy1->yystate,
           yyn = yyrhsLength (yyy0->yyrule);
           yyn > 0;
           yys0 = yys0->yypred, yys1 = yys1->yypred, yyn -= 1)
        if (yys0->yyposn != yys1->yyposn)
          return yyfalse;
      return yytrue;
    }
  else
    return yyfalse;
}

/** Assuming identicalOptions (YYY0,YYY1), destructively merge the
 *  alternative semantic values for the RHS-symbols of YYY1 and YYY0.  */
static void
yymergeOptionSets (yySemanticOption* yyy0, yySemanticOption* yyy1)
{
  yyGLRState *yys0, *yys1;
  int yyn;
  for (yys0 = yyy0->yystate, yys1 = yyy1->yystate,
       yyn = yyrhsLength (yyy0->yyrule);
       yyn > 0;
       yys0 = yys0->yypred, yys1 = yys1->yypred, yyn -= 1)
    {
      if (yys0 == yys1)
        break;
      else if (yys0->yyresolved)
        {
          yys1->yyresolved = yytrue;
          yys1->yysemantics.yysval = yys0->yysemantics.yysval;
        }
      else if (yys1->yyresolved)
        {
          yys0->yyresolved = yytrue;
          yys0->yysemantics.yysval = yys1->yysemantics.yysval;
        }
      else
        {
          yySemanticOption** yyz0p = &yys0->yysemantics.yyfirstVal;
          yySemanticOption* yyz1 = yys1->yysemantics.yyfirstVal;
          while (yytrue)
            {
              if (yyz1 == *yyz0p || yyz1 == YY_NULLPTR)
                break;
              else if (*yyz0p == YY_NULLPTR)
                {
                  *yyz0p = yyz1;
                  break;
                }
              else if (*yyz0p < yyz1)
                {
                  yySemanticOption* yyz = *yyz0p;
                  *yyz0p = yyz1;
                  yyz1 = yyz1->yynext;
                  (*yyz0p)->yynext = yyz;
                }
              yyz0p = &(*yyz0p)->yynext;
            }
          yys1->yysemantics.yyfirstVal = yys0->yysemantics.yyfirstVal;
        }
    }
}

/** Y0 and Y1 represent two possible actions to take in a given
 *  parsing state; return 0 if no combination is possible,
 *  1 if user-mergeable, 2 if Y0 is preferred, 3 if Y1 is preferred.  */
static int
yypreference (yySemanticOption* y0, yySemanticOption* y1)
{
  yyRuleNum r0 = y0->yyrule, r1 = y1->yyrule;
  int p0 = yydprec[r0], p1 = yydprec[r1];

  if (p0 == p1)
    {
      if (yymerger[r0] == 0 || yymerger[r0] != yymerger[r1])
        return 0;
      else
        return 1;
    }
  if (p0 == 0 || p1 == 0)
    return 0;
  if (p0 < p1)
    return 3;
  if (p1 < p0)
    return 2;
  return 0;
}

static YYRESULTTAG yyresolveValue (yyGLRState* yys,
                                   yyGLRStack* yystackp);


/** Resolve the previous YYN states starting at and including state YYS
 *  on *YYSTACKP. If result != yyok, some states may have been left
 *  unresolved possibly with empty semantic option chains.  Regardless
 *  of whether result = yyok, each state has been left with consistent
 *  data so that yydestroyGLRState can be invoked if necessary.  */
static YYRESULTTAG
yyresolveStates (yyGLRState* yys, int yyn,
                 yyGLRStack* yystackp)
{
  if (0 < yyn)
    {
      YYASSERT (yys->yypred);
      YYCHK (yyresolveStates (yys->yypred, yyn-1, yystackp));
      if (! yys->yyresolved)
        YYCHK (yyresolveValue (yys, yystackp));
    }
  return yyok;
}

/** Resolve the states for the RHS of YYOPT on *YYSTACKP, perform its
 *  user action, and return the semantic value and location in *YYVALP
 *  and *YYLOCP.  Regardless of whether result = yyok, all RHS states
 *  have been destroyed (assuming the user action destroys all RHS
 *  semantic values if invoked).  */
static YYRESULTTAG
yyresolveAction (yySemanticOption* yyopt, yyGLRStack* yystackp,
                 YYSTYPE* yyvalp)
{
  yyGLRStackItem yyrhsVals[YYMAXRHS + YYMAXLEFT + 1];
  int yynrhs = yyrhsLength (yyopt->yyrule);
  YYRESULTTAG yyflag =
    yyresolveStates (yyopt->yystate, yynrhs, yystackp);
  if (yyflag != yyok)
    {
      yyGLRState *yys;
      for (yys = yyopt->yystate; yynrhs > 0; yys = yys->yypred, yynrhs -= 1)
        yydestroyGLRState ("Cleanup: popping", yys);
      return yyflag;
    }

  yyrhsVals[YYMAXRHS + YYMAXLEFT].yystate.yypred = yyopt->yystate;
  {
    int yychar_current = yychar;
    YYSTYPE yylval_current = yylval;
    yychar = yyopt->yyrawchar;
    yylval = yyopt->yyval;
    yyflag = yyuserAction (yyopt->yyrule, yynrhs,
                           yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
                           yystackp, yyvalp);
    yychar = yychar_current;
    yylval = yylval_current;
  }
  return yyflag;
}

#if YYDEBUG
static void
yyreportTree (yySemanticOption* yyx, int yyindent)
{
  int yynrhs = yyrhsLength (yyx->yyrule);
  int yyi;
  yyGLRState* yys;
  yyGLRState* yystates[1 + YYMAXRHS];
  yyGLRState yyleftmost_state;

  for (yyi = yynrhs, yys = yyx->yystate; 0 < yyi; yyi -= 1, yys = yys->yypred)
    yystates[yyi] = yys;
  if (yys == YY_NULLPTR)
    {
      yyleftmost_state.yyposn = 0;
      yystates[0] = &yyleftmost_state;
    }
  else
    yystates[0] = yys;

  if (yyx->yystate->yyposn < yys->yyposn + 1)
    YYFPRINTF (stderr, "%*s%s -> <Rule %d, empty>\n",
               yyindent, "", yytokenName (yylhsNonterm (yyx->yyrule)),
               yyx->yyrule - 1);
  else
    YYFPRINTF (stderr, "%*s%s -> <Rule %d, tokens %lu .. %lu>\n",
               yyindent, "", yytokenName (yylhsNonterm (yyx->yyrule)),
               yyx->yyrule - 1, (unsigned long int) (yys->yyposn + 1),
               (unsigned long int) yyx->yystate->yyposn);
  for (yyi = 1; yyi <= yynrhs; yyi += 1)
    {
      if (yystates[yyi]->yyresolved)
        {
          if (yystates[yyi-1]->yyposn+1 > yystates[yyi]->yyposn)
            YYFPRINTF (stderr, "%*s%s <empty>\n", yyindent+2, "",
                       yytokenName (yystos[yystates[yyi]->yylrState]));
          else
            YYFPRINTF (stderr, "%*s%s <tokens %lu .. %lu>\n", yyindent+2, "",
                       yytokenName (yystos[yystates[yyi]->yylrState]),
                       (unsigned long int) (yystates[yyi-1]->yyposn + 1),
                       (unsigned long int) yystates[yyi]->yyposn);
        }
      else
        yyreportTree (yystates[yyi]->yysemantics.yyfirstVal, yyindent+2);
    }
}
#endif

static YYRESULTTAG
yyreportAmbiguity (yySemanticOption* yyx0,
                   yySemanticOption* yyx1)
{
  YYUSE (yyx0);
  YYUSE (yyx1);

#if YYDEBUG
  YYFPRINTF (stderr, "Ambiguity detected.\n");
  YYFPRINTF (stderr, "Option 1,\n");
  yyreportTree (yyx0, 2);
  YYFPRINTF (stderr, "\nOption 2,\n");
  yyreportTree (yyx1, 2);
  YYFPRINTF (stderr, "\n");
#endif

  yyerror (YY_("syntax is ambiguous"));
  return yyabort;
}

/** Resolve the ambiguity represented in state YYS in *YYSTACKP,
 *  perform the indicated actions, and set the semantic value of YYS.
 *  If result != yyok, the chain of semantic options in YYS has been
 *  cleared instead or it has been left unmodified except that
 *  redundant options may have been removed.  Regardless of whether
 *  result = yyok, YYS has been left with consistent data so that
 *  yydestroyGLRState can be invoked if necessary.  */
static YYRESULTTAG
yyresolveValue (yyGLRState* yys, yyGLRStack* yystackp)
{
  yySemanticOption* yyoptionList = yys->yysemantics.yyfirstVal;
  yySemanticOption* yybest = yyoptionList;
  yySemanticOption** yypp;
  yybool yymerge = yyfalse;
  YYSTYPE yysval;
  YYRESULTTAG yyflag;

  for (yypp = &yyoptionList->yynext; *yypp != YY_NULLPTR; )
    {
      yySemanticOption* yyp = *yypp;

      if (yyidenticalOptions (yybest, yyp))
        {
          yymergeOptionSets (yybest, yyp);
          *yypp = yyp->yynext;
        }
      else
        {
          switch (yypreference (yybest, yyp))
            {
            case 0:
              return yyreportAmbiguity (yybest, yyp);
              break;
            case 1:
              yymerge = yytrue;
              break;
            case 2:
              break;
            case 3:
              yybest = yyp;
              yymerge = yyfalse;
              break;
            default:
              /* This cannot happen so it is not worth a YYASSERT (yyfalse),
                 but some compilers complain if the default case is
                 omitted.  */
              break;
            }
          yypp = &yyp->yynext;
        }
    }

  if (yymerge)
    {
      yySemanticOption* yyp;
      int yyprec = yydprec[yybest->yyrule];
      yyflag = yyresolveAction (yybest, yystackp, &yysval);
      if (yyflag == yyok)
        for (yyp = yybest->yynext; yyp != YY_NULLPTR; yyp = yyp->yynext)
          {
            if (yyprec == yydprec[yyp->yyrule])
              {
                YYSTYPE yysval_other;
                yyflag = yyresolveAction (yyp, yystackp, &yysval_other);
                if (yyflag != yyok)
                  {
                    yydestruct ("Cleanup: discarding incompletely merged value for",
                                yystos[yys->yylrState],
                                &yysval);
                    break;
                  }
                yyuserMerge (yymerger[yyp->yyrule], &yysval, &yysval_other);
              }
          }
    }
  else
    yyflag = yyresolveAction (yybest, yystackp, &yysval);

  if (yyflag == yyok)
    {
      yys->yyresolved = yytrue;
      yys->yysemantics.yysval = yysval;
    }
  else
    yys->yysemantics.yyfirstVal = YY_NULLPTR;
  return yyflag;
}

static YYRESULTTAG
yyresolveStack (yyGLRStack* yystackp)
{
  if (yystackp->yysplitPoint != YY_NULLPTR)
    {
      yyGLRState* yys;
      int yyn;

      for (yyn = 0, yys = yystackp->yytops.yystates[0];
           yys != yystackp->yysplitPoint;
           yys = yys->yypred, yyn += 1)
        continue;
      YYCHK (yyresolveStates (yystackp->yytops.yystates[0], yyn, yystackp
                             ));
    }
  return yyok;
}

static void
yycompressStack (yyGLRStack* yystackp)
{
  yyGLRState* yyp, *yyq, *yyr;

  if (yystackp->yytops.yysize != 1 || yystackp->yysplitPoint == YY_NULLPTR)
    return;

  for (yyp = yystackp->yytops.yystates[0], yyq = yyp->yypred, yyr = YY_NULLPTR;
       yyp != yystackp->yysplitPoint;
       yyr = yyp, yyp = yyq, yyq = yyp->yypred)
    yyp->yypred = yyr;

  yystackp->yyspaceLeft += yystackp->yynextFree - yystackp->yyitems;
  yystackp->yynextFree = ((yyGLRStackItem*) yystackp->yysplitPoint) + 1;
  yystackp->yyspaceLeft -= yystackp->yynextFree - yystackp->yyitems;
  yystackp->yysplitPoint = YY_NULLPTR;
  yystackp->yylastDeleted = YY_NULLPTR;

  while (yyr != YY_NULLPTR)
    {
      yystackp->yynextFree->yystate = *yyr;
      yyr = yyr->yypred;
      yystackp->yynextFree->yystate.yypred = &yystackp->yynextFree[-1].yystate;
      yystackp->yytops.yystates[0] = &yystackp->yynextFree->yystate;
      yystackp->yynextFree += 1;
      yystackp->yyspaceLeft -= 1;
    }
}

static YYRESULTTAG
yyprocessOneStack (yyGLRStack* yystackp, size_t yyk,
                   size_t yyposn)
{
  while (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
    {
      yyStateNum yystate = yystackp->yytops.yystates[yyk]->yylrState;
      YYDPRINTF ((stderr, "Stack %lu Entering state %d\n",
                  (unsigned long int) yyk, yystate));

      YYASSERT (yystate != YYFINAL);

      if (yyisDefaultedState (yystate))
        {
          YYRESULTTAG yyflag;
          yyRuleNum yyrule = yydefaultAction (yystate);
          if (yyrule == 0)
            {
              YYDPRINTF ((stderr, "Stack %lu dies.\n",
                          (unsigned long int) yyk));
              yymarkStackDeleted (yystackp, yyk);
              return yyok;
            }
          yyflag = yyglrReduce (yystackp, yyk, yyrule, yyimmediate[yyrule]);
          if (yyflag == yyerr)
            {
              YYDPRINTF ((stderr,
                          "Stack %lu dies "
                          "(predicate failure or explicit user error).\n",
                          (unsigned long int) yyk));
              yymarkStackDeleted (yystackp, yyk);
              return yyok;
            }
          if (yyflag != yyok)
            return yyflag;
        }
      else
        {
          yySymbol yytoken;
          int yyaction;
          const short int* yyconflicts;

          yystackp->yytops.yylookaheadNeeds[yyk] = yytrue;
          if (yychar == YYEMPTY)
            {
              YYDPRINTF ((stderr, "Reading a token: "));
              yychar = yylex ();
            }

          if (yychar <= YYEOF)
            {
              yychar = yytoken = YYEOF;
              YYDPRINTF ((stderr, "Now at end of input.\n"));
            }
          else
            {
              yytoken = YYTRANSLATE (yychar);
              YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
            }

          yygetLRActions (yystate, yytoken, &yyaction, &yyconflicts);

          while (*yyconflicts != 0)
            {
              YYRESULTTAG yyflag;
              size_t yynewStack = yysplitStack (yystackp, yyk);
              YYDPRINTF ((stderr, "Splitting off stack %lu from %lu.\n",
                          (unsigned long int) yynewStack,
                          (unsigned long int) yyk));
              yyflag = yyglrReduce (yystackp, yynewStack,
                                    *yyconflicts,
                                    yyimmediate[*yyconflicts]);
              if (yyflag == yyok)
                YYCHK (yyprocessOneStack (yystackp, yynewStack,
                                          yyposn));
              else if (yyflag == yyerr)
                {
                  YYDPRINTF ((stderr, "Stack %lu dies.\n",
                              (unsigned long int) yynewStack));
                  yymarkStackDeleted (yystackp, yynewStack);
                }
              else
                return yyflag;
              yyconflicts += 1;
            }

          if (yyisShiftAction (yyaction))
            break;
          else if (yyisErrorAction (yyaction))
            {
              YYDPRINTF ((stderr, "Stack %lu dies.\n",
                          (unsigned long int) yyk));
              yymarkStackDeleted (yystackp, yyk);
              break;
            }
          else
            {
              YYRESULTTAG yyflag = yyglrReduce (yystackp, yyk, -yyaction,
                                                yyimmediate[-yyaction]);
              if (yyflag == yyerr)
                {
                  YYDPRINTF ((stderr,
                              "Stack %lu dies "
                              "(predicate failure or explicit user error).\n",
                              (unsigned long int) yyk));
                  yymarkStackDeleted (yystackp, yyk);
                  break;
                }
              else if (yyflag != yyok)
                return yyflag;
            }
        }
    }
  return yyok;
}

static void
yyreportSyntaxError (yyGLRStack* yystackp)
{
  if (yystackp->yyerrState != 0)
    return;
#if ! YYERROR_VERBOSE
  yyerror (YY_("syntax error"));
#else
  {
  yySymbol yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);
  size_t yysize0 = yytnamerr (YY_NULLPTR, yytokenName (yytoken));
  size_t yysize = yysize0;
  yybool yysize_overflow = yyfalse;
  char* yymsg = YY_NULLPTR;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected").  */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[yystackp->yytops.yystates[0]->yylrState];
      yyarg[yycount++] = yytokenName (yytoken);
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for this
             state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;
          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytokenName (yyx);
                {
                  size_t yysz = yysize + yytnamerr (YY_NULLPTR, yytokenName (yyx));
                  yysize_overflow |= yysz < yysize;
                  yysize = yysz;
                }
              }
        }
    }

  switch (yycount)
    {
#define YYCASE_(N, S)                   \
      case N:                           \
        yyformat = S;                   \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
    }

  {
    size_t yysz = yysize + strlen (yyformat);
    yysize_overflow |= yysz < yysize;
    yysize = yysz;
  }

  if (!yysize_overflow)
    yymsg = (char *) YYMALLOC (yysize);

  if (yymsg)
    {
      char *yyp = yymsg;
      int yyi = 0;
      while ((*yyp = *yyformat))
        {
          if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
            {
              yyp += yytnamerr (yyp, yyarg[yyi++]);
              yyformat += 2;
            }
          else
            {
              yyp++;
              yyformat++;
            }
        }
      yyerror (yymsg);
      YYFREE (yymsg);
    }
  else
    {
      yyerror (YY_("syntax error"));
      yyMemoryExhausted (yystackp);
    }
  }
#endif /* YYERROR_VERBOSE */
  yynerrs += 1;
}

/* Recover from a syntax error on *YYSTACKP, assuming that *YYSTACKP->YYTOKENP,
   yylval, and yylloc are the syntactic category, semantic value, and location
   of the lookahead.  */
static void
yyrecoverSyntaxError (yyGLRStack* yystackp)
{
  size_t yyk;
  int yyj;

  if (yystackp->yyerrState == 3)
    /* We just shifted the error token and (perhaps) took some
       reductions.  Skip tokens until we can proceed.  */
    while (yytrue)
      {
        yySymbol yytoken;
        if (yychar == YYEOF)
          yyFail (yystackp, YY_NULLPTR);
        if (yychar != YYEMPTY)
          {
            yytoken = YYTRANSLATE (yychar);
            yydestruct ("Error: discarding",
                        yytoken, &yylval);
          }
        YYDPRINTF ((stderr, "Reading a token: "));
        yychar = yylex ();
        if (yychar <= YYEOF)
          {
            yychar = yytoken = YYEOF;
            YYDPRINTF ((stderr, "Now at end of input.\n"));
          }
        else
          {
            yytoken = YYTRANSLATE (yychar);
            YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
          }
        yyj = yypact[yystackp->yytops.yystates[0]->yylrState];
        if (yypact_value_is_default (yyj))
          return;
        yyj += yytoken;
        if (yyj < 0 || YYLAST < yyj || yycheck[yyj] != yytoken)
          {
            if (yydefact[yystackp->yytops.yystates[0]->yylrState] != 0)
              return;
          }
        else if (! yytable_value_is_error (yytable[yyj]))
          return;
      }

  /* Reduce to one stack.  */
  for (yyk = 0; yyk < yystackp->yytops.yysize; yyk += 1)
    if (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
      break;
  if (yyk >= yystackp->yytops.yysize)
    yyFail (yystackp, YY_NULLPTR);
  for (yyk += 1; yyk < yystackp->yytops.yysize; yyk += 1)
    yymarkStackDeleted (yystackp, yyk);
  yyremoveDeletes (yystackp);
  yycompressStack (yystackp);

  /* Now pop stack until we find a state that shifts the error token.  */
  yystackp->yyerrState = 3;
  while (yystackp->yytops.yystates[0] != YY_NULLPTR)
    {
      yyGLRState *yys = yystackp->yytops.yystates[0];
      yyj = yypact[yys->yylrState];
      if (! yypact_value_is_default (yyj))
        {
          yyj += YYTERROR;
          if (0 <= yyj && yyj <= YYLAST && yycheck[yyj] == YYTERROR
              && yyisShiftAction (yytable[yyj]))
            {
              /* Shift the error token.  */
              YY_SYMBOL_PRINT ("Shifting", yystos[yytable[yyj]],
                               &yylval, &yyerrloc);
              yyglrShift (yystackp, 0, yytable[yyj],
                          yys->yyposn, &yylval);
              yys = yystackp->yytops.yystates[0];
              break;
            }
        }
      if (yys->yypred != YY_NULLPTR)
        yydestroyGLRState ("Error: popping", yys);
      yystackp->yytops.yystates[0] = yys->yypred;
      yystackp->yynextFree -= 1;
      yystackp->yyspaceLeft += 1;
    }
  if (yystackp->yytops.yystates[0] == YY_NULLPTR)
    yyFail (yystackp, YY_NULLPTR);
}

#define YYCHK1(YYE)                                                          \
  do {                                                                       \
    switch (YYE) {                                                           \
    case yyok:                                                               \
      break;                                                                 \
    case yyabort:                                                            \
      goto yyabortlab;                                                       \
    case yyaccept:                                                           \
      goto yyacceptlab;                                                      \
    case yyerr:                                                              \
      goto yyuser_error;                                                     \
    default:                                                                 \
      goto yybuglab;                                                         \
    }                                                                        \
  } while (0)

/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
  int yyresult;
  yyGLRStack yystack;
  yyGLRStack* const yystackp = &yystack;
  size_t yyposn;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY;
  yylval = yyval_default;

  if (! yyinitGLRStack (yystackp, YYINITDEPTH))
    goto yyexhaustedlab;
  switch (YYSETJMP (yystack.yyexception_buffer))
    {
    case 0: break;
    case 1: goto yyabortlab;
    case 2: goto yyexhaustedlab;
    default: goto yybuglab;
    }
  yyglrShift (&yystack, 0, 0, 0, &yylval);
  yyposn = 0;

  while (yytrue)
    {
      /* For efficiency, we have two loops, the first of which is
         specialized to deterministic operation (single stack, no
         potential ambiguity).  */
      /* Standard mode */
      while (yytrue)
        {
          yyRuleNum yyrule;
          int yyaction;
          const short int* yyconflicts;

          yyStateNum yystate = yystack.yytops.yystates[0]->yylrState;
          YYDPRINTF ((stderr, "Entering state %d\n", yystate));
          if (yystate == YYFINAL)
            goto yyacceptlab;
          if (yyisDefaultedState (yystate))
            {
              yyrule = yydefaultAction (yystate);
              if (yyrule == 0)
                {

                  yyreportSyntaxError (&yystack);
                  goto yyuser_error;
                }
              YYCHK1 (yyglrReduce (&yystack, 0, yyrule, yytrue));
            }
          else
            {
              yySymbol yytoken;
              if (yychar == YYEMPTY)
                {
                  YYDPRINTF ((stderr, "Reading a token: "));
                  yychar = yylex ();
                }

              if (yychar <= YYEOF)
                {
                  yychar = yytoken = YYEOF;
                  YYDPRINTF ((stderr, "Now at end of input.\n"));
                }
              else
                {
                  yytoken = YYTRANSLATE (yychar);
                  YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
                }

              yygetLRActions (yystate, yytoken, &yyaction, &yyconflicts);
              if (*yyconflicts != 0)
                break;
              if (yyisShiftAction (yyaction))
                {
                  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
                  yychar = YYEMPTY;
                  yyposn += 1;
                  yyglrShift (&yystack, 0, yyaction, yyposn, &yylval);
                  if (0 < yystack.yyerrState)
                    yystack.yyerrState -= 1;
                }
              else if (yyisErrorAction (yyaction))
                {

                  yyreportSyntaxError (&yystack);
                  goto yyuser_error;
                }
              else
                YYCHK1 (yyglrReduce (&yystack, 0, -yyaction, yytrue));
            }
        }

      while (yytrue)
        {
          yySymbol yytoken_to_shift;
          size_t yys;

          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            yystackp->yytops.yylookaheadNeeds[yys] = yychar != YYEMPTY;

          /* yyprocessOneStack returns one of three things:

              - An error flag.  If the caller is yyprocessOneStack, it
                immediately returns as well.  When the caller is finally
                yyparse, it jumps to an error label via YYCHK1.

              - yyok, but yyprocessOneStack has invoked yymarkStackDeleted
                (&yystack, yys), which sets the top state of yys to NULL.  Thus,
                yyparse's following invocation of yyremoveDeletes will remove
                the stack.

              - yyok, when ready to shift a token.

             Except in the first case, yyparse will invoke yyremoveDeletes and
             then shift the next token onto all remaining stacks.  This
             synchronization of the shift (that is, after all preceding
             reductions on all stacks) helps prevent double destructor calls
             on yylval in the event of memory exhaustion.  */

          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            YYCHK1 (yyprocessOneStack (&yystack, yys, yyposn));
          yyremoveDeletes (&yystack);
          if (yystack.yytops.yysize == 0)
            {
              yyundeleteLastStack (&yystack);
              if (yystack.yytops.yysize == 0)
                yyFail (&yystack, YY_("syntax error"));
              YYCHK1 (yyresolveStack (&yystack));
              YYDPRINTF ((stderr, "Returning to deterministic operation.\n"));

              yyreportSyntaxError (&yystack);
              goto yyuser_error;
            }

          /* If any yyglrShift call fails, it will fail after shifting.  Thus,
             a copy of yylval will already be on stack 0 in the event of a
             failure in the following loop.  Thus, yychar is set to YYEMPTY
             before the loop to make sure the user destructor for yylval isn't
             called twice.  */
          yytoken_to_shift = YYTRANSLATE (yychar);
          yychar = YYEMPTY;
          yyposn += 1;
          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            {
              int yyaction;
              const short int* yyconflicts;
              yyStateNum yystate = yystack.yytops.yystates[yys]->yylrState;
              yygetLRActions (yystate, yytoken_to_shift, &yyaction,
                              &yyconflicts);
              /* Note that yyconflicts were handled by yyprocessOneStack.  */
              YYDPRINTF ((stderr, "On stack %lu, ", (unsigned long int) yys));
              YY_SYMBOL_PRINT ("shifting", yytoken_to_shift, &yylval, &yylloc);
              yyglrShift (&yystack, yys, yyaction, yyposn,
                          &yylval);
              YYDPRINTF ((stderr, "Stack %lu now in state #%d\n",
                          (unsigned long int) yys,
                          yystack.yytops.yystates[yys]->yylrState));
            }

          if (yystack.yytops.yysize == 1)
            {
              YYCHK1 (yyresolveStack (&yystack));
              YYDPRINTF ((stderr, "Returning to deterministic operation.\n"));
              yycompressStack (&yystack);
              break;
            }
        }
      continue;
    yyuser_error:
      yyrecoverSyntaxError (&yystack);
      yyposn = yystack.yytops.yystates[0]->yyposn;
    }

 yyacceptlab:
  yyresult = 0;
  goto yyreturn;

 yybuglab:
  YYASSERT (yyfalse);
  goto yyabortlab;

 yyabortlab:
  yyresult = 1;
  goto yyreturn;

 yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturn;

 yyreturn:
  if (yychar != YYEMPTY)
    yydestruct ("Cleanup: discarding lookahead",
                YYTRANSLATE (yychar), &yylval);

  /* If the stack is well-formed, pop the stack until it is empty,
     destroying its entries as we go.  But free the stack regardless
     of whether it is well-formed.  */
  if (yystack.yyitems)
    {
      yyGLRState** yystates = yystack.yytops.yystates;
      if (yystates)
        {
          size_t yysize = yystack.yytops.yysize;
          size_t yyk;
          for (yyk = 0; yyk < yysize; yyk += 1)
            if (yystates[yyk])
              {
                while (yystates[yyk])
                  {
                    yyGLRState *yys = yystates[yyk];
                  if (yys->yypred != YY_NULLPTR)
                      yydestroyGLRState ("Cleanup: popping", yys);
                    yystates[yyk] = yys->yypred;
                    yystack.yynextFree -= 1;
                    yystack.yyspaceLeft += 1;
                  }
                break;
              }
        }
      yyfreeGLRStack (&yystack);
    }

  return yyresult;
}

/* DEBUGGING ONLY */
#if YYDEBUG
static void
yy_yypstack (yyGLRState* yys)
{
  if (yys->yypred)
    {
      yy_yypstack (yys->yypred);
      YYFPRINTF (stderr, " -> ");
    }
  YYFPRINTF (stderr, "%d@%lu", yys->yylrState,
             (unsigned long int) yys->yyposn);
}

static void
yypstates (yyGLRState* yyst)
{
  if (yyst == YY_NULLPTR)
    YYFPRINTF (stderr, "<null>");
  else
    yy_yypstack (yyst);
  YYFPRINTF (stderr, "\n");
}

static void
yypstack (yyGLRStack* yystackp, size_t yyk)
{
  yypstates (yystackp->yytops.yystates[yyk]);
}

#define YYINDEX(YYX)                                                         \
    ((YYX) == YY_NULLPTR ? -1 : (yyGLRStackItem*) (YYX) - yystackp->yyitems)


static void
yypdumpstack (yyGLRStack* yystackp)
{
  yyGLRStackItem* yyp;
  size_t yyi;
  for (yyp = yystackp->yyitems; yyp < yystackp->yynextFree; yyp += 1)
    {
      YYFPRINTF (stderr, "%3lu. ",
                 (unsigned long int) (yyp - yystackp->yyitems));
      if (*(yybool *) yyp)
        {
          YYASSERT (yyp->yystate.yyisState);
          YYASSERT (yyp->yyoption.yyisState);
          YYFPRINTF (stderr, "Res: %d, LR State: %d, posn: %lu, pred: %ld",
                     yyp->yystate.yyresolved, yyp->yystate.yylrState,
                     (unsigned long int) yyp->yystate.yyposn,
                     (long int) YYINDEX (yyp->yystate.yypred));
          if (! yyp->yystate.yyresolved)
            YYFPRINTF (stderr, ", firstVal: %ld",
                       (long int) YYINDEX (yyp->yystate
                                             .yysemantics.yyfirstVal));
        }
      else
        {
          YYASSERT (!yyp->yystate.yyisState);
          YYASSERT (!yyp->yyoption.yyisState);
          YYFPRINTF (stderr, "Option. rule: %d, state: %ld, next: %ld",
                     yyp->yyoption.yyrule - 1,
                     (long int) YYINDEX (yyp->yyoption.yystate),
                     (long int) YYINDEX (yyp->yyoption.yynext));
        }
      YYFPRINTF (stderr, "\n");
    }
  YYFPRINTF (stderr, "Tops:");
  for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
    YYFPRINTF (stderr, "%lu: %ld; ", (unsigned long int) yyi,
               (long int) YYINDEX (yystackp->yytops.yystates[yyi]));
  YYFPRINTF (stderr, "\n");
}
#endif

#undef yylval
#undef yychar
#undef yynerrs



#line 1150 "grammar.y" /* glr.c:2551  */



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
