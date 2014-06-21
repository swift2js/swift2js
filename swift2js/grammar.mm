/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison GLR parsers in C

   Copyright (C) 2002, 2003, 2004, 2005, 2006 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "glr.c"

/* Pure parsers.  */
#define YYPURE 0

/* Using locations.  */
#define YYLSP_NEEDED 0






/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
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
     PLUS_EQ = 85,
     MINUS_EQ = 86,
     ASTERISK_EQ = 87,
     SLASH_EQ = 88,
     PERCENT_EQ = 89,
     AMPERSAND_EQ = 90,
     CARET_EQ = 91,
     TILDE_EQ = 92,
     OR_EQ = 93,
     LPAR = 94,
     RPAR = 95,
     LBRACKET = 96,
     RBRACKET = 97,
     LBRACE = 98,
     RBRACE = 99,
     COMMA = 100,
     COLON = 101,
     SEMICOLON = 102,
     AT = 103,
     UNDERSCORE = 104,
     HASH = 105,
     DOLLAR = 106,
     QUESTION = 107,
     PREFIX_OPERATOR = 108,
     POSTFIX_OPERATOR = 109
   };
#endif


/* Copy the first part of user declarations.  */
#line 1 "grammar.y"

    #include <iostream>
    @class NSArray;
    #include <Foundation/NSString.h>
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();
    
    inline NSString * toSwift(const char * c) {
        return [NSString stringWithUTF8String:c];
    }


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE 
#line 18 "grammar.y"
{
    ASTNode * node;
    char *    str;
}
/* Line 204 of glr.c.  */
#line 200 "grammar.mm"
	YYSTYPE;
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{

  char yydummy;

} YYLTYPE;
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

/* Default (constant) value used for initialization for null
   right-hand sides.  Unlike the standard yacc.c template,
   here we set the default value of $$ to a zeroed-out value.
   Since the default value is undefined, this behavior is
   technically correct.  */
static YYSTYPE yyval_default;

/* Copy the second part of user declarations.  */


/* Line 234 of glr.c.  */
#line 247 "grammar.mm"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
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
# define YYSETJMP(env) setjmp (env)
# define YYLONGJMP(env, val) longjmp (env, val)
#endif

/*-----------------.
| GCC extensions.  |
`-----------------*/

#ifndef __attribute__
/* This feature is available in gcc versions 2.5 and later.  */
# if (! defined __GNUC__ || __GNUC__ < 2 \
      || (__GNUC__ == 2 && __GNUC_MINOR__ < 5) || __STRICT_ANSI__)
#  define __attribute__(Spec) /* empty */
# endif
#endif


#ifdef __cplusplus
# define YYOPTIONAL_LOC(Name) /* empty */
#else
# define YYOPTIONAL_LOC(Name) Name __attribute__ ((__unused__))
#endif

#ifndef YYASSERT
# define YYASSERT(condition) ((void) ((condition) || (abort (), 0)))
#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  122
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1911

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  120
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  274
/* YYNRULES -- Number of rules.  */
#define YYNRULES  526
/* YYNRULES -- Number of states.  */
#define YYNSTATES  801
/* YYMAXRHS -- Maximum number of symbols on right-hand side of rule.  */
#define YYMAXRHS 9
/* YYMAXLEFT -- Maximum number of symbols to the left of a handle
   accessed by $0, $-1, etc., in any rule.  */
#define YYMAXLEFT 0

/* YYTRANSLATE(X) -- Bison symbol number corresponding to X.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   265

#define YYTRANSLATE(YYX)						\
  ((YYX <= 0) ? YYEOF :							\
   (unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

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
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,   112,   113,
     114,   115,   116,   117,   118,   119
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const unsigned short int yyprhs[] =
{
       0,     0,     3,     5,     8,     9,    11,    14,    17,    20,
      22,    25,    28,    29,    31,    33,    35,    37,    39,    47,
      48,    50,    51,    53,    63,    65,    67,    73,    77,    79,
      81,    86,    88,    90,    95,    96,    98,   100,   102,   105,
     108,   114,   115,   117,   120,   123,   126,   129,   132,   136,
     139,   144,   145,   147,   150,   153,   155,   158,   161,   164,
     166,   168,   170,   172,   174,   177,   178,   180,   183,   185,
     188,   193,   194,   196,   198,   202,   204,   208,   212,   215,
     217,   221,   223,   225,   229,   233,   237,   241,   243,   247,
     249,   251,   253,   255,   257,   259,   261,   263,   265,   267,
     269,   271,   273,   275,   277,   280,   281,   283,   286,   287,
     289,   291,   293,   295,   297,   299,   301,   303,   305,   307,
     311,   316,   317,   319,   320,   322,   324,   326,   328,   330,
     332,   334,   336,   338,   342,   344,   346,   351,   353,   357,
     360,   362,   363,   365,   368,   371,   376,   381,   386,   392,
     396,   398,   403,   404,   406,   411,   415,   420,   421,   423,
     427,   432,   433,   435,   440,   443,   446,   451,   452,   454,
     459,   464,   469,   472,   475,   477,   480,   486,   487,   489,
     493,   495,   497,   500,   501,   503,   507,   509,   512,   513,
     515,   518,   523,   524,   526,   528,   532,   540,   541,   543,
     544,   546,   547,   549,   550,   552,   553,   555,   563,   566,
     568,   570,   572,   574,   577,   580,   583,   589,   590,   592,
     595,   597,   599,   603,   605,   609,   612,   613,   615,   617,
     619,   627,   628,   630,   633,   635,   637,   641,   643,   647,
     650,   651,   653,   656,   663,   664,   666,   668,   672,   679,
     681,   685,   691,   693,   697,   698,   700,   702,   704,   706,
     708,   710,   713,   718,   723,   727,   731,   735,   736,   738,
     743,   747,   748,   750,   752,   756,   761,   765,   769,   773,
     777,   781,   785,   787,   789,   791,   797,   803,   810,   811,
     813,   816,   817,   819,   820,   822,   825,   826,   829,   831,
     833,   835,   838,   839,   841,   844,   846,   849,   851,   853,
     855,   857,   859,   862,   865,   869,   870,   872,   874,   878,
     880,   885,   886,   888,   889,   891,   893,   895,   898,   902,
     904,   908,   909,   911,   913,   917,   918,   920,   923,   926,
     930,   934,   938,   939,   940,   943,   944,   946,   948,   952,
     955,   956,   958,   960,   963,   966,   969,   972,   974,   977,
     979,   983,   986,   990,   991,   993,   996,   997,   999,  1001,
    1003,  1005,  1007,  1009,  1011,  1013,  1015,  1017,  1019,  1021,
    1023,  1025,  1027,  1031,  1032,  1034,  1037,  1041,  1042,  1044,
    1046,  1050,  1054,  1057,  1061,  1065,  1067,  1071,  1076,  1080,
    1082,  1084,  1086,  1090,  1095,  1099,  1104,  1105,  1107,  1111,
    1115,  1120,  1125,  1128,  1133,  1135,  1137,  1139,  1141,  1144,
    1148,  1149,  1151,  1153,  1157,  1159,  1163,  1165,  1167,  1170,
    1172,  1174,  1176,  1178,  1180,  1182,  1184,  1186,  1189,  1193,
    1194,  1196,  1198,  1202,  1206,  1211,  1215,  1219,  1224,  1227,
    1230,  1232,  1236,  1238,  1240,  1242,  1244,  1246,  1248,  1250,
    1252,  1254,  1256,  1258,  1260,  1262,  1264,  1266,  1268,  1270,
    1272,  1274,  1276,  1278,  1280,  1282,  1284,  1286,  1288,  1290,
    1292,  1294,  1296,  1299,  1302,  1305,  1308,  1311,  1314,  1317,
    1320,  1322,  1324,  1326,  1328,  1330,  1332,  1334,  1336,  1340,
    1343,  1348,  1350,  1354,  1355,  1357,  1360,  1362,  1366,  1370,
    1374,  1376,  1380,  1384,  1388,  1391,  1394,  1399,  1400,  1402,
    1404,  1408,  1410,  1414,  1418,  1421,  1423
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const short int yyrhs[] =
{
     121,     0,    -1,   124,    -1,   317,   123,    -1,    -1,   104,
      -1,   171,   123,    -1,   126,   123,    -1,   135,   123,    -1,
     150,    -1,   153,   123,    -1,   122,   125,    -1,    -1,   124,
      -1,   127,    -1,   131,    -1,   132,    -1,   134,    -1,    27,
     128,   104,   129,   104,   129,   177,    -1,    -1,   130,    -1,
      -1,   317,    -1,    27,    96,   128,   104,   129,   104,   129,
      97,   177,    -1,   189,    -1,   319,    -1,    27,   293,    26,
     317,   177,    -1,    31,   133,   177,    -1,   317,    -1,   171,
      -1,    22,   177,    31,   133,    -1,   136,    -1,   140,    -1,
      25,   138,   177,   137,    -1,    -1,   139,    -1,   317,    -1,
     171,    -1,    23,   177,    -1,    23,   136,    -1,    29,   317,
     100,   141,   101,    -1,    -1,   142,    -1,   143,   141,    -1,
     144,   124,    -1,   147,   124,    -1,   144,   104,    -1,   147,
     104,    -1,    19,   145,   103,    -1,   293,   146,    -1,   293,
     146,   102,   145,    -1,    -1,   148,    -1,    21,   103,    -1,
      30,   149,    -1,   317,    -1,   151,   126,    -1,   151,   140,
      -1,   152,   103,    -1,     3,    -1,   154,    -1,   156,    -1,
     157,    -1,   158,    -1,    18,   155,    -1,    -1,   152,    -1,
      20,   155,    -1,    24,    -1,    28,   129,    -1,    71,   161,
     160,    72,    -1,    -1,   163,    -1,   162,    -1,   162,   102,
     161,    -1,   376,    -1,   376,   103,   375,    -1,   376,   103,
     387,    -1,    30,   164,    -1,   165,    -1,   165,   102,   164,
      -1,   166,    -1,   167,    -1,   375,   103,   375,    -1,   375,
     103,   387,    -1,   375,    78,   375,    -1,    71,   169,    72,
      -1,   170,    -1,   170,   102,   169,    -1,   373,    -1,   178,
      -1,   184,    -1,   189,    -1,   206,    -1,   210,    -1,   232,
      -1,   252,    -1,   256,    -1,   259,    -1,   271,    -1,   275,
      -1,   276,    -1,   278,    -1,   281,    -1,   171,   173,    -1,
      -1,   172,    -1,   176,   175,    -1,    -1,   174,    -1,     4,
      -1,    46,    -1,    48,    -1,    50,    -1,    13,    -1,    56,
      -1,    57,    -1,    58,    -1,    59,    -1,   100,   125,   101,
      -1,   179,     9,   180,   182,    -1,    -1,   314,    -1,    -1,
     181,    -1,    16,    -1,    14,    -1,     4,    -1,     6,    -1,
      12,    -1,    17,    -1,     8,    -1,   183,    -1,   183,    77,
     182,    -1,     3,    -1,   369,    -1,   179,   175,    11,   185,
      -1,   186,    -1,   186,   102,   185,    -1,   293,   188,    -1,
     293,    -1,    -1,   188,    -1,    65,   317,    -1,   190,   185,
      -1,   190,   191,   374,   177,    -1,   190,   191,   374,   192,
      -1,   190,   191,   374,   198,    -1,   190,   191,   374,   187,
     202,    -1,   179,   175,    17,    -1,     3,    -1,   100,   194,
     193,   101,    -1,    -1,   195,    -1,   100,   195,   194,   101,
      -1,   179,    42,   177,    -1,   179,    55,   196,   177,    -1,
      -1,   197,    -1,    96,     3,    97,    -1,   100,   200,   199,
     101,    -1,    -1,   201,    -1,   100,   201,   200,   101,    -1,
     179,    42,    -1,   179,    55,    -1,   100,   204,   203,   101,
      -1,    -1,   205,    -1,   100,   205,   204,   101,    -1,   179,
      60,   196,   177,    -1,   179,    41,   196,   177,    -1,   207,
     209,    -1,    16,   208,    -1,     3,    -1,    65,   373,    -1,
     212,   213,   211,   214,   217,    -1,    -1,   159,    -1,   179,
     175,     8,    -1,     3,    -1,   369,    -1,   218,   215,    -1,
      -1,   216,    -1,   112,   179,   373,    -1,   177,    -1,   220,
     219,    -1,    -1,   218,    -1,    96,    97,    -1,    96,   222,
     221,    97,    -1,    -1,    82,    -1,   223,    -1,   223,   102,
     222,    -1,   224,   225,   226,   229,   227,   374,   228,    -1,
      -1,    44,    -1,    -1,    11,    -1,    -1,   107,    -1,    -1,
     230,    -1,    -1,   231,    -1,   224,    17,   226,   229,   227,
     374,   228,    -1,   179,   373,    -1,     3,    -1,   106,    -1,
       3,    -1,   106,    -1,    65,   317,    -1,   179,   233,    -1,
     179,   243,    -1,   241,   211,   100,   234,   101,    -1,    -1,
     235,    -1,   236,   234,    -1,   171,    -1,   237,    -1,   179,
      19,   238,    -1,   239,    -1,   239,   102,   238,    -1,   242,
     240,    -1,    -1,   377,    -1,     3,    -1,     3,    -1,   241,
     211,   103,   375,   100,   244,   101,    -1,    -1,   245,    -1,
     246,   244,    -1,   171,    -1,   247,    -1,   179,    19,   248,
      -1,   249,    -1,   249,   102,   248,    -1,   242,   250,    -1,
      -1,   251,    -1,    65,   368,    -1,   179,    14,   254,   211,
     253,   255,    -1,    -1,   392,    -1,     3,    -1,   100,   173,
     101,    -1,   179,     4,   257,   211,   253,   258,    -1,     3,
      -1,   100,   173,   101,    -1,   179,    12,   260,   253,   261,
      -1,     3,    -1,   100,   262,   101,    -1,    -1,   264,    -1,
     265,    -1,   266,    -1,   267,    -1,   268,    -1,   269,    -1,
     263,   262,    -1,   190,   191,   374,   198,    -1,   212,   213,
     211,   214,    -1,   272,   211,   220,    -1,   279,   280,   198,
      -1,   207,   253,   270,    -1,    -1,   209,    -1,   272,   211,
     220,   274,    -1,   179,   273,    10,    -1,    -1,   113,    -1,
     177,    -1,   179,     5,   177,    -1,     7,   375,   253,   277,
      -1,   100,   173,   101,    -1,   279,   280,   177,    -1,   279,
     280,   192,    -1,   279,   280,   198,    -1,   179,    15,   220,
      -1,   112,   179,   373,    -1,   282,    -1,   283,    -1,   284,
      -1,    49,    53,   369,   100,   101,    -1,    49,    51,   369,
     100,   101,    -1,    49,    43,   369,   100,   285,   101,    -1,
      -1,   286,    -1,   287,   288,    -1,    -1,   289,    -1,    -1,
     291,    -1,    52,   290,    -1,    -1,    40,   292,    -1,    45,
      -1,    54,    -1,    47,    -1,   295,   294,    -1,    -1,   374,
      -1,   296,   294,    -1,   297,    -1,   298,   294,    -1,   302,
      -1,   305,    -1,   308,    -1,   106,    -1,     3,    -1,    17,
     293,    -1,    11,   293,    -1,    96,   299,    97,    -1,    -1,
     300,    -1,   301,    -1,   301,   102,   300,    -1,   293,    -1,
     303,    77,   242,   304,    -1,    -1,   375,    -1,    -1,   298,
      -1,   306,    -1,   307,    -1,    34,   373,    -1,   293,    32,
     373,    -1,   317,    -1,   105,   311,   310,    -1,    -1,   312,
      -1,     3,    -1,    96,   313,    97,    -1,    -1,   315,    -1,
     309,   179,    -1,   316,   313,    -1,    96,   313,    97,    -1,
      98,   313,    99,    -1,   100,   313,   101,    -1,    -1,    -1,
     320,   318,    -1,    -1,   324,    -1,   317,    -1,   317,   102,
     319,    -1,   321,   356,    -1,    -1,   371,    -1,   322,    -1,
      73,     3,    -1,   370,   320,    -1,   325,   320,    -1,   326,
     320,    -1,   327,    -1,   323,   318,    -1,    65,    -1,   109,
     317,   103,    -1,    34,   373,    -1,    32,   328,   373,    -1,
      -1,   109,    -1,     3,   330,    -1,    -1,   168,    -1,   331,
      -1,   340,    -1,   341,    -1,   345,    -1,   351,    -1,   350,
      -1,   355,    -1,   368,    -1,   332,    -1,   337,    -1,   114,
      -1,   115,    -1,   116,    -1,   117,    -1,    98,   333,    99,
      -1,    -1,   334,    -1,   336,   335,    -1,   336,   102,   334,
      -1,    -1,   102,    -1,   317,    -1,    98,   338,    99,    -1,
      98,   103,    99,    -1,   339,   335,    -1,   339,   102,   338,
      -1,   317,   103,   317,    -1,    37,    -1,    37,    77,     3,
      -1,    37,    98,   317,    99,    -1,    37,    77,    10,    -1,
     342,    -1,   343,    -1,   344,    -1,    36,    77,     3,    -1,
      36,    98,   317,    99,    -1,    36,    77,    10,    -1,   100,
     346,   124,   101,    -1,    -1,   347,    -1,   220,   215,    26,
      -1,   367,   215,    26,    -1,   348,   220,   215,    26,    -1,
     348,   367,   215,    26,    -1,   348,    26,    -1,    98,   349,
     317,    99,    -1,    59,    -1,    56,    -1,    57,    -1,    58,
      -1,    77,     3,    -1,    96,   352,    97,    -1,    -1,   353,
      -1,   354,    -1,   354,   102,   353,    -1,   317,    -1,     3,
     103,   317,    -1,   106,    -1,   329,    -1,   356,   372,    -1,
     357,    -1,   360,    -1,   361,    -1,   362,    -1,   363,    -1,
     364,    -1,   365,    -1,   366,    -1,   356,   351,    -1,   356,
     358,   359,    -1,    -1,   351,    -1,   345,    -1,   356,    77,
      10,    -1,   356,    77,    61,    -1,   356,    77,     3,   330,
      -1,   356,    77,    37,    -1,   356,    77,   118,    -1,   356,
      98,   319,    99,    -1,   356,    68,    -1,   356,   109,    -1,
       3,    -1,     3,   102,   367,    -1,    61,    -1,    63,    -1,
      62,    -1,   370,    -1,   371,    -1,   372,    -1,    64,    -1,
      90,    -1,    78,    -1,    79,    -1,    66,    -1,    88,    -1,
      67,    -1,    87,    -1,    68,    -1,    69,    -1,    89,    -1,
      70,    -1,    91,    -1,    71,    -1,    72,    -1,    73,    -1,
      85,    -1,    74,    -1,    86,    -1,    75,    -1,    93,    -1,
      76,    -1,    94,    -1,    77,    -1,   110,    80,    -1,   110,
      81,    -1,   110,    68,    -1,   110,    76,    -1,   110,    67,
      -1,   110,    66,    -1,   111,    80,    -1,   111,    81,    -1,
     384,    -1,   383,    -1,   375,    -1,   377,    -1,   385,    -1,
     386,    -1,   387,    -1,   391,    -1,   103,   179,   373,    -1,
     376,   330,    -1,   376,   330,    77,   375,    -1,     3,    -1,
      96,   378,    97,    -1,    -1,   379,    -1,   380,   221,    -1,
     381,    -1,   381,   102,   380,    -1,   179,   224,   373,    -1,
     224,   382,   374,    -1,     3,    -1,   373,   112,   373,    -1,
     373,    98,    99,    -1,   384,    98,    99,    -1,   373,   109,
      -1,   373,    68,    -1,    12,    71,   388,    72,    -1,    -1,
     389,    -1,   390,    -1,   390,   102,   389,    -1,   375,    -1,
     373,    77,    39,    -1,   373,    77,   119,    -1,   103,   393,
      -1,   375,    -1,   375,   102,   393,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   410,   410,   417,   418,   418,   419,   420,   421,   422,
     423,   424,   425,   425,   429,   430,   431,   432,   436,   437,
     437,   438,   438,   439,   440,   441,   445,   449,   450,   451,
     455,   459,   460,   464,   465,   465,   466,   467,   468,   469,
     473,   474,   474,   475,   476,   477,   478,   479,   480,   481,
     482,   483,   483,   484,   485,   486,   490,   491,   492,   493,
     497,   498,   499,   500,   504,   505,   505,   509,   513,   517,
     524,   525,   525,   526,   527,   528,   529,   530,   531,   532,
     533,   534,   535,   536,   537,   538,   542,   543,   544,   545,
     552,   553,   554,   555,   556,   557,   558,   559,   560,   561,
     562,   563,   564,   565,   566,   567,   567,   568,   569,   569,
     570,   571,   572,   573,   574,   575,   576,   577,   578,   586,
     590,   591,   591,   592,   592,   593,   594,   595,   596,   597,
     598,   599,   600,   601,   602,   603,   607,   608,   609,   610,
     611,   612,   612,   613,   617,   618,   619,   620,   621,   622,
     623,   624,   625,   625,   626,   627,   628,   629,   629,   630,
     631,   632,   632,   633,   634,   635,   636,   637,   637,   638,
     639,   640,   644,   645,   646,   647,   651,   652,   652,   653,
     654,   655,   656,   657,   657,   658,   659,   660,   661,   661,
     662,   663,   664,   664,   665,   666,   667,   668,   668,   669,
     669,   670,   670,   671,   671,   672,   672,   673,   674,   675,
     676,   677,   678,   679,   683,   684,   685,   686,   686,   687,
     688,   689,   690,   691,   692,   693,   694,   694,   695,   696,
     697,   698,   698,   699,   700,   701,   702,   703,   704,   705,
     706,   706,   707,   711,   712,   712,   713,   714,   718,   719,
     720,   724,   725,   726,   727,   727,   728,   729,   730,   731,
     732,   733,   737,   741,   745,   749,   753,   754,   754,   758,
     759,   760,   760,   761,   765,   769,   770,   774,   775,   776,
     777,   778,   782,   783,   784,   785,   786,   787,   788,   788,
     789,   790,   790,   791,   791,   792,   793,   794,   795,   796,
     797,   804,   805,   805,   806,   807,   808,   809,   810,   811,
     815,   819,   823,   824,   828,   829,   829,   830,   831,   832,
     836,   837,   837,   838,   838,   842,   843,   844,   845,   849,
     856,   857,   857,   858,   859,   860,   860,   861,   862,   863,
     864,   865,   866,   867,   874,   875,   875,   876,   877,   881,
     882,   882,   883,   884,   888,   889,   890,   891,   892,   896,
     900,   904,   905,   906,   906,   910,   911,   911,   912,   913,
     914,   915,   916,   917,   918,   922,   923,   924,   925,   926,
     927,   928,   929,   930,   930,   931,   932,   933,   933,   934,
     935,   936,   937,   938,   939,   943,   944,   945,   946,   950,
     951,   952,   953,   954,   955,   959,   960,   960,   961,   962,
     963,   964,   965,   966,   967,   968,   969,   970,   974,   978,
     979,   979,   980,   981,   982,   983,   987,   991,   992,   993,
     994,   995,   996,   997,   998,   999,  1000,  1004,  1005,  1006,
    1006,  1007,  1011,  1015,  1016,  1020,  1024,  1028,  1032,  1036,
    1043,  1044,  1048,  1049,  1050,  1053,  1053,  1053,  1054,  1054,
    1055,  1055,  1056,  1056,  1057,  1057,  1058,  1059,  1059,  1060,
    1060,  1061,  1062,  1063,  1063,  1064,  1064,  1065,  1065,  1066,
    1066,  1067,  1068,  1069,  1070,  1071,  1072,  1073,  1074,  1075,
    1082,  1083,  1084,  1085,  1086,  1087,  1088,  1089,  1093,  1097,
    1098,  1099,  1103,  1104,  1104,  1105,  1106,  1107,  1108,  1109,
    1110,  1114,  1118,  1119,  1123,  1127,  1131,  1132,  1132,  1133,
    1134,  1135,  1139,  1140,  1144,  1145,  1146
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
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
  "\">>\"", "\"&&\"", "\"||\"", "\"+=\"", "\"-=\"", "\"*=\"", "\"/=\"",
  "\"%=\"", "\"&=\"", "\"^=\"", "\"~=\"", "\"|=\"", "\"(\"", "\")\"",
  "\"[\"", "\"]\"", "\"{\"", "\"}\"", "\",\"", "\":\"", "\";\"", "\"@\"",
  "\"_\"", "\"#\"", "\"$\"", "\"?\"", "\"prefix_op\"", "\"postfix_op\"",
  "\"_>\"", "\"convenience\"", "\"__FILE__\"", "\"__LINE__\"",
  "\"__COLUMN__\"", "\"__FUNCTION__\"", "\"dynamicType\"", "\"Protocol\"",
  "$accept", "program", "statement", "semicolon_opt", "statements",
  "statements_opt", "loop_statement", "for_statement", "for_init_opt",
  "expression_opt", "for_init", "for_in_statement", "while_statement",
  "while_condition", "do_while_statement", "branch_statement",
  "if_statement", "else_clause_opt", "if_condition", "else_clause",
  "switch_statement", "switch_cases_opt", "switch_cases", "switch_case",
  "case_label", "case_item_list", "guard_clause_opt", "default_label",
  "guard_clause", "guard_expression", "labeled_statement",
  "statement_label", "label_name", "control_transfer_statement",
  "break_statement", "label_name_opt", "continue_statement",
  "fallthrough_statement", "return_statement", "generic_parameter_clause",
  "requirement_clause_opt", "generic_parameter_list", "generic_parameter",
  "requirement_clause", "requirement_list", "requirement",
  "conformance_requirement", "same_type_requirement",
  "generic_argument_clause", "generic_argument_list", "generic_argument",
  "declaration", "declarations", "declarations_opt",
  "declaration_specifiers", "declaration_specifiers_opt",
  "declaration_specifier", "code_block", "import_declaration",
  "attributes_opt", "import_kind_opt", "import_kind", "import_path",
  "import_path_identifier", "constant_declaration",
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
  "binary_expressions_opt", "expression_list", "prefix_expression",
  "prefix_operator_opt", "in_out_expression", "binary_expression",
  "binary_expressions", "assignment_operator", "conditional_operator",
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
  "type_inheritance_clause", "type_inheritance_list", 0
};
#endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const unsigned short int yyr1[] =
{
       0,   120,   121,   122,   123,   123,   122,   122,   122,   122,
     122,   124,   125,   125,   126,   126,   126,   126,   127,   128,
     128,   129,   129,   127,   130,   130,   131,   132,   133,   133,
     134,   135,   135,   136,   137,   137,   138,   138,   139,   139,
     140,   141,   141,   142,   143,   143,   143,   143,   144,   145,
     145,   146,   146,   147,   148,   149,   150,   150,   151,   152,
     153,   153,   153,   153,   154,   155,   155,   156,   157,   158,
     159,   160,   160,   161,   161,   162,   162,   162,   163,   164,
     164,   165,   165,   166,   166,   167,   168,   169,   169,   170,
     171,   171,   171,   171,   171,   171,   171,   171,   171,   171,
     171,   171,   171,   171,   172,   173,   173,   174,   175,   175,
     176,   176,   176,   176,   176,   176,   176,   176,   176,   177,
     178,   179,   179,   180,   180,   181,   181,   181,   181,   181,
     181,   181,   182,   182,   183,   183,   184,   185,   185,   186,
     186,   187,   187,   188,   189,   189,   189,   189,   189,   190,
     191,   192,   193,   193,   192,   194,   195,   196,   196,   197,
     198,   199,   199,   198,   200,   201,   202,   203,   203,   202,
     204,   205,   206,   207,   208,   209,   210,   211,   211,   212,
     213,   213,   214,   215,   215,   216,   217,   218,   219,   219,
     220,   220,   221,   221,   222,   222,   223,   224,   224,   225,
     225,   226,   226,   227,   227,   228,   228,   223,   223,   229,
     229,   230,   230,   231,   232,   232,   233,   234,   234,   235,
     236,   236,   237,   238,   238,   239,   240,   240,   241,   242,
     243,   244,   244,   245,   246,   246,   247,   248,   248,   249,
     250,   250,   251,   252,   253,   253,   254,   255,   256,   257,
     258,   259,   260,   261,   262,   262,   263,   263,   263,   263,
     263,   264,   265,   266,   267,   268,   269,   270,   270,   271,
     272,   273,   273,   274,   275,   276,   277,   278,   278,   278,
     279,   280,   281,   281,   281,   282,   283,   284,   285,   285,
     286,   287,   287,   288,   288,   289,   290,   291,   292,   292,
     292,   293,   294,   294,   293,   293,   293,   293,   293,   293,
     295,   296,   297,   297,   298,   299,   299,   300,   300,   301,
     302,   303,   303,   304,   304,   305,   305,   306,   307,   308,
     309,   310,   310,   311,   312,   313,   313,   314,   315,   316,
     316,   316,   316,   316,   317,   318,   318,   319,   319,   320,
     321,   321,   320,   322,   323,   323,   323,   323,   324,   325,
     326,   327,   327,   328,   328,   329,   330,   330,   329,   329,
     329,   329,   329,   329,   329,   331,   331,   331,   331,   331,
     331,   331,   332,   333,   333,   334,   334,   335,   335,   336,
     337,   337,   338,   338,   339,   340,   340,   340,   340,   341,
     341,   341,   342,   343,   344,   345,   346,   346,   347,   347,
     347,   347,   347,   348,   349,   349,   349,   349,   350,   351,
     352,   352,   353,   353,   354,   354,   355,   356,   356,   356,
     356,   356,   356,   356,   356,   356,   356,   357,   357,   358,
     358,   359,   360,   361,   361,   362,   363,   364,   365,   366,
     367,   367,   368,   368,   368,   369,   369,   369,   370,   370,
     370,   370,   370,   370,   370,   370,   370,   370,   370,   370,
     370,   370,   370,   370,   370,   370,   370,   370,   370,   370,
     370,   370,   371,   371,   371,   371,   371,   371,   372,   372,
     373,   373,   373,   373,   373,   373,   373,   373,   374,   375,
     375,   376,   377,   378,   378,   379,   380,   380,   381,   381,
     382,   383,   384,   384,   385,   386,   387,   388,   388,   389,
     389,   390,   391,   391,   392,   393,   393
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const unsigned char yyr2[] =
{
       0,     2,     1,     2,     0,     1,     2,     2,     2,     1,
       2,     2,     0,     1,     1,     1,     1,     1,     7,     0,
       1,     0,     1,     9,     1,     1,     5,     3,     1,     1,
       4,     1,     1,     4,     0,     1,     1,     1,     2,     2,
       5,     0,     1,     2,     2,     2,     2,     2,     3,     2,
       4,     0,     1,     2,     2,     1,     2,     2,     2,     1,
       1,     1,     1,     1,     2,     0,     1,     2,     1,     2,
       4,     0,     1,     1,     3,     1,     3,     3,     2,     1,
       3,     1,     1,     3,     3,     3,     3,     1,     3,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     0,     1,     2,     0,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     3,
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
       3,     3,     0,     0,     2,     0,     1,     1,     3,     2,
       0,     1,     1,     2,     2,     2,     2,     1,     2,     1,
       3,     2,     3,     0,     1,     2,     0,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     0,     1,     2,     3,     0,     1,     1,
       3,     3,     2,     3,     3,     1,     3,     4,     3,     1,
       1,     1,     3,     4,     3,     4,     0,     1,     3,     3,
       4,     4,     2,     4,     1,     1,     1,     1,     2,     3,
       0,     1,     1,     3,     1,     3,     1,     1,     2,     1,
       1,     1,     1,     1,     1,     1,     1,     2,     3,     0,
       1,     1,     3,     3,     4,     3,     3,     4,     2,     2,
       1,     3,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     2,     2,     2,     2,     2,     2,     2,     2,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     2,
       4,     1,     3,     0,     1,     2,     1,     3,     3,     3,
       1,     3,     3,     3,     2,     2,     4,     0,     1,     1,
       3,     1,     3,     3,     2,     1,     3
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
       0,     0,     0,     0,     0,     0,     0
};

/* YYMERGER[RULE-NUM] -- Index of merging function for rule #RULE-NUM.  */
static const unsigned char yymerger[] =
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
       0,     0,     0,     0,     0,     0,     0
};

/* YYDEFACT[S] -- default rule to reduce with in state S when YYTABLE
   doesn't specify something else to do.  Zero means the default is an
   error.  */
static const unsigned short int yydefact[] =
{
     121,    59,     0,     0,    65,    65,     0,    68,   121,   350,
      21,   350,   121,     0,     0,     0,     0,     0,   121,     2,
       4,    14,    15,    16,    17,     4,    31,    32,     9,     0,
       0,     4,    60,    61,    62,    63,     4,    90,   108,    91,
      92,   350,    93,     0,    94,     0,    95,    96,    97,    98,
      99,   177,   100,   101,   102,     0,   103,   282,   283,   284,
     121,   122,     4,   345,     0,   352,   351,   501,   244,   366,
     174,   173,    66,    64,    67,   121,     0,     0,    37,    36,
     311,   350,   350,     0,   350,   310,     0,    20,   108,    24,
       0,   302,   302,   305,   302,   307,     0,   308,   325,   326,
     309,   329,    25,   322,    69,    22,     0,     0,    29,    28,
       0,     0,     0,   353,   333,   331,   487,   486,   484,   485,
     482,   483,     1,    13,    11,     5,     7,     8,    56,    57,
      58,    10,     6,   228,   110,     0,   123,     0,   114,     0,
       0,   111,   112,   113,   115,   116,   117,   118,   272,   109,
       0,   108,   214,   177,   215,     0,   311,   350,   144,   137,
       0,   140,   329,     0,   172,   180,   458,   462,   464,   466,
     467,   469,   471,   472,   473,   475,   477,   479,   481,   460,
     461,   474,   476,   465,   463,   468,   459,   470,   478,   480,
       0,   177,   181,   455,   456,   457,     0,   178,     0,   121,
       0,   337,     3,   363,     0,   359,   350,   344,   345,   346,
     350,   350,   357,   350,   366,     0,   395,   452,   454,   453,
       0,   350,   350,   406,   426,   378,   379,   380,   381,   427,
     368,   376,   377,   369,   370,   399,   400,   401,   371,   373,
     372,   374,   349,   429,   430,   431,   432,   433,   434,   435,
     436,   375,     0,     0,   245,     0,   367,   499,     0,   121,
      34,   313,   312,     0,   121,   327,   492,   493,   491,   490,
     494,   495,   496,   497,     0,   319,     0,   316,   317,   350,
     110,     0,   350,     0,   121,   301,   303,   304,   306,     0,
     350,    41,    27,     0,     0,     0,   335,   330,   332,   249,
     177,   274,   127,   128,   131,   129,   126,   125,   130,     0,
     124,   252,   244,   246,   177,   197,   280,   179,   350,   149,
     107,     0,   270,   350,     0,   350,   139,   175,   488,   489,
       0,    71,    73,    75,     0,     0,   121,   277,   278,   279,
     364,     0,   361,     0,   358,   355,   356,   354,   365,     0,
     350,     0,   350,   418,     0,   424,     0,   421,   422,     0,
     389,     0,   384,   387,     0,   387,   450,     0,   183,   121,
     407,     0,   183,   448,     0,   350,   449,   437,     0,   428,
     525,   524,   121,   275,     0,    87,    89,     0,   119,    30,
       0,    33,    35,   517,   198,   197,     0,     0,   504,   192,
     506,   515,     0,     0,   514,     0,     0,   350,   314,   350,
       0,     0,   328,     0,   229,   323,   347,   348,   350,     0,
       0,    42,    41,   121,   121,   288,     0,     0,   335,   335,
     335,     0,   336,   335,   244,   134,   120,   132,   135,     0,
     244,   190,     0,   192,   194,   199,   136,   121,     0,   138,
     145,     0,   142,   146,   147,   143,     0,   183,   188,     0,
       0,    72,     0,     0,   273,   269,   281,   108,   121,   121,
     121,   121,   362,   360,   402,   404,     0,   396,   398,     0,
     350,   419,   350,   391,   350,   382,   350,   385,   390,   350,
     392,     0,   415,   416,   417,   414,   350,   121,     0,   184,
       0,   412,   183,   183,     0,   366,   442,   445,   443,   446,
       0,   441,   438,     0,   121,   106,     0,    86,     0,   500,
      39,    38,   521,     0,   518,   519,     0,   510,     0,   502,
     193,   505,   121,   522,   523,   512,   511,   513,     0,   318,
     350,    26,   498,   324,   320,     0,    51,    53,    40,    43,
      46,    44,    47,    45,   296,     0,   289,   293,   292,   286,
     285,     0,     0,     0,   334,   338,     0,     0,   121,   251,
       0,   208,     0,   197,   200,   201,   201,   220,   108,     0,
     218,   121,   221,     0,   121,   148,   186,   176,   182,   189,
     187,    78,    79,    81,    82,     0,    70,    74,    76,    77,
     164,   165,     0,     0,   153,     0,     0,     0,     0,   162,
       0,     0,   403,   397,   425,   423,   394,   389,   386,     0,
     393,   451,     0,     0,   408,   405,     0,     0,   409,   444,
     447,   526,   104,   276,    88,   516,     0,   508,   509,   507,
     350,     0,    48,   350,    49,    52,   295,   287,     0,   290,
     294,   339,   340,   341,   121,   248,   133,   108,     0,   244,
       0,     0,   121,   255,   256,   257,   258,   259,   260,   177,
       0,   121,   243,   191,   195,   202,     0,     0,     0,   216,
     219,   121,     0,   121,   121,     0,     0,     0,   155,     0,
       0,   158,   157,   151,     0,   154,   165,   160,   164,   163,
     413,   185,   410,   411,   520,     0,    18,    54,    55,   350,
     298,   300,   299,   297,     0,     0,   150,     0,   267,   177,
     253,   261,     0,     0,     0,   209,   210,   203,   203,   222,
     223,   226,   234,   108,     0,   232,   121,   235,   157,   157,
       0,     0,   168,     0,     0,    80,    85,    83,    84,     0,
     156,     0,    50,   250,     0,   268,   266,     0,   264,   121,
     265,   247,   211,   212,     0,   204,     0,     0,   225,   227,
       0,   230,   233,     0,     0,   166,   169,   159,    23,   262,
     263,     0,   205,   205,   224,   240,   236,   237,   171,   170,
     350,   207,   206,   196,     0,   239,   241,     0,   213,   242,
     238
};

/* YYPDEFGOTO[NTERM-NUM].  */
static const short int yydefgoto[] =
{
      -1,    17,    18,   126,   123,   258,    20,    21,    86,   104,
      87,    22,    23,   107,    24,    25,    26,   391,    77,   392,
      27,   420,   421,   422,   423,   545,   644,   424,   645,   707,
      28,    29,    30,    31,    32,    73,    33,    34,    35,   197,
     460,   331,   332,   461,   591,   592,   593,   594,   256,   384,
     385,    36,   515,   516,   149,   150,   151,   688,    37,    38,
     309,   310,   436,   437,    39,   158,   159,   451,   326,    40,
      41,   160,   338,   603,   468,   469,   690,   691,   339,   608,
     470,   471,   585,   741,   683,   684,    42,    43,    71,   164,
      44,   198,    45,   191,   456,   498,   499,   587,   457,   590,
     458,   531,   443,   444,   396,   576,   676,   764,   791,   727,
     765,   792,    46,   152,   579,   580,   581,   582,   729,   730,
     768,   153,   731,   154,   734,   735,   736,   737,   786,   787,
     795,   796,    47,   253,   314,   672,    48,   300,   655,    49,
     312,   569,   661,   662,   663,   664,   665,   666,   667,   668,
     756,    50,    51,   155,   465,    52,    53,   383,    54,    55,
     200,    56,    57,    58,    59,   555,   556,   557,   649,   558,
     646,   650,   713,   161,   285,    91,    92,    93,    94,   276,
     277,   278,    95,    96,   544,    97,    98,    99,   100,    60,
     297,   115,   298,   431,    61,   432,   433,   162,   207,   102,
      63,    64,    65,   208,   209,   210,   211,   212,   341,   229,
     257,   230,   231,   361,   362,   487,   363,   232,   364,   365,
     233,   234,   235,   236,   237,   238,   369,   370,   371,   496,
     239,   240,   356,   357,   358,   241,   242,   243,   378,   512,
     244,   245,   246,   247,   248,   249,   250,   372,   251,   192,
     193,    66,   195,   386,   286,   266,    69,   267,   397,   398,
     399,   400,   528,   268,   269,   270,   271,   272,   523,   524,
     525,   273,   254,   381
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -534
static const short int yypact[] =
{
    1256,  -534,    54,   106,   123,   182,    78,  -534,   135,  1659,
     113,   -15,   497,   164,   229,   281,   488,   203,   736,  -534,
     189,  -534,  -534,  -534,  -534,   189,  -534,  -534,  -534,   276,
     220,   189,  -534,  -534,  -534,  -534,   189,  -534,  1078,  -534,
    -534,   258,  -534,   286,  -534,  1492,  -534,  -534,  -534,  -534,
    -534,   288,  -534,  -534,  -534,   245,  -534,  -534,  -534,  -534,
     262,  -534,   189,  1708,   265,  -534,  -534,  -534,   283,   319,
    -534,  -534,  -534,  -534,  -534,   840,   368,    78,  -534,  -534,
     -18,   432,   519,    96,  1633,  -534,   301,  -534,   345,  -534,
      91,   305,   314,  -534,   329,  -534,   352,  -534,  -534,  -534,
    -534,   168,  -534,  -534,  -534,  -534,   322,    78,  -534,  -534,
    1800,  1800,  1800,  -534,  -534,   338,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,   433,    78,   788,   441,  -534,   445,
     354,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
     300,   345,  -534,   288,  -534,   444,   235,    63,  -534,   353,
     364,   151,  -534,    96,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
     174,   288,  -534,  -534,  -534,  -534,    54,  -534,   354,   262,
     357,  -534,  -534,   362,    96,  -534,   -15,  -534,  1756,  -534,
     -15,   -15,  -534,   -15,   406,   -27,   128,  -534,  -534,  -534,
     476,    37,     8,    67,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,   718,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,    54,   383,  -534,    96,  -534,   411,   389,   584,
     475,   467,   469,   431,    38,   188,  -534,  -534,  -534,   409,
    -534,  -534,  -534,  -534,   407,   478,   415,  -534,   413,   212,
    -534,   506,   -15,    96,   262,  -534,  -534,  -534,  -534,   522,
     -15,   313,  -534,   427,   429,   437,   420,  -534,  -534,  -534,
     288,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  1541,
    -534,  -534,   283,  -534,   288,    48,  -534,  -534,   615,  -534,
    -534,   221,  -534,   711,   134,   -15,  -534,   285,  -534,  -534,
     354,   501,   430,   442,    78,    96,   944,  -534,  -534,  -534,
    -534,    96,   321,   454,  -534,  -534,  -534,  -534,  -534,   234,
     -15,   257,   -15,  -534,   460,  -534,   447,  -534,   446,   448,
     463,   473,  -534,   471,   477,   483,   486,   436,   465,  1360,
    -534,    98,   465,  -534,    39,   -15,  -534,   479,   490,  -534,
     492,  -534,   175,  -534,   526,   499,   344,    54,  -534,  -534,
      19,  -534,  -534,    54,  -534,   555,   601,   508,  -534,   527,
     514,  -534,    13,   520,  -534,    96,   524,   212,  -534,   716,
     523,    78,   360,    96,  -534,   528,   532,  -534,   827,   525,
     534,  -534,   313,  1048,  1152,   162,   536,   537,   484,   278,
     243,   544,  -534,   678,   283,  -534,  -534,   565,  -534,   548,
     283,  -534,    96,   527,   542,   293,  -534,   194,    54,  -534,
    -534,   550,  -534,  -534,  -534,  -534,    78,   465,   354,    54,
     579,  -534,    54,   109,  -534,  -534,   344,   870,   213,   262,
     255,   262,   554,  -534,  -534,  -534,   556,  -534,  -534,   563,
     -15,  -534,    52,  -534,   -15,  -534,   147,  -534,  -534,   147,
    -534,   650,  -534,  -534,  -534,  -534,   -15,   262,   628,  -534,
     564,  -534,   465,   465,   638,   596,  -534,  -534,  -534,  -534,
     569,  -534,  -534,    54,   175,  -534,   568,  -534,    96,  -534,
    -534,  -534,  -534,   598,  -534,   570,    96,  -534,   364,  -534,
    -534,  -534,    76,  -534,  -534,  -534,   562,  -534,   575,  -534,
     -17,  -534,   625,  -534,  -534,   578,   316,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,   572,  -534,   643,  -534,  -534,
    -534,   590,   592,   594,  -534,  -534,   597,  1541,    99,  -534,
     603,   344,   599,    84,  -534,   605,   605,  -534,  1435,   604,
    -534,   194,  -534,   606,   262,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,   602,  -534,  -534,   -30,  -534,  -534,  -534,  -534,
      78,   270,   655,   612,  -534,   673,   616,   663,   619,  -534,
     682,   631,  -534,  -534,  -534,  -534,  -534,  -534,  -534,   463,
    -534,  -534,   627,    96,  -534,  -534,   703,   709,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,    54,   344,  -534,  -534,
     -12,    78,  -534,   -15,   636,  -534,  -534,  -534,   242,  -534,
    -534,  -534,  -534,  -534,   175,  -534,  -534,   493,   737,   283,
    1492,   641,    99,  -534,  -534,  -534,  -534,  -534,  -534,   288,
     245,   175,  -534,  -534,  -534,  -534,    31,    31,   522,  -534,
    -534,   232,     4,   295,   262,    54,    54,   109,  -534,   741,
      78,  -534,   651,  -534,    78,  -534,  -534,  -534,  -534,  -534,
    -534,   344,  -534,  -534,  -534,   652,  -534,  -534,  -534,   888,
    -534,  -534,  -534,  -534,   647,   254,  -534,   364,   286,   288,
    -534,  -534,   354,   659,   661,  -534,  -534,    33,    33,  -534,
     649,   670,  -534,  1493,   669,  -534,   232,  -534,   651,   651,
     730,   679,  -534,   721,   681,  -534,  -534,  -534,  -534,   686,
    -534,    78,  -534,  -534,   659,  -534,  -534,   354,  -534,   262,
    -534,  -534,  -534,  -534,   364,  -534,   364,   522,  -534,  -534,
     522,  -534,  -534,    78,    78,  -534,  -534,  -534,  -534,  -534,
    -534,    72,   722,   722,  -534,   726,  -534,   699,  -534,  -534,
     -15,  -534,  -534,  -534,   398,  -534,  -534,   522,  -534,  -534,
    -534
};

/* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
    -534,  -534,  -534,   211,    23,   785,   777,  -534,   724,  -252,
    -534,  -534,  -534,   551,  -534,  -534,   421,  -534,  -534,  -534,
     786,   397,  -534,  -534,  -534,   111,  -534,  -534,  -534,  -534,
    -534,  -534,   422,  -534,  -534,   818,  -534,  -534,  -534,  -534,
    -534,   363,  -534,  -534,   139,  -534,  -534,  -534,  -534,   310,
    -534,     5,  -534,  -484,  -534,   -74,  -534,    -5,  -534,    -6,
    -534,  -534,   264,  -534,  -534,    -3,  -534,  -534,   509,    77,
    -533,   177,   515,  -534,   371,   377,  -300,  -534,  -309,  -534,
     378,   384,  -534,  -534,   171,   165,  -534,  -529,  -534,   141,
    -534,  -148,  -521,   197,   115,  -335,  -534,  -534,   405,  -534,
    -133,   423,   297,  -534,  -282,  -534,   302,   153,   103,   210,
    -534,  -534,  -534,  -534,   307,  -534,  -534,  -534,   125,  -534,
    -534,  -534,  -283,  -534,   154,  -534,  -534,  -534,    97,  -534,
    -534,  -534,  -534,  -286,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,   231,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -506,  -534,  -534,  -534,  -534,  -534,  -534,  -474,
     225,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,     7,   326,  -534,  -534,  -534,   481,  -534,
     489,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,    45,  -534,  -534,  -534,     0,   689,  -244,
     200,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,  -534,
    -192,  -534,  -534,  -534,   424,   541,  -534,  -534,   418,  -534,
    -534,  -534,  -534,  -534,  -534,   530,  -534,  -534,  -534,  -534,
    -534,   667,  -534,   439,  -534,  -534,  -534,  -534,  -534,  -534,
    -534,  -534,  -534,  -534,  -534,  -534,  -534,  -333,   117,   -91,
     -31,   -43,   672,   -58,  -156,    22,  -168,   184,  -534,  -534,
     387,  -534,  -534,  -534,  -534,  -534,  -534,  -434,  -534,   294,
    -534,  -534,  -534,   419
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -504
static const short int yytable[] =
{
      62,    76,   194,    88,   324,   321,   415,   316,    79,   101,
     105,   106,   109,    78,   281,   454,    90,   108,    62,   293,
     294,   295,   348,    19,    68,   265,   439,   410,   333,   599,
     632,   103,   213,   445,   725,   658,   762,   504,   503,   659,
     354,  -121,   505,   330,     8,   738,   417,   660,   686,   506,
     349,  -121,   533,  -501,   201,   354,    14,    67,    14,  -311,
    -121,    14,   669,   103,   739,   334,    80,   194,   194,   194,
     366,   350,   260,   687,    81,    62,   507,   320,    88,  -121,
      82,    14,   394,   -21,   101,   -21,    89,  -121,   261,   262,
     368,   275,   394,    16,   670,    16,  -121,    83,    16,    67,
     508,   366,   292,   103,   103,   327,   103,  -383,   263,    70,
      14,   359,    67,   526,   698,     3,   -21,   282,    16,    75,
     394,   263,   588,   283,   501,    14,     1,   696,   394,   658,
     301,   510,   534,   659,  -420,  -503,    14,   726,  -121,   763,
    -321,   660,     2,    15,  -121,   441,   342,    16,   566,   -21,
     -21,     3,   434,    15,   570,   538,   669,   509,   621,   157,
    -315,    89,    16,   315,   275,   367,   440,   626,   627,    85,
     714,  -350,  -350,    16,   -21,   -21,   -21,   213,    75,   103,
    -121,    15,     2,   283,    13,     1,    14,   724,   670,    15,
     -21,     3,   264,   335,   315,   337,  -350,  -350,  -350,   325,
    -254,     2,  -291,   122,    15,   351,   343,   110,    14,   -21,
       3,   -21,  -350,   -21,   554,   111,   325,   112,   438,   -21,
      14,   355,   360,    16,    13,   412,   352,   -21,   -21,   -21,
     -21,  -350,   113,  -350,   336,  -350,   127,   474,   502,     2,
      15,  -350,   131,    13,   475,    16,  -388,   132,     3,  -350,
    -350,  -350,  -350,   748,   328,   329,   401,    16,   395,   109,
     477,   156,   317,  -288,   108,   402,   194,   478,   214,    81,
     290,   319,  -347,   202,   380,    82,  -105,   466,   413,   105,
      15,    13,   411,   472,   114,    14,   403,   710,   641,   711,
     416,   445,    83,   125,   333,  -217,   712,   404,     6,    15,
     405,   215,   216,     9,   574,    11,  -501,    12,   317,   442,
     575,   318,  -311,   629,  -152,   446,   -21,   319,    15,   450,
     449,   447,    16,   130,   448,   455,   217,   218,   219,   464,
     467,    14,   418,  -231,   419,  -321,    62,    15,  -150,   428,
     103,   429,   220,   430,  -335,   103,   643,   536,   283,   280,
     476,   163,   479,   401,   157,   542,  -161,   199,   138,   196,
      15,   221,   402,   222,    85,   223,   689,    15,    16,    62,
    -157,   224,   638,   718,   428,   416,   429,  -335,   430,   225,
     226,   227,   228,   403,   571,   521,   252,   514,   705,   401,
     255,   141,   500,   142,   404,   143,  -167,   405,   402,   259,
      15,   144,   145,   146,   147,   279,   541,   105,   284,   519,
     345,   346,   401,   347,   760,   522,   275,   284,   287,   403,
     288,   402,   291,    62,    62,   546,    72,    72,   401,   289,
     404,   103,   284,   405,   296,    80,   299,   402,   773,   774,
     103,   578,   403,    81,   311,   779,   551,   553,   313,    82,
     315,   586,   577,   404,   322,   323,   405,   336,   403,   217,
     218,   219,   602,   605,   607,   610,    83,   284,   637,   404,
     583,   340,   405,   561,   562,   563,   438,   255,   565,   353,
     614,   595,   355,   382,   616,   598,   617,   785,   387,   619,
     388,   623,   492,   493,   494,   495,   622,   280,   390,   283,
    -121,   283,   393,  -271,     2,    14,   138,   406,   140,  -321,
     283,   407,   408,     3,   785,   409,   428,  -335,   429,   514,
     430,   722,    80,   319,   194,   414,   395,   425,   157,   426,
      81,   459,   462,  -350,  -350,   380,    82,   427,    85,   141,
     105,   142,    16,   143,   481,   463,    13,   483,   482,   144,
     145,   146,   147,    83,   116,   117,   118,   473,  -350,  -350,
    -350,   754,   657,   480,   119,   701,   484,   442,   120,   121,
      14,   757,   485,   486,  -350,   578,   488,   497,   682,  -437,
     428,  -335,   429,   715,   430,   489,   577,  -121,   491,   758,
     223,     2,    14,  -350,   513,  -350,  -321,  -350,   517,   394,
       3,   518,    15,  -350,   527,   529,   148,    16,   782,   530,
     783,  -350,  -350,  -350,  -350,   157,   532,   194,    80,   535,
    -350,  -350,   401,   537,   157,    85,    81,   540,   547,    16,
     401,   402,    82,    13,   290,   548,   706,   559,   560,   402,
     105,   564,   567,   708,   573,  -350,  -350,  -350,   568,    83,
     584,   596,   403,   366,   624,   612,   657,    14,   522,   514,
     403,  -350,   613,   404,   628,   625,   405,   255,   630,   633,
     635,   404,   636,   647,   405,   733,   514,   740,   743,   640,
    -350,   642,  -350,   648,  -350,   750,   732,   651,    14,    15,
    -350,   652,  -321,   401,    16,   653,   673,   654,  -350,  -350,
    -350,  -350,   402,   671,   685,   679,   681,   595,   746,   747,
     692,   157,   675,   693,    80,   694,   546,   695,   696,    80,
     697,    85,    81,   403,   698,    16,   700,    81,    82,   702,
     733,   103,   699,    82,   404,   703,   -12,   405,   709,     1,
     716,   732,   720,     2,   749,    83,   778,   689,   753,   751,
      83,   767,     3,   781,     4,   -12,     5,   -12,     6,   759,
       7,     8,   761,     9,    10,    11,   264,    12,   788,   789,
     771,   738,  -350,  -350,   428,  -335,   429,  -335,   430,  -335,
     775,   739,   776,   777,    14,    13,   373,   790,  -321,    14,
     798,   794,   302,  -321,   303,   374,   304,  -350,  -350,  -350,
     305,   797,   306,   124,   307,   308,   128,   157,   274,    14,
     389,   520,   157,  -350,   221,   129,   375,    85,  -349,   549,
     752,    16,    85,    74,   745,   597,    16,   376,   634,   190,
      80,   656,  -350,   452,  -350,   717,  -350,   -12,    81,   453,
     606,    15,  -350,     1,    82,   604,    16,     2,   742,   611,
    -350,  -350,  -350,  -350,   609,   744,     3,   719,     4,   755,
       5,    83,     6,   589,     7,     8,   572,     9,    10,    11,
     674,    12,   780,   133,   134,   135,  -350,  -350,   677,   136,
    -271,   766,   137,   138,   139,   140,   793,   728,   680,    13,
     772,    80,   784,   721,   800,   723,   543,   344,   539,    81,
      14,  -350,  -350,  -350,  -321,    82,   490,   620,   511,   377,
     618,   799,   600,    14,   379,   769,   141,  -350,   142,   639,
     143,   615,    83,   157,     0,   601,   144,   145,   146,   147,
     704,     0,   631,    85,     0,     0,  -350,    16,  -350,     0,
    -350,   -12,     0,     0,     0,    15,  -350,     1,     0,     0,
      16,     2,     0,     0,  -350,  -350,  -350,  -350,     0,     0,
       3,    14,     4,     0,     5,  -321,     6,     0,     7,     8,
       0,     9,    10,    11,     0,    12,     0,     0,     0,     0,
    -350,  -350,     0,   148,   157,     0,     0,     0,     0,     0,
       0,     0,     0,    13,    85,     0,     0,     0,    16,     0,
       0,     0,     0,     0,     0,  -350,  -350,  -350,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    14,     0,     0,
       0,  -350,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -350,     0,  -350,     0,  -350,   -12,     0,     0,     0,    15,
    -350,     1,     0,     0,    16,     2,     0,     0,  -350,  -350,
    -350,  -350,     0,     0,     3,     0,     4,     0,     5,     0,
       6,     0,     7,     8,     0,     9,    10,    11,     0,    12,
       0,   133,   134,   135,  -350,  -350,     0,   136,  -271,     0,
     137,   138,   139,   140,     0,     0,     0,    13,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  -350,
    -350,  -350,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    14,     0,     0,   141,  -350,   142,     0,   143,     0,
       0,     0,     0,     0,   144,   145,   146,   147,     0,     0,
       0,     0,     0,     0,  -350,     0,  -350,     0,  -350,     0,
       0,     0,   550,    15,  -350,     1,     0,     0,    16,     2,
       0,     0,  -350,  -350,  -350,  -350,     0,     0,     3,     0,
       4,     0,     5,     0,     6,     0,     7,     8,     0,     9,
      10,    11,     0,    12,     0,     0,     0,     0,  -350,  -350,
       0,   148,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    13,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,  -350,  -350,  -350,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    14,     0,     0,     0,  -350,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -350,     0,
    -350,     0,  -350,     0,     0,     0,   552,    15,  -350,     1,
       0,     0,    16,     2,     0,     0,  -350,  -350,  -350,  -350,
       0,     0,     3,     0,     4,     0,     5,     0,     6,     0,
       7,     8,     0,     9,    10,    11,     0,    12,     0,     0,
       0,     0,  -350,  -350,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    13,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,  -350,  -350,  -350,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    14,
       0,     0,     0,  -350,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,  -350,     0,  -350,     0,  -350,     0,     0,     0,
       0,    15,  -350,     1,     0,     0,    16,     2,     0,     0,
    -350,  -350,  -350,  -350,     0,     0,     3,     0,     4,     0,
       5,     0,     6,     0,     7,     8,     0,     9,    10,    11,
       0,    12,     0,     0,     0,     0,  -350,  -350,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    13,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,  -350,  -350,  -350,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    14,     0,     0,     0,  -350,   133,   134,
     135,     0,     0,     0,   136,  -271,     0,   137,   138,   139,
     140,     0,     0,     0,   678,     0,  -350,     0,  -350,     0,
    -350,     0,     0,     0,     0,    15,  -350,     0,     0,     0,
      16,     0,     0,     0,  -350,  -350,  -350,  -350,     0,     0,
       0,   141,     0,   142,     0,   143,     0,     0,     0,     0,
       0,   144,   145,   146,   147,   165,   133,   134,   135,     0,
       0,     0,   136,  -271,     0,   137,   138,   139,   140,     0,
       0,     0,   770,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   141,
       0,   142,     0,   143,   435,     0,     0,     0,   148,   144,
     145,   146,   147,     0,     0,     0,   166,     0,   167,   168,
     169,   170,   171,   172,   173,   174,   175,   176,   177,   178,
     179,   180,     0,     0,     0,     0,     0,   181,   182,   183,
     184,   185,   186,   187,     0,   188,   189,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    16,   190,     0,   166,   148,   167,   168,   169,
     170,   171,   172,   173,   174,   175,   176,   177,   178,   179,
     180,     0,     0,     0,     0,     0,   181,   182,   183,   184,
     185,   186,   187,     0,   188,   189,    80,  -121,     0,     0,
       0,     0,     0,     0,    81,     0,  -121,     0,     0,     0,
      82,    16,   190,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    80,  -121,     0,     0,     0,    83,     0,     0,
      81,     0,  -121,     0,     0,     0,    82,     0,     0,  -121,
       0,  -121,     0,  -121,     0,     0,     0,     0,     0,  -121,
    -121,  -121,  -121,    83,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,  -121,    14,  -121,     0,  -121,
    -321,     0,     0,     0,     0,  -121,  -121,  -121,  -121,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   157,
    -315,     0,    14,     0,     0,     0,  -321,   -19,    15,    85,
     203,     0,   204,    16,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    84,     0,     0,     0,     0,
       0,     0,     0,   -19,    15,    85,     0,     0,     0,    16,
       0,     0,   166,   205,   167,   168,   169,   170,   171,   172,
     173,   174,   175,   176,   177,   178,   179,   180,   203,     0,
     204,     0,     0,   181,   182,   183,   184,   185,   186,   187,
       0,   188,   189,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   206,     0,     0,
     166,   205,   167,   168,   169,   170,   171,   172,   173,   174,
     175,   176,   177,   178,   179,   180,     0,     0,     0,     0,
       0,   181,   182,   183,   184,   185,   186,   187,     0,   188,
     189,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   166,   206,   167,   168,   169,   170,
     171,   172,   173,   174,   175,   176,   177,   178,   179,   180,
       0,     0,     0,     0,     0,   181,   182,   183,   184,   185,
     186,   187,     0,   188,   189,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      16,   190
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
     144,   172,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   194,     0,     0,     0,   328,     0,     0,     0,    80,
       0,     0,     0,     0,     0,     0,   122,     0,     0,     0,
     146,     0,     0,     0,     0,     0,     0,     0,     0,   332,
       0,     0,   174,   346,     0,     0,     0,   352,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    20,     0,     0,     0,
     334,     0,     0,     0,     0,     0,     4,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     8,     0,
     124,     0,     0,     0,     0,     0,     0,     0,     0,    22,
      24,     0,     0,     0,     0,     0,     0,     0,     0,   126,
       0,     0,     0,   148,     0,   150,     0,     0,     0,   128,
       0,     0,     0,     0,    26,    28,    30,     0,     0,     0,
       0,     0,     0,     0,     0,     6,    32,     0,     0,     0,
      34,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   140,     0,     0,     0,    36,
       0,    38,     0,    40,     0,     0,     0,     0,     0,    42,
       0,     0,     0,    44,     0,     0,   142,    46,    48,    50,
      52,     0,     0,     0,   212,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    59,     0,   262,     0,   176,     0,     0,     0,     0,
     114,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   178,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   118,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    61,     0,     0,   120,   288,
       0,   291,     0,   294,   297,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    63,     0,     0,     0,     0,     0,
       0,     0,   214,     0,    65,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   276,     0,   279,   282,   285,     0,
       0,     0,     0,   216,     0,     0,     0,     0,     0,   221,
      75,     0,     0,     0,     0,     0,     0,     0,   223,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   108,     0,
       0,     0,     0,     0,     0,     0,     0,   110,     0,   225,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     227,     0,   112,     0,   116,    82,     0,   242,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   244,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   138,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   164,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   168,
      54,   170,     0,     0,     0,     0,     0,   180,     0,    84,
       0,     0,     0,     0,     0,     0,   182,   185,   188,     0,
     191,     0,    90,     0,     0,     0,     0,     0,    86,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    88,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   232,
     264,   267,   270,     0,   273,     0,     0,   166,     0,     0,
       0,     0,     0,     0,     0,     0,    92,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    94,     0,     0,   196,     0,
       0,     0,   320,     0,   246,    96,     0,     0,     0,     0,
     336,   322,     0,     0,     0,     0,     0,     0,     0,   338,
       0,     0,   318,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   324,     0,     0,     0,     0,     0,     0,     0,
     340,     0,     0,   326,     0,     0,     0,   330,     0,     0,
       0,   342,     0,     0,   344,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   198,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   348,     0,     0,     0,     0,     0,     0,     0,
       0,   200,     0,     0,   204,     0,     0,     0,     0,   234,
       0,   202,     0,   350,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    56,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   300,   303,   306,   309,   312,   315,
       0,     0,     0,     0,     0,     0,   152,     0,   206,     0,
       0,     0,     0,   236,     0,   154,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   208,     0,     0,
       0,     0,   238,     0,   156,     0,   158,   210,   160,     0,
       0,     0,   240,     0,     0,     0,     0,   162,     0,     0,
     248,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    77,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   354,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   250,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   252,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   254,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   218,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   356,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   358,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   360,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   256,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   259,     0,     0,     0,     0,
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
       0,     0,     0,   229,     0,     0,     0,     0,     0,     0,
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
       0,     0,     0,     0,     0,     0,    98,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     100,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    10,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    12,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     102,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   104,
       0,     0,     0,     0,     0,     0,    14,     0,     0,   106,
      67,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    16,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    18,     0,     0,     0,     0,
       0,     0,     0,    69,     0,     0,     0,     0,     0,     0,
       0,    71,     0,     0,     0,    73,     0,     0,   130,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   132,     0,     0,     0,     0,     0,     0,     0,   134,
       0,     0,     0,   136,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0
};

/* YYCONFL[I] -- lists of conflicting rule numbers, each terminated by
   0, pointed into by YYCONFLP.  */
static const short int yyconfl[] =
{
       0,   121,   350,     0,    65,     0,    65,     0,   350,     0,
     350,     0,   121,     0,   350,     0,   350,     0,   350,     0,
     350,     0,   350,     0,   350,     0,   350,     0,   350,     0,
     350,     0,    21,     0,   350,     0,   350,     0,   350,     0,
     350,     0,   350,     0,    21,     0,   350,     0,   350,     0,
     350,     0,   350,     0,   350,     0,   121,   350,     0,   350,
       0,   350,     0,   350,     0,   350,     0,   345,     0,   345,
       0,   345,     0,   345,     0,   366,     0,   121,   350,     0,
     501,     0,   350,     0,   350,     0,   350,     0,   350,     0,
     350,     0,   350,     0,   350,     0,   350,     0,   350,     0,
     121,     0,   350,     0,   350,     0,   350,     0,   302,     0,
     302,     0,   302,     0,   329,     0,   331,     0,   501,     0,
     311,     0,   350,     0,   350,     0,   350,     0,   350,     0,
     345,     0,   345,     0,   345,     0,   345,     0,   366,     0,
     395,     0,   395,     0,   350,     0,   406,     0,   406,     0,
     406,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     439,     0,   349,     0,   499,     0,   350,     0,   313,     0,
     312,     0,   197,     0,   121,     0,   327,     0,   327,     0,
     490,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   197,     0,   350,     0,   350,     0,
     350,     0,   350,     0,   350,     0,   350,     0,   350,     0,
     350,     0,   141,     0,   175,     0,   175,     0,   121,   350,
       0,   361,     0,   361,     0,   361,     0,   361,     0,   121,
     350,     0,   440,     0,   350,     0,   350,     0,   350,     0,
     350,     0,   328,     0,   328,     0,   323,     0,   350,     0,
     350,     0,   350,     0,   350,     0,   121,   350,     0,   121,
     350,     0,   291,     0,   342,   343,     0,   342,   343,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   342,   343,     0,   342,   343,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   132,     0,
     362,     0,   362,     0,   362,     0,   362,     0,   350,     0,
     366,     0,   197,     0,   121,     0,   511,     0,   511,     0,
     511,     0,   511,     0,   511,     0,   350,     0,   498,     0,
     498,     0,   197,     0,   350,     0,   350,     0,   350,     0,
     350,     0
};

static const short int yycheck[] =
{
       0,     6,    45,     9,   160,   153,   289,   140,     8,     9,
      10,    11,    12,     8,    88,   324,     9,    12,    18,   110,
     111,   112,   214,     0,     2,    83,   312,   279,   196,   463,
     514,     9,    63,   315,     3,   568,     3,   372,   371,   568,
       3,     3,     3,   191,    25,    41,   290,   568,    78,    10,
      77,     3,    39,    71,    60,     3,    73,     3,    73,    77,
      12,    73,   568,    41,    60,   198,     3,   110,   111,   112,
       3,    98,    77,   103,    11,    75,    37,   151,    84,     3,
      17,    73,    44,   100,    84,    97,     9,     3,    81,    82,
     223,    84,    44,   110,   568,   110,    12,    34,   110,     3,
      61,     3,   107,    81,    82,   163,    84,    99,    12,     3,
      73,   103,     3,   395,    42,    16,     3,    26,   110,   100,
      44,    12,   457,    32,    26,    73,     3,    55,    44,   662,
     135,   375,   119,   662,    97,    97,    73,   106,     3,   106,
      77,   662,     7,   105,    96,    97,   204,   110,   434,    36,
      37,    16,   300,   105,   440,   407,   662,   118,   491,    96,
      97,    84,   110,    96,   157,    98,   314,   502,   503,   106,
     654,    36,    37,   110,    61,    62,    63,   208,   100,   157,
      96,   105,     7,    32,    49,     3,    73,   671,   662,   105,
      77,    16,    96,   199,    96,   200,    61,    62,    63,    65,
     101,     7,    40,     0,   105,    77,   206,    43,    73,    96,
      16,    98,    77,   100,    52,    51,    65,    53,   309,   106,
      73,   221,   222,   110,    49,   283,    98,   114,   115,   116,
     117,    96,     3,    98,   100,   100,    25,     3,   371,     7,
     105,   106,    31,    49,    10,   110,    99,    36,    16,   114,
     115,   116,   117,   687,    80,    81,    68,   110,   264,   259,
       3,     3,     8,   101,   259,    77,   309,    10,     3,    11,
     102,    17,   104,    62,   252,    17,   101,   335,   284,   279,
     105,    49,   282,   341,     3,    73,    98,    45,   540,    47,
     290,   573,    34,   104,   462,   101,    54,   109,    22,   105,
     112,    36,    37,    27,    11,    29,    71,    31,     8,   315,
      17,    11,    77,   505,   101,   318,   104,    17,   105,   324,
     323,   100,   110,   103,   103,   325,    61,    62,    63,   334,
     336,    73,    19,   101,    21,    77,   336,   105,   103,    96,
     318,    98,    77,   100,   101,   323,    30,   405,    32,     4,
     350,    65,   352,    68,    96,   413,   101,   112,    13,    71,
     105,    96,    77,    98,   106,   100,    96,   105,   110,   369,
     100,   106,   528,   659,    96,   375,    98,    99,   100,   114,
     115,   116,   117,    98,   442,   390,   103,   382,   640,    68,
      71,    46,   369,    48,   109,    50,   101,   112,    77,    31,
     105,    56,    57,    58,    59,   104,   411,   407,   103,   387,
     210,   211,    68,   213,   723,   393,   409,   103,    92,    98,
      94,    77,   100,   423,   424,   418,     4,     5,    68,    77,
     109,   409,   103,   112,    96,     3,     3,    77,   738,   739,
     418,   447,    98,    11,     3,   754,   423,   424,     3,    17,
      96,   456,   447,   109,    10,   102,   112,   100,    98,    61,
      62,    63,   468,   469,   470,   471,    34,   103,   526,   109,
     448,   109,   112,   428,   429,   430,   567,    71,   433,     3,
     480,   459,   482,   100,   484,   463,   486,   770,    77,   489,
     101,   497,    56,    57,    58,    59,   496,     4,    23,    32,
       3,    32,    71,    10,     7,    73,    13,    98,    15,    77,
      32,   104,    97,    16,   797,   102,    96,    97,    98,   514,
     100,   669,     3,    17,   567,     3,   532,   100,    96,   100,
      11,    30,   102,    36,    37,   513,    17,   100,   106,    46,
     540,    48,   110,    50,    97,   103,    49,    99,   102,    56,
      57,    58,    59,    34,    66,    67,    68,   103,    61,    62,
      63,   717,   568,   103,    76,   623,   103,   573,    80,    81,
      73,   719,    99,   102,    77,   581,    99,   112,   584,   100,
      96,    97,    98,   657,   100,   102,   581,     3,   102,   722,
     100,     7,    73,    96,   102,    98,    77,   100,    72,    44,
      16,   102,   105,   106,     3,    97,   113,   110,   764,    82,
     766,   114,   115,   116,   117,    96,   102,   660,     3,    99,
      36,    37,    68,    99,    96,   106,    11,   104,   103,   110,
      68,    77,    17,    49,   102,   101,   641,   101,   101,    77,
     640,    97,    77,   643,   102,    61,    62,    63,   100,    34,
     100,    72,    98,     3,    26,    99,   662,    73,   636,   654,
      98,    77,    99,   109,    26,   101,   112,    71,    99,   101,
      72,   109,   102,   101,   112,   681,   671,   683,   684,   104,
      96,   103,    98,    40,   100,   690,   681,    97,    73,   105,
     106,    99,    77,    68,   110,   101,    97,   100,   114,   115,
     116,   117,    77,   100,   102,   101,   100,   685,   686,   687,
      55,    96,   107,   101,     3,    42,   709,   101,    55,     3,
     101,   106,    11,    98,    42,   110,    99,    11,    17,    26,
     736,   709,   101,    17,   109,    26,     0,   112,   102,     3,
       3,   736,   101,     7,     3,    34,   751,    96,   101,    97,
      34,   102,    16,   759,    18,    19,    20,    21,    22,   100,
      24,    25,   101,    27,    28,    29,    96,    31,   773,   774,
     101,    41,    36,    37,    96,    97,    98,    99,   100,   101,
     101,    60,   101,    97,    73,    49,    68,    65,    77,    73,
     790,    65,     4,    77,     6,    77,     8,    61,    62,    63,
      12,   102,    14,    18,    16,    17,    29,    96,    84,    73,
     259,   390,    96,    77,    96,    29,    98,   106,   100,   422,
     709,   110,   106,     5,   685,   462,   110,   109,   518,   111,
       3,   567,    96,   324,    98,   658,   100,   101,    11,   324,
     469,   105,   106,     3,    17,   468,   110,     7,   683,   471,
     114,   115,   116,   117,   470,   684,    16,   660,    18,   718,
      20,    34,    22,   458,    24,    25,   443,    27,    28,    29,
     573,    31,   757,     3,     4,     5,    36,    37,   576,     9,
      10,   728,    12,    13,    14,    15,   783,   677,   581,    49,
     736,     3,   767,   662,   797,   670,   415,   208,   409,    11,
      73,    61,    62,    63,    77,    17,   365,   489,   378,   242,
     486,   794,    42,    73,   242,   731,    46,    77,    48,   532,
      50,   482,    34,    96,    -1,    55,    56,    57,    58,    59,
     636,    -1,   513,   106,    -1,    -1,    96,   110,    98,    -1,
     100,   101,    -1,    -1,    -1,   105,   106,     3,    -1,    -1,
     110,     7,    -1,    -1,   114,   115,   116,   117,    -1,    -1,
      16,    73,    18,    -1,    20,    77,    22,    -1,    24,    25,
      -1,    27,    28,    29,    -1,    31,    -1,    -1,    -1,    -1,
      36,    37,    -1,   113,    96,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    49,   106,    -1,    -1,    -1,   110,    -1,
      -1,    -1,    -1,    -1,    -1,    61,    62,    63,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,    -1,    -1,
      -1,    77,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      96,    -1,    98,    -1,   100,   101,    -1,    -1,    -1,   105,
     106,     3,    -1,    -1,   110,     7,    -1,    -1,   114,   115,
     116,   117,    -1,    -1,    16,    -1,    18,    -1,    20,    -1,
      22,    -1,    24,    25,    -1,    27,    28,    29,    -1,    31,
      -1,     3,     4,     5,    36,    37,    -1,     9,    10,    -1,
      12,    13,    14,    15,    -1,    -1,    -1,    49,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,
      62,    63,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    73,    -1,    -1,    46,    77,    48,    -1,    50,    -1,
      -1,    -1,    -1,    -1,    56,    57,    58,    59,    -1,    -1,
      -1,    -1,    -1,    -1,    96,    -1,    98,    -1,   100,    -1,
      -1,    -1,   104,   105,   106,     3,    -1,    -1,   110,     7,
      -1,    -1,   114,   115,   116,   117,    -1,    -1,    16,    -1,
      18,    -1,    20,    -1,    22,    -1,    24,    25,    -1,    27,
      28,    29,    -1,    31,    -1,    -1,    -1,    -1,    36,    37,
      -1,   113,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    61,    62,    63,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    73,    -1,    -1,    -1,    77,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,    -1,
      98,    -1,   100,    -1,    -1,    -1,   104,   105,   106,     3,
      -1,    -1,   110,     7,    -1,    -1,   114,   115,   116,   117,
      -1,    -1,    16,    -1,    18,    -1,    20,    -1,    22,    -1,
      24,    25,    -1,    27,    28,    29,    -1,    31,    -1,    -1,
      -1,    -1,    36,    37,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    49,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,    62,    63,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,
      -1,    -1,    -1,    77,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    96,    -1,    98,    -1,   100,    -1,    -1,    -1,
      -1,   105,   106,     3,    -1,    -1,   110,     7,    -1,    -1,
     114,   115,   116,   117,    -1,    -1,    16,    -1,    18,    -1,
      20,    -1,    22,    -1,    24,    25,    -1,    27,    28,    29,
      -1,    31,    -1,    -1,    -1,    -1,    36,    37,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    61,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    73,    -1,    -1,    -1,    77,     3,     4,
       5,    -1,    -1,    -1,     9,    10,    -1,    12,    13,    14,
      15,    -1,    -1,    -1,    19,    -1,    96,    -1,    98,    -1,
     100,    -1,    -1,    -1,    -1,   105,   106,    -1,    -1,    -1,
     110,    -1,    -1,    -1,   114,   115,   116,   117,    -1,    -1,
      -1,    46,    -1,    48,    -1,    50,    -1,    -1,    -1,    -1,
      -1,    56,    57,    58,    59,     3,     3,     4,     5,    -1,
      -1,    -1,     9,    10,    -1,    12,    13,    14,    15,    -1,
      -1,    -1,    19,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,
      -1,    48,    -1,    50,     3,    -1,    -1,    -1,   113,    56,
      57,    58,    59,    -1,    -1,    -1,    64,    -1,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,
      88,    89,    90,    91,    -1,    93,    94,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   110,   111,    -1,    64,   113,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,
      89,    90,    91,    -1,    93,    94,     3,     4,    -1,    -1,
      -1,    -1,    -1,    -1,    11,    -1,    13,    -1,    -1,    -1,
      17,   110,   111,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     3,     4,    -1,    -1,    -1,    34,    -1,    -1,
      11,    -1,    13,    -1,    -1,    -1,    17,    -1,    -1,    46,
      -1,    48,    -1,    50,    -1,    -1,    -1,    -1,    -1,    56,
      57,    58,    59,    34,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    46,    73,    48,    -1,    50,
      77,    -1,    -1,    -1,    -1,    56,    57,    58,    59,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,
      97,    -1,    73,    -1,    -1,    -1,    77,   104,   105,   106,
      32,    -1,    34,   110,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    96,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   104,   105,   106,    -1,    -1,    -1,   110,
      -1,    -1,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    32,    -1,
      34,    -1,    -1,    85,    86,    87,    88,    89,    90,    91,
      -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   109,    -1,    -1,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    90,    91,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    64,   109,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      -1,    -1,    -1,    -1,    -1,    85,    86,    87,    88,    89,
      90,    91,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     110,   111
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const unsigned short int yystos[] =
{
       0,     3,     7,    16,    18,    20,    22,    24,    25,    27,
      28,    29,    31,    49,    73,   105,   110,   121,   122,   124,
     126,   127,   131,   132,   134,   135,   136,   140,   150,   151,
     152,   153,   154,   156,   157,   158,   171,   178,   179,   184,
     189,   190,   206,   207,   210,   212,   232,   252,   256,   259,
     271,   272,   275,   276,   278,   279,   281,   282,   283,   284,
     309,   314,   317,   320,   321,   322,   371,     3,   375,   376,
       3,   208,   152,   155,   155,   100,   177,   138,   171,   317,
       3,    11,    17,    34,    96,   106,   128,   130,   179,   189,
     293,   295,   296,   297,   298,   302,   303,   305,   306,   307,
     308,   317,   319,   375,   129,   317,   317,   133,   171,   317,
      43,    51,    53,     3,     3,   311,    66,    67,    68,    76,
      80,    81,     0,   124,   125,   104,   123,   123,   126,   140,
     103,   123,   123,     3,     4,     5,     9,    12,    13,    14,
      15,    46,    48,    50,    56,    57,    58,    59,   113,   174,
     175,   176,   233,   241,   243,   273,     3,    96,   185,   186,
     191,   293,   317,    65,   209,     3,    64,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    85,    86,    87,    88,    89,    90,    91,    93,    94,
     111,   213,   369,   370,   371,   372,    71,   159,   211,   112,
     280,   179,   123,    32,    34,    65,   109,   318,   323,   324,
     325,   326,   327,   370,     3,    36,    37,    61,    62,    63,
      77,    96,    98,   100,   106,   114,   115,   116,   117,   329,
     331,   332,   337,   340,   341,   342,   343,   344,   345,   350,
     351,   355,   356,   357,   360,   361,   362,   363,   364,   365,
     366,   368,   103,   253,   392,    71,   168,   330,   125,    31,
     177,   293,   293,    12,    96,   373,   375,   377,   383,   384,
     385,   386,   387,   391,   128,   293,   299,   300,   301,   104,
       4,   175,    26,    32,   103,   294,   374,   294,   294,    77,
     102,   100,   177,   369,   369,   369,    96,   310,   312,     3,
     257,   177,     4,     6,     8,    12,    14,    16,    17,   180,
     181,     3,   260,     3,   254,    96,   220,     8,    11,    17,
     175,   211,    10,   102,   374,    65,   188,   373,    80,    81,
     211,   161,   162,   376,   220,   179,   100,   177,   192,   198,
     109,   328,   373,   317,   318,   320,   320,   320,   330,    77,
      98,    77,    98,     3,     3,   317,   352,   353,   354,   103,
     317,   333,   334,   336,   338,   339,     3,    98,   220,   346,
     347,   348,   367,    68,    77,    98,   109,   351,   358,   372,
     375,   393,   100,   277,   169,   170,   373,    77,   101,   133,
      23,   137,   139,    71,    44,   179,   224,   378,   379,   380,
     381,    68,    77,    98,   109,   112,    98,   104,    97,   102,
     129,   317,   373,   179,     3,   242,   317,   319,    19,    21,
     141,   142,   143,   144,   147,   100,   100,   100,    96,    98,
     100,   313,   315,   316,   211,     3,   182,   183,   369,   253,
     211,    97,   179,   222,   223,   224,   185,   100,   103,   185,
     177,   187,   188,   192,   198,   317,   214,   218,   220,    30,
     160,   163,   102,   103,   177,   274,   373,   179,   194,   195,
     200,   201,   373,   103,     3,    10,   317,     3,    10,   317,
     103,    97,   102,    99,   103,    99,   102,   335,    99,   102,
     335,   102,    56,    57,    58,    59,   349,   112,   215,   216,
     124,    26,   220,   367,   215,     3,    10,    37,    61,   118,
     319,   345,   359,   102,   171,   172,   173,    72,   102,   375,
     136,   177,   375,   388,   389,   390,   224,     3,   382,    97,
      82,   221,   102,    39,   119,    99,   373,    99,   129,   300,
     104,   177,   373,   298,   304,   145,   293,   103,   101,   141,
     104,   124,   104,   124,    52,   285,   286,   287,   289,   101,
     101,   313,   313,   313,    97,   313,   253,    77,   100,   261,
     253,   373,   221,   102,    11,    17,   225,   171,   179,   234,
     235,   236,   237,   375,   100,   202,   177,   217,   215,   218,
     219,   164,   165,   166,   167,   375,    72,   161,   375,   387,
      42,    55,   179,   193,   195,   179,   194,   179,   199,   201,
     179,   200,    99,    99,   317,   353,   317,   317,   334,   317,
     338,   367,   317,   179,    26,   101,   215,   215,    26,   330,
      99,   393,   173,   101,   169,    72,   102,   373,   374,   380,
     104,   129,   103,    30,   146,   148,   290,   101,    40,   288,
     291,    97,    99,   101,   100,   258,   182,   179,   190,   207,
     212,   262,   263,   264,   265,   266,   267,   268,   269,   272,
     279,   100,   255,    97,   222,   107,   226,   226,    19,   101,
     234,   100,   179,   204,   205,   102,    78,   103,   177,    96,
     196,   197,    55,   101,    42,   101,    55,   101,    42,   101,
      99,   373,    26,    26,   389,   129,   177,   149,   317,   102,
      45,    47,    54,   292,   173,   175,     3,   191,   253,   213,
     101,   262,   211,   280,   173,     3,   106,   229,   229,   238,
     239,   242,   171,   179,   244,   245,   246,   247,    41,    60,
     179,   203,   205,   179,   204,   164,   375,   375,   387,     3,
     177,    97,   145,   101,   374,   209,   270,   211,   220,   100,
     198,   101,     3,   106,   227,   230,   227,   102,   240,   377,
      19,   101,   244,   196,   196,   101,   101,    97,   177,   198,
     214,   179,   374,   374,   238,   242,   248,   249,   177,   177,
      65,   228,   231,   228,    65,   250,   251,   102,   317,   368,
     248
};


/* Prevent warning if -Wmissing-prototypes.  */
int yyparse (void);

/* Error token number */
#define YYTERROR 1

/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */


#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N) ((void) 0)
#endif


#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */
#define YYLEX yylex ()

YYSTYPE yylval;

YYLTYPE yylloc;

int yynerrs;
int yychar;

static const int YYEOF = 0;
static const int YYEMPTY = -2;

typedef enum { yyok, yyaccept, yyabort, yyerr } YYRESULTTAG;

#define YYCHK(YYE)							     \
   do { YYRESULTTAG yyflag = YYE; if (yyflag != yyok) return yyflag; }	     \
   while (YYID (0))

#if YYDEBUG

# ifndef YYFPRINTF
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			    \
do {									    \
  if (yydebug)								    \
    {									    \
      YYFPRINTF (stderr, "%s ", Title);					    \
      yy_symbol_print (stderr, Type,					    \
		       Value);  \
      YYFPRINTF (stderr, "\n");						    \
    }									    \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;

#else /* !YYDEBUG */

# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)

#endif /* !YYDEBUG */

/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
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
# if (! defined __cplusplus \
      || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL))
#  define YYSTACKEXPANDABLE 1
# else
#  define YYSTACKEXPANDABLE 0
# endif
#endif

#if YYSTACKEXPANDABLE
# define YY_RESERVE_GLRSTACK(Yystack)			\
  do {							\
    if (Yystack->yyspaceLeft < YYHEADROOM)		\
      yyexpandGLRStack (Yystack);			\
  } while (YYID (0))
#else
# define YY_RESERVE_GLRSTACK(Yystack)			\
  do {							\
    if (Yystack->yyspaceLeft < YYHEADROOM)		\
      yyMemoryExhausted (Yystack);			\
  } while (YYID (0))
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
typedef short int yySymbol;

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
  /** Source position of the first token produced by my symbol */
  size_t yyposn;
  union {
    /** First in a chain of alternative reductions producing the
     *  non-terminal corresponding to this state, threaded through
     *  yynext.  */
    yySemanticOption* yyfirstVal;
    /** Semantic value for this state.  */
    YYSTYPE yysval;
  } yysemantics;
  /** Source location for this state.  */
  YYLTYPE yyloc;
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
  YYLTYPE yyloc;
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

static void yyFail (yyGLRStack* yystackp, const char* yymsg)
  __attribute__ ((__noreturn__));
static void
yyFail (yyGLRStack* yystackp, const char* yymsg)
{
  if (yymsg != NULL)
    yyerror (yymsg);
  YYLONGJMP (yystackp->yyexception_buffer, 1);
}

static void yyMemoryExhausted (yyGLRStack* yystackp)
  __attribute__ ((__noreturn__));
static void
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
static void yyfillin (yyGLRStackItem *, int, int) __attribute__ ((__unused__));
static void
yyfillin (yyGLRStackItem *yyvsp, int yylow0, int yylow1)
{
  yyGLRState* s;
  int i;
  s = yyvsp[yylow0].yystate.yypred;
  for (i = yylow0-1; i >= yylow1; i -= 1)
    {
      YYASSERT (s->yyresolved);
      yyvsp[i].yystate.yyresolved = yytrue;
      yyvsp[i].yystate.yysemantics.yysval = s->yysemantics.yysval;
      yyvsp[i].yystate.yyloc = s->yyloc;
      s = yyvsp[i].yystate.yypred = s->yypred;
    }
}

/* Do nothing if YYNORMAL or if *YYLOW <= YYLOW1.  Otherwise, fill in
 * YYVSP[YYLOW1 .. *YYLOW-1] as in yyfillin and set *YYLOW = YYLOW1.
 * For convenience, always return YYLOW1.  */
static inline int yyfill (yyGLRStackItem *, int *, int, yybool)
     __attribute__ ((__unused__));
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
/*ARGSUSED*/ static YYRESULTTAG
yyuserAction (yyRuleNum yyn, int yyrhslen, yyGLRStackItem* yyvsp,
	      YYSTYPE* yyvalp,
	      YYLTYPE* YYOPTIONAL_LOC (yylocp),
	      yyGLRStack* yystackp
	      )
{
  yybool yynormal __attribute__ ((__unused__)) =
    (yystackp->yysplitPoint == NULL);
  int yylow;
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
# define YYBACKUP(Token, Value)						     \
  return yyerror (YY_("syntax error: cannot back up")),     \
	 yyerrok, yyerr

  yylow = 1;
  if (yyrhslen == 0)
    *yyvalp = yyval_default;
  else
    *yyvalp = yyvsp[YYFILL (1-yyrhslen)].yystate.yysemantics.yysval;
  YYLLOC_DEFAULT ((*yylocp), (yyvsp - yyrhslen), yyrhslen);

  switch (yyn)
    {
        case 3:
#line 417 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 5:
#line 418 "grammar.y"
    { printf("semicolon_opt\n"); ;}
    break;

  case 6:
#line 419 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 7:
#line 420 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 8:
#line 421 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 9:
#line 422 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 10:
#line 423 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 11:
#line 424 "grammar.y"
    { printf("statements (0)\n"); ;}
    break;

  case 13:
#line 425 "grammar.y"
    { printf("statements_opt\n"); ;}
    break;

  case 14:
#line 429 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 15:
#line 430 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 16:
#line 431 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 17:
#line 432 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 18:
#line 436 "grammar.y"
    { printf("for_statement (0)\n"); ;}
    break;

  case 20:
#line 437 "grammar.y"
    { printf("for_init_opt\n"); ;}
    break;

  case 22:
#line 438 "grammar.y"
    { printf("expression_opt\n"); ;}
    break;

  case 23:
#line 439 "grammar.y"
    { printf("for_statement (0)\n"); ;}
    break;

  case 24:
#line 440 "grammar.y"
    { printf("for_init (0)\n"); ;}
    break;

  case 25:
#line 441 "grammar.y"
    { printf("for_init (1)\n"); ;}
    break;

  case 26:
#line 445 "grammar.y"
    { printf("for_in_statement (0)\n"); ;}
    break;

  case 27:
#line 449 "grammar.y"
    { printf("while_statement (0)\n"); ;}
    break;

  case 28:
#line 450 "grammar.y"
    { printf("while_condition (0)\n"); ;}
    break;

  case 29:
#line 451 "grammar.y"
    { printf("while_condition (1)\n"); ;}
    break;

  case 30:
#line 455 "grammar.y"
    { printf("do_while_statement (0)\n"); ;}
    break;

  case 31:
#line 459 "grammar.y"
    { printf("branch_statement (0)\n"); ;}
    break;

  case 32:
#line 460 "grammar.y"
    { printf("branch_statement (0)\n"); ;}
    break;

  case 33:
#line 464 "grammar.y"
    { printf("if_statement (0)\n"); ;}
    break;

  case 35:
#line 465 "grammar.y"
    { printf("else_clause_opt\n"); ;}
    break;

  case 36:
#line 466 "grammar.y"
    { printf("if_condition (0)\n"); ;}
    break;

  case 37:
#line 467 "grammar.y"
    { printf("if_condition (1)\n"); ;}
    break;

  case 38:
#line 468 "grammar.y"
    { printf("else_clause (0)\n"); ;}
    break;

  case 39:
#line 469 "grammar.y"
    { printf("else_clause (1)\n"); ;}
    break;

  case 40:
#line 473 "grammar.y"
    { printf("switch_statement (0)\n"); ;}
    break;

  case 42:
#line 474 "grammar.y"
    { printf("switch_cases_opt\n"); ;}
    break;

  case 43:
#line 475 "grammar.y"
    { printf("switch_cases (0)\n"); ;}
    break;

  case 44:
#line 476 "grammar.y"
    { printf("switch_case (0)\n"); ;}
    break;

  case 45:
#line 477 "grammar.y"
    { printf("switch_case (1)\n"); ;}
    break;

  case 46:
#line 478 "grammar.y"
    { printf("switch_case (0)\n"); ;}
    break;

  case 47:
#line 479 "grammar.y"
    { printf("switch_case (1)\n"); ;}
    break;

  case 48:
#line 480 "grammar.y"
    { printf("case_label (0)\n"); ;}
    break;

  case 49:
#line 481 "grammar.y"
    { printf("case_item_list (0)\n"); ;}
    break;

  case 50:
#line 482 "grammar.y"
    { printf("case_item_list (1)\n"); ;}
    break;

  case 52:
#line 483 "grammar.y"
    { printf("guard_clause_opt\n"); ;}
    break;

  case 53:
#line 484 "grammar.y"
    { printf("default_label (0)\n"); ;}
    break;

  case 54:
#line 485 "grammar.y"
    { printf("guard_clause (0)\n"); ;}
    break;

  case 55:
#line 486 "grammar.y"
    { printf("guard_expression (0)\n"); ;}
    break;

  case 56:
#line 490 "grammar.y"
    { printf("labeled_statement (0)\n"); ;}
    break;

  case 57:
#line 491 "grammar.y"
    { printf("labeled_statement (1)\n"); ;}
    break;

  case 58:
#line 492 "grammar.y"
    { printf("statement_label (0)\n"); ;}
    break;

  case 59:
#line 493 "grammar.y"
    { printf("label_name (0)\n"); ;}
    break;

  case 60:
#line 497 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 61:
#line 498 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 62:
#line 499 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 63:
#line 500 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 64:
#line 504 "grammar.y"
    { printf("break_statement (0)\n"); ;}
    break;

  case 66:
#line 505 "grammar.y"
    { printf("label_name_opt\n"); ;}
    break;

  case 67:
#line 509 "grammar.y"
    { printf("continue_statement (0)\n"); ;}
    break;

  case 68:
#line 513 "grammar.y"
    { printf("fallthrough_statement (0)\n"); ;}
    break;

  case 69:
#line 517 "grammar.y"
    { printf("return_statement (0)\n"); ;}
    break;

  case 70:
#line 524 "grammar.y"
    { printf("generic_parameter_clause (0)\n"); ;}
    break;

  case 72:
#line 525 "grammar.y"
    { printf("requirement_clause_opt\n"); ;}
    break;

  case 73:
#line 526 "grammar.y"
    { printf("generic_parameter_list (0)\n"); ;}
    break;

  case 74:
#line 527 "grammar.y"
    { printf("generic_parameter_list (1)\n"); ;}
    break;

  case 75:
#line 528 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 76:
#line 529 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 77:
#line 530 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 78:
#line 531 "grammar.y"
    { printf("requirement_clause (0)\n"); ;}
    break;

  case 79:
#line 532 "grammar.y"
    { printf("requirement_list (0)\n"); ;}
    break;

  case 80:
#line 533 "grammar.y"
    { printf("requirement_list (1)\n"); ;}
    break;

  case 81:
#line 534 "grammar.y"
    { printf("requirement (0)\n"); ;}
    break;

  case 82:
#line 535 "grammar.y"
    { printf("requirement (1)\n"); ;}
    break;

  case 83:
#line 536 "grammar.y"
    { printf("conformance_requirement (0)\n"); ;}
    break;

  case 84:
#line 537 "grammar.y"
    { printf("conformance_requirement (0)\n"); ;}
    break;

  case 85:
#line 538 "grammar.y"
    { printf("same_type_requirement (0)\n"); ;}
    break;

  case 86:
#line 542 "grammar.y"
    { printf("generic_argument_clause (0)\n"); ;}
    break;

  case 87:
#line 543 "grammar.y"
    { printf("generic_argument_list (0)\n"); ;}
    break;

  case 88:
#line 544 "grammar.y"
    { printf("generic_argument_list (1)\n"); ;}
    break;

  case 89:
#line 545 "grammar.y"
    { printf("generic_argument (0)\n"); ;}
    break;

  case 90:
#line 552 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 91:
#line 553 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 92:
#line 554 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 93:
#line 555 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 94:
#line 556 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 95:
#line 557 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 96:
#line 558 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 97:
#line 559 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 98:
#line 560 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 99:
#line 561 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 100:
#line 562 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 101:
#line 563 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 102:
#line 564 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 103:
#line 565 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 104:
#line 566 "grammar.y"
    { printf("declarations (0)\n"); ;}
    break;

  case 106:
#line 567 "grammar.y"
    { printf("declarations_opt\n"); ;}
    break;

  case 107:
#line 568 "grammar.y"
    { printf("declaration_specifiers (0)\n"); ;}
    break;

  case 109:
#line 569 "grammar.y"
    { printf("declaration_specifiers_opt\n"); ;}
    break;

  case 110:
#line 570 "grammar.y"
    { printf("declaration_specifier (0)\n"); ;}
    break;

  case 111:
#line 571 "grammar.y"
    { printf("declaration_specifier (1)\n"); ;}
    break;

  case 112:
#line 572 "grammar.y"
    { printf("declaration_specifier (2)\n"); ;}
    break;

  case 113:
#line 573 "grammar.y"
    { printf("declaration_specifier (3)\n"); ;}
    break;

  case 114:
#line 574 "grammar.y"
    { printf("declaration_specifier (4)\n"); ;}
    break;

  case 115:
#line 575 "grammar.y"
    { printf("declaration_specifier (5)\n"); ;}
    break;

  case 116:
#line 576 "grammar.y"
    { printf("declaration_specifier (6)\n"); ;}
    break;

  case 117:
#line 577 "grammar.y"
    { printf("declaration_specifier (7)\n"); ;}
    break;

  case 118:
#line 578 "grammar.y"
    { printf("declaration_specifier (8)\n"); ;}
    break;

  case 119:
#line 586 "grammar.y"
    { printf("code_block (0)\n"); ;}
    break;

  case 120:
#line 590 "grammar.y"
    { printf("import_declaration (0)\n"); ;}
    break;

  case 122:
#line 591 "grammar.y"
    { printf("attributes_opt\n"); ;}
    break;

  case 124:
#line 592 "grammar.y"
    { printf("import_kind_opt\n"); ;}
    break;

  case 125:
#line 593 "grammar.y"
    { printf("import_kind (0)\n"); ;}
    break;

  case 126:
#line 594 "grammar.y"
    { printf("import_kind (1)\n"); ;}
    break;

  case 127:
#line 595 "grammar.y"
    { printf("import_kind (2)\n"); ;}
    break;

  case 128:
#line 596 "grammar.y"
    { printf("import_kind (3)\n"); ;}
    break;

  case 129:
#line 597 "grammar.y"
    { printf("import_kind (4)\n"); ;}
    break;

  case 130:
#line 598 "grammar.y"
    { printf("import_kind (5)\n"); ;}
    break;

  case 131:
#line 599 "grammar.y"
    { printf("import_kind (6)\n"); ;}
    break;

  case 132:
#line 600 "grammar.y"
    { printf("import_path (0)\n"); ;}
    break;

  case 133:
#line 601 "grammar.y"
    { printf("import_path (1)\n"); ;}
    break;

  case 134:
#line 602 "grammar.y"
    { printf("import_path_identifier (0)\n"); ;}
    break;

  case 135:
#line 603 "grammar.y"
    { printf("import_path_identifier (1)\n"); ;}
    break;

  case 136:
#line 607 "grammar.y"
    { printf("constant_declaration (0)\n"); ;}
    break;

  case 137:
#line 608 "grammar.y"
    { printf("pattern_initializer_list (0)\n"); ;}
    break;

  case 138:
#line 609 "grammar.y"
    { printf("pattern_initializer_list (1)\n"); ;}
    break;

  case 140:
#line 611 "grammar.y"
    { printf("pattern_initializer (0)\n"); ;}
    break;

  case 142:
#line 612 "grammar.y"
    { printf("initializer_opt\n"); ;}
    break;

  case 143:
#line 613 "grammar.y"
    { printf("initializer (0)\n"); ;}
    break;

  case 144:
#line 617 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 145:
#line 618 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 146:
#line 619 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 147:
#line 620 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 148:
#line 621 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 149:
#line 622 "grammar.y"
    { printf("variable_declaration_head (0)\n"); ;}
    break;

  case 150:
#line 623 "grammar.y"
    { printf("variable_name (0)\n"); ;}
    break;

  case 151:
#line 624 "grammar.y"
    { printf("getter_setter_block (0)\n"); ;}
    break;

  case 153:
#line 625 "grammar.y"
    { printf("setter_clause_opt\n"); ;}
    break;

  case 154:
#line 626 "grammar.y"
    { printf("getter_setter_block (0)\n"); ;}
    break;

  case 155:
#line 627 "grammar.y"
    { printf("getter_clause (0)\n"); ;}
    break;

  case 156:
#line 628 "grammar.y"
    { printf("setter_clause (0)\n"); ;}
    break;

  case 158:
#line 629 "grammar.y"
    { printf("setter_name_opt\n"); ;}
    break;

  case 159:
#line 630 "grammar.y"
    { printf("setter_name (0)\n"); ;}
    break;

  case 160:
#line 631 "grammar.y"
    { printf("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 162:
#line 632 "grammar.y"
    { printf("setter_keyword_clause_opt\n"); ;}
    break;

  case 163:
#line 633 "grammar.y"
    { printf("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 164:
#line 634 "grammar.y"
    { printf("getter_keyword_clause (0)\n"); ;}
    break;

  case 165:
#line 635 "grammar.y"
    { printf("setter_keyword_clause (0)\n"); ;}
    break;

  case 166:
#line 636 "grammar.y"
    { printf("willSet_didSet_block (0)\n"); ;}
    break;

  case 168:
#line 637 "grammar.y"
    { printf("didSet_clause_opt\n"); ;}
    break;

  case 169:
#line 638 "grammar.y"
    { printf("willSet_didSet_block (0)\n"); ;}
    break;

  case 170:
#line 639 "grammar.y"
    { printf("willSet_clause (0)\n"); ;}
    break;

  case 171:
#line 640 "grammar.y"
    { printf("didSet_clause (0)\n"); ;}
    break;

  case 172:
#line 644 "grammar.y"
    { printf("typealias_declaration (0)\n"); ;}
    break;

  case 173:
#line 645 "grammar.y"
    { printf("typealias_head (0)\n"); ;}
    break;

  case 174:
#line 646 "grammar.y"
    { printf("typealias_name (0)\n"); ;}
    break;

  case 175:
#line 647 "grammar.y"
    { printf("typealias_assignment (0)\n"); ;}
    break;

  case 176:
#line 651 "grammar.y"
    { printf("function_declaration (0)\n"); ;}
    break;

  case 178:
#line 652 "grammar.y"
    { printf("generic_parameter_clause_opt\n"); ;}
    break;

  case 179:
#line 653 "grammar.y"
    { printf("function_head (0)\n"); ;}
    break;

  case 180:
#line 654 "grammar.y"
    { printf("function_name (0)\n"); ;}
    break;

  case 181:
#line 655 "grammar.y"
    { printf("function_name (1)\n"); ;}
    break;

  case 182:
#line 656 "grammar.y"
    { printf("function_signature (0)\n"); ;}
    break;

  case 184:
#line 657 "grammar.y"
    { printf("function_result_opt\n"); ;}
    break;

  case 185:
#line 658 "grammar.y"
    { printf("function_result (0)\n"); ;}
    break;

  case 186:
#line 659 "grammar.y"
    { printf("function_body (0)\n"); ;}
    break;

  case 187:
#line 660 "grammar.y"
    { printf("parameter_clauses (0)\n"); ;}
    break;

  case 189:
#line 661 "grammar.y"
    { printf("parameter_clauses_opt\n"); ;}
    break;

  case 190:
#line 662 "grammar.y"
    { printf("parameter_clause (0)\n"); ;}
    break;

  case 191:
#line 663 "grammar.y"
    { printf("parameter_clause (1)\n"); ;}
    break;

  case 193:
#line 664 "grammar.y"
    { printf("tripledot_opt\n"); ;}
    break;

  case 194:
#line 665 "grammar.y"
    { printf("parameter_list (0)\n"); ;}
    break;

  case 195:
#line 666 "grammar.y"
    { printf("parameter_list (1)\n"); ;}
    break;

  case 196:
#line 667 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 198:
#line 668 "grammar.y"
    { printf("inout_opt\n"); ;}
    break;

  case 200:
#line 669 "grammar.y"
    { printf("let_opt\n"); ;}
    break;

  case 202:
#line 670 "grammar.y"
    { printf("hash_opt\n"); ;}
    break;

  case 204:
#line 671 "grammar.y"
    { printf("local_parameter_name_opt\n"); ;}
    break;

  case 206:
#line 672 "grammar.y"
    { printf("default_argument_clause_opt\n"); ;}
    break;

  case 207:
#line 673 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 208:
#line 674 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 209:
#line 675 "grammar.y"
    { printf("parameter_name (0)\n"); ;}
    break;

  case 210:
#line 676 "grammar.y"
    { printf("parameter_name (1)\n"); ;}
    break;

  case 211:
#line 677 "grammar.y"
    { printf("local_parameter_name (0)\n"); ;}
    break;

  case 212:
#line 678 "grammar.y"
    { printf("local_parameter_name (1)\n"); ;}
    break;

  case 213:
#line 679 "grammar.y"
    { printf("default_argument_clause (0)\n"); ;}
    break;

  case 214:
#line 683 "grammar.y"
    { printf("enum_declaration (0)\n"); ;}
    break;

  case 215:
#line 684 "grammar.y"
    { printf("enum_declaration (1)\n"); ;}
    break;

  case 216:
#line 685 "grammar.y"
    { printf("union_style_enum (0)\n"); ;}
    break;

  case 218:
#line 686 "grammar.y"
    { printf("union_style_enum_members_opt\n"); ;}
    break;

  case 219:
#line 687 "grammar.y"
    { printf("union_style_enum_members (0)\n"); ;}
    break;

  case 220:
#line 688 "grammar.y"
    { printf("union_style_enum_member (0)\n"); ;}
    break;

  case 221:
#line 689 "grammar.y"
    { printf("union_style_enum_member (1)\n"); ;}
    break;

  case 222:
#line 690 "grammar.y"
    { printf("union_style_enum_case_clause (0)\n"); ;}
    break;

  case 223:
#line 691 "grammar.y"
    { printf("union_style_enum_case_list (0)\n"); ;}
    break;

  case 224:
#line 692 "grammar.y"
    { printf("union_style_enum_case_list (1)\n"); ;}
    break;

  case 225:
#line 693 "grammar.y"
    { printf("union_style_enum_case (0)\n"); ;}
    break;

  case 227:
#line 694 "grammar.y"
    { printf("tuple_type_opt\n"); ;}
    break;

  case 228:
#line 695 "grammar.y"
    { printf("enum_name (0)\n"); ;}
    break;

  case 229:
#line 696 "grammar.y"
    { printf("enum_case_name (0)\n"); ;}
    break;

  case 230:
#line 697 "grammar.y"
    { printf("raw_value_style_enum (0)\n"); ;}
    break;

  case 232:
#line 698 "grammar.y"
    { printf("raw_value_style_enum_members_opt\n"); ;}
    break;

  case 233:
#line 699 "grammar.y"
    { printf("raw_value_style_enum_members (0)\n"); ;}
    break;

  case 234:
#line 700 "grammar.y"
    { printf("raw_value_style_enum_member (0)\n"); ;}
    break;

  case 235:
#line 701 "grammar.y"
    { printf("raw_value_style_enum_member (1)\n"); ;}
    break;

  case 236:
#line 702 "grammar.y"
    { printf("raw_value_style_enum_case_clause (0)\n"); ;}
    break;

  case 237:
#line 703 "grammar.y"
    { printf("raw_value_style_enum_case_list (0)\n"); ;}
    break;

  case 238:
#line 704 "grammar.y"
    { printf("raw_value_style_enum_case_list (1)\n"); ;}
    break;

  case 239:
#line 705 "grammar.y"
    { printf("raw_value_style_enum_case (0)\n"); ;}
    break;

  case 241:
#line 706 "grammar.y"
    { printf("raw_value_assignment_opt\n"); ;}
    break;

  case 242:
#line 707 "grammar.y"
    { printf("raw_value_assignment (0)\n"); ;}
    break;

  case 243:
#line 711 "grammar.y"
    { printf("struct_declaration (0)\n"); ;}
    break;

  case 245:
#line 712 "grammar.y"
    { printf("type_inheritance_clause_opt\n"); ;}
    break;

  case 246:
#line 713 "grammar.y"
    { printf("struct_name (0)\n"); ;}
    break;

  case 247:
#line 714 "grammar.y"
    { printf("struct_body (0)\n"); ;}
    break;

  case 248:
#line 718 "grammar.y"
    { printf("class_declaration (0)\n"); ;}
    break;

  case 249:
#line 719 "grammar.y"
    { printf("class_name (0)\n"); ;}
    break;

  case 250:
#line 720 "grammar.y"
    { printf("class_body (0)\n"); ;}
    break;

  case 251:
#line 724 "grammar.y"
    { printf("protocol_declaration (0)\n"); ;}
    break;

  case 252:
#line 725 "grammar.y"
    { printf("protocol_name (0)\n"); ;}
    break;

  case 253:
#line 726 "grammar.y"
    { printf("protocol_body (0)\n"); ;}
    break;

  case 255:
#line 727 "grammar.y"
    { printf("protocol_member_declarations_opt\n"); ;}
    break;

  case 256:
#line 728 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 257:
#line 729 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 258:
#line 730 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 259:
#line 731 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 260:
#line 732 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 261:
#line 733 "grammar.y"
    { printf("protocol_member_declarations (0)\n"); ;}
    break;

  case 262:
#line 737 "grammar.y"
    { printf("protocol_property_declaration (0)\n"); ;}
    break;

  case 263:
#line 741 "grammar.y"
    { printf("protocol_method_declaration (0)\n"); ;}
    break;

  case 264:
#line 745 "grammar.y"
    { printf("protocol_initializer_declaration (0)\n"); ;}
    break;

  case 265:
#line 749 "grammar.y"
    { printf("protocol_subscript_declaration (0)\n"); ;}
    break;

  case 266:
#line 753 "grammar.y"
    { printf("protocol_associated_type_declaration (0)\n"); ;}
    break;

  case 268:
#line 754 "grammar.y"
    { printf("typealias_assignment_opt\n"); ;}
    break;

  case 269:
#line 758 "grammar.y"
    { printf("initializer_declaration (0)\n"); ;}
    break;

  case 270:
#line 759 "grammar.y"
    { printf("initializer_head (0)\n"); ;}
    break;

  case 272:
#line 760 "grammar.y"
    { printf("convenience_opt\n"); ;}
    break;

  case 273:
#line 761 "grammar.y"
    { printf("initializer_body (0)\n"); ;}
    break;

  case 274:
#line 765 "grammar.y"
    { printf("deinitializer_declaration (0)\n"); ;}
    break;

  case 275:
#line 769 "grammar.y"
    { printf("extension_declaration (0)\n"); ;}
    break;

  case 276:
#line 770 "grammar.y"
    { printf("extension_body (0)\n"); ;}
    break;

  case 277:
#line 774 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 278:
#line 775 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 279:
#line 776 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 280:
#line 777 "grammar.y"
    { printf("subscript_head (0)\n"); ;}
    break;

  case 281:
#line 778 "grammar.y"
    { printf("subscript_result (0)\n"); ;}
    break;

  case 282:
#line 782 "grammar.y"
    { printf("operator_declaration (0)\n"); ;}
    break;

  case 283:
#line 783 "grammar.y"
    { printf("operator_declaration (1)\n"); ;}
    break;

  case 284:
#line 784 "grammar.y"
    { printf("operator_declaration (2)\n"); ;}
    break;

  case 285:
#line 785 "grammar.y"
    { printf("prefix_operator_declaration (0)\n"); ;}
    break;

  case 286:
#line 786 "grammar.y"
    { printf("postfix_operator_declaration (0)\n"); ;}
    break;

  case 287:
#line 787 "grammar.y"
    { printf("infix_operator_declaration (0)\n"); ;}
    break;

  case 289:
#line 788 "grammar.y"
    { printf("infix_operator_attributes_opt\n"); ;}
    break;

  case 290:
#line 789 "grammar.y"
    { printf("infix_operator_attributes (0)\n"); ;}
    break;

  case 292:
#line 790 "grammar.y"
    { printf("precedence_clause_opt\n"); ;}
    break;

  case 294:
#line 791 "grammar.y"
    { printf("associativity_clause_opt\n"); ;}
    break;

  case 295:
#line 792 "grammar.y"
    { printf("precedence_clause (0)\n"); ;}
    break;

  case 296:
#line 793 "grammar.y"
    { printf("precedence_level (0)\n"); ;}
    break;

  case 297:
#line 794 "grammar.y"
    { printf("associativity_clause (0)\n"); ;}
    break;

  case 298:
#line 795 "grammar.y"
    { printf("associativity (0)\n"); ;}
    break;

  case 299:
#line 796 "grammar.y"
    { printf("associativity (1)\n"); ;}
    break;

  case 300:
#line 797 "grammar.y"
    { printf("associativity (2)\n"); ;}
    break;

  case 301:
#line 804 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 303:
#line 805 "grammar.y"
    { printf("type_annotation_opt\n"); ;}
    break;

  case 304:
#line 806 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 305:
#line 807 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 306:
#line 808 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 307:
#line 809 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 308:
#line 810 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 309:
#line 811 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 310:
#line 815 "grammar.y"
    { printf("wildcard_pattern (0)\n"); ;}
    break;

  case 311:
#line 819 "grammar.y"
    { printf("identifier_pattern (0)\n"); ;}
    break;

  case 312:
#line 823 "grammar.y"
    { printf("value_binding_pattern (0)\n"); ;}
    break;

  case 313:
#line 824 "grammar.y"
    { printf("value_binding_pattern (1)\n"); ;}
    break;

  case 314:
#line 828 "grammar.y"
    { printf("tuple_pattern (0)\n"); ;}
    break;

  case 316:
#line 829 "grammar.y"
    { printf("tuple_pattern_element_list_opt\n"); ;}
    break;

  case 317:
#line 830 "grammar.y"
    { printf("tuple_pattern_element_list (0)\n"); ;}
    break;

  case 318:
#line 831 "grammar.y"
    { printf("tuple_pattern_element_list (1)\n"); ;}
    break;

  case 319:
#line 832 "grammar.y"
    { printf("tuple_pattern_element (0)\n"); ;}
    break;

  case 320:
#line 836 "grammar.y"
    { printf("enum_case_pattern (0)\n"); ;}
    break;

  case 322:
#line 837 "grammar.y"
    { printf("type_identifier_opt\n"); ;}
    break;

  case 324:
#line 838 "grammar.y"
    { printf("tuple_pattern_opt\n"); ;}
    break;

  case 325:
#line 842 "grammar.y"
    { printf("type_casting_pattern (0)\n"); ;}
    break;

  case 326:
#line 843 "grammar.y"
    { printf("type_casting_pattern (1)\n"); ;}
    break;

  case 327:
#line 844 "grammar.y"
    { printf("is_pattern (0)\n"); ;}
    break;

  case 328:
#line 845 "grammar.y"
    { printf("as_pattern (0)\n"); ;}
    break;

  case 329:
#line 849 "grammar.y"
    { printf("expression_pattern (0)\n"); ;}
    break;

  case 330:
#line 856 "grammar.y"
    { printf("attribute (0)\n"); ;}
    break;

  case 332:
#line 857 "grammar.y"
    { printf("attribute_argument_clause_opt\n"); ;}
    break;

  case 333:
#line 858 "grammar.y"
    { printf("attribute_name (0)\n"); ;}
    break;

  case 334:
#line 859 "grammar.y"
    { printf("attribute_argument_clause (0)\n"); ;}
    break;

  case 336:
#line 860 "grammar.y"
    { printf("balanced_tokens_opt\n"); ;}
    break;

  case 337:
#line 861 "grammar.y"
    { printf("attributes (0)\n"); ;}
    break;

  case 338:
#line 862 "grammar.y"
    { printf("balanced_tokens (0)\n"); ;}
    break;

  case 339:
#line 863 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 340:
#line 864 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 341:
#line 865 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 342:
#line 866 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 343:
#line 867 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 344:
#line 874 "grammar.y"
    { printf("expression (0)\n"); ;}
    break;

  case 346:
#line 875 "grammar.y"
    { printf("binary_expressions_opt\n"); ;}
    break;

  case 347:
#line 876 "grammar.y"
    { printf("expression_list (0)\n"); ;}
    break;

  case 348:
#line 877 "grammar.y"
    { printf("expression_list (1)\n"); ;}
    break;

  case 349:
#line 881 "grammar.y"
    { printf("prefix_expression (0)\n"); ;}
    break;

  case 351:
#line 882 "grammar.y"
    { printf("prefix_operator_opt\n"); ;}
    break;

  case 352:
#line 883 "grammar.y"
    { printf("prefix_expression (0)\n"); ;}
    break;

  case 353:
#line 884 "grammar.y"
    { printf("in_out_expression (0)\n"); ;}
    break;

  case 354:
#line 888 "grammar.y"
    { printf("binary_expression (0)\n"); ;}
    break;

  case 355:
#line 889 "grammar.y"
    { printf("binary_expression (0)\n"); ;}
    break;

  case 356:
#line 890 "grammar.y"
    { printf("binary_expression (0)\n"); ;}
    break;

  case 357:
#line 891 "grammar.y"
    { printf("binary_expression (0)\n"); ;}
    break;

  case 358:
#line 892 "grammar.y"
    { printf("binary_expressions (0)\n"); ;}
    break;

  case 359:
#line 896 "grammar.y"
    { printf("assignment_operator (0)\n"); ;}
    break;

  case 360:
#line 900 "grammar.y"
    { printf("conditional_operator (0)\n"); ;}
    break;

  case 361:
#line 904 "grammar.y"
    { printf("type_casting_operator (0)\n"); ;}
    break;

  case 362:
#line 905 "grammar.y"
    { printf("type_casting_operator (1)\n"); ;}
    break;

  case 364:
#line 906 "grammar.y"
    { printf("question_opt\n"); ;}
    break;

  case 365:
#line 910 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 367:
#line 911 "grammar.y"
    { printf("generic_argument_clause_opt\n"); ;}
    break;

  case 368:
#line 912 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 369:
#line 913 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 370:
#line 914 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 371:
#line 915 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 372:
#line 916 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 373:
#line 917 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 374:
#line 918 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 375:
#line 922 "grammar.y"
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.str))]; printf("Literal: %s");}
    break;

  case 376:
#line 923 "grammar.y"
    { printf("literal_expression (0)\n"); ;}
    break;

  case 377:
#line 924 "grammar.y"
    { printf("literal_expression (1)\n"); ;}
    break;

  case 378:
#line 925 "grammar.y"
    { printf("literal_expression (0)\n"); ;}
    break;

  case 379:
#line 926 "grammar.y"
    { printf("literal_expression (1)\n"); ;}
    break;

  case 380:
#line 927 "grammar.y"
    { printf("literal_expression (2)\n"); ;}
    break;

  case 381:
#line 928 "grammar.y"
    { printf("literal_expression (3)\n"); ;}
    break;

  case 382:
#line 929 "grammar.y"
    { printf("array_literal (0)\n"); ;}
    break;

  case 384:
#line 930 "grammar.y"
    { printf("array_literal_items_opt\n"); ;}
    break;

  case 385:
#line 931 "grammar.y"
    { printf("array_literal_items (0)\n"); ;}
    break;

  case 386:
#line 932 "grammar.y"
    { printf("array_literal_items (1)\n"); ;}
    break;

  case 388:
#line 933 "grammar.y"
    { printf("comma_opt\n"); ;}
    break;

  case 389:
#line 934 "grammar.y"
    { printf("array_literal_item (0)\n"); ;}
    break;

  case 390:
#line 935 "grammar.y"
    { printf("dictionary_literal (0)\n"); ;}
    break;

  case 391:
#line 936 "grammar.y"
    { printf("dictionary_literal (1)\n"); ;}
    break;

  case 392:
#line 937 "grammar.y"
    { printf("dictionary_literal_items (0)\n"); ;}
    break;

  case 393:
#line 938 "grammar.y"
    { printf("dictionary_literal_items (1)\n"); ;}
    break;

  case 394:
#line 939 "grammar.y"
    { printf("dictionary_literal_item (0)\n"); ;}
    break;

  case 395:
#line 943 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 396:
#line 944 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 397:
#line 945 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 398:
#line 946 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 399:
#line 950 "grammar.y"
    { printf("superclass_expression (0)\n"); ;}
    break;

  case 400:
#line 951 "grammar.y"
    { printf("superclass_expression (1)\n"); ;}
    break;

  case 401:
#line 952 "grammar.y"
    { printf("superclass_expression (2)\n"); ;}
    break;

  case 402:
#line 953 "grammar.y"
    { printf("superclass_method_expression (0)\n"); ;}
    break;

  case 403:
#line 954 "grammar.y"
    { printf("superclass_subscript_expression (0)\n"); ;}
    break;

  case 404:
#line 955 "grammar.y"
    { printf("superclass_initializer_expression (0)\n"); ;}
    break;

  case 405:
#line 959 "grammar.y"
    { printf("closure_expression (0)\n"); ;}
    break;

  case 407:
#line 960 "grammar.y"
    { printf("closure_signature_opt\n"); ;}
    break;

  case 408:
#line 961 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 409:
#line 962 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 410:
#line 963 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 411:
#line 964 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 412:
#line 965 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 413:
#line 966 "grammar.y"
    { printf("capture_list (0)\n"); ;}
    break;

  case 414:
#line 967 "grammar.y"
    { printf("capture_specifier (0)\n"); ;}
    break;

  case 415:
#line 968 "grammar.y"
    { printf("capture_specifier (1)\n"); ;}
    break;

  case 416:
#line 969 "grammar.y"
    { printf("capture_specifier (2)\n"); ;}
    break;

  case 417:
#line 970 "grammar.y"
    { printf("capture_specifier (3)\n"); ;}
    break;

  case 418:
#line 974 "grammar.y"
    { printf("implicit_member_expression (0)\n"); ;}
    break;

  case 419:
#line 978 "grammar.y"
    { printf("parenthesized_expression (0)\n"); ;}
    break;

  case 421:
#line 979 "grammar.y"
    { printf("expression_element_list_opt\n"); ;}
    break;

  case 422:
#line 980 "grammar.y"
    { printf("expression_element_list (0)\n"); ;}
    break;

  case 423:
#line 981 "grammar.y"
    { printf("expression_element_list (1)\n"); ;}
    break;

  case 424:
#line 982 "grammar.y"
    { printf("expression_element (0)\n"); ;}
    break;

  case 425:
#line 983 "grammar.y"
    { printf("expression_element (1)\n"); ;}
    break;

  case 426:
#line 987 "grammar.y"
    { printf("wildcard_expression (0)\n"); ;}
    break;

  case 427:
#line 991 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 428:
#line 992 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 429:
#line 993 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 430:
#line 994 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 431:
#line 995 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 432:
#line 996 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 433:
#line 997 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 434:
#line 998 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 435:
#line 999 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 436:
#line 1000 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 437:
#line 1004 "grammar.y"
    { printf("function_call_expression (0)\n"); ;}
    break;

  case 438:
#line 1005 "grammar.y"
    { printf("function_call_expression (0)\n"); ;}
    break;

  case 440:
#line 1006 "grammar.y"
    { printf("parenthesized_expression_opt\n"); ;}
    break;

  case 441:
#line 1007 "grammar.y"
    { printf("trailing_closure (0)\n"); ;}
    break;

  case 442:
#line 1011 "grammar.y"
    { printf("initializer_expression (0)\n"); ;}
    break;

  case 443:
#line 1015 "grammar.y"
    { printf("explicit_member_expression (0)\n"); ;}
    break;

  case 444:
#line 1016 "grammar.y"
    { printf("explicit_member_expression (0)\n"); ;}
    break;

  case 445:
#line 1020 "grammar.y"
    { printf("postfix_self_expression (0)\n"); ;}
    break;

  case 446:
#line 1024 "grammar.y"
    { printf("dynamic_type_expression (0)\n"); ;}
    break;

  case 447:
#line 1028 "grammar.y"
    { printf("subscript_expression (0)\n"); ;}
    break;

  case 448:
#line 1032 "grammar.y"
    { printf("forced_value_expression (0)\n"); ;}
    break;

  case 449:
#line 1036 "grammar.y"
    { printf("optional_chaining_expression (0)\n"); ;}
    break;

  case 450:
#line 1043 "grammar.y"
    { printf("identifier_list (0)\n"); ;}
    break;

  case 451:
#line 1044 "grammar.y"
    { printf("identifier_list (1)\n"); ;}
    break;

  case 490:
#line 1082 "grammar.y"
    { printf("type (0)\n"); ;}
    break;

  case 491:
#line 1083 "grammar.y"
    { printf("type (1)\n"); ;}
    break;

  case 492:
#line 1084 "grammar.y"
    { printf("type (2)\n"); ;}
    break;

  case 493:
#line 1085 "grammar.y"
    { printf("type (3)\n"); ;}
    break;

  case 494:
#line 1086 "grammar.y"
    { printf("type (4)\n"); ;}
    break;

  case 495:
#line 1087 "grammar.y"
    { printf("type (5)\n"); ;}
    break;

  case 496:
#line 1088 "grammar.y"
    { printf("type (6)\n"); ;}
    break;

  case 497:
#line 1089 "grammar.y"
    { printf("type (7)\n"); ;}
    break;

  case 498:
#line 1093 "grammar.y"
    { printf("type_annotation (0)\n"); ;}
    break;

  case 499:
#line 1097 "grammar.y"
    { printf("type_identifier (0)\n"); ;}
    break;

  case 500:
#line 1098 "grammar.y"
    { printf("type_identifier (1)\n"); ;}
    break;

  case 501:
#line 1099 "grammar.y"
    { printf("type_name (0)\n"); ;}
    break;

  case 502:
#line 1103 "grammar.y"
    { printf("tuple_type (0)\n"); ;}
    break;

  case 504:
#line 1104 "grammar.y"
    { printf("tuple_type_body_opt\n"); ;}
    break;

  case 505:
#line 1105 "grammar.y"
    { printf("tuple_type_body (0)\n"); ;}
    break;

  case 506:
#line 1106 "grammar.y"
    { printf("tuple_type_element_list (0)\n"); ;}
    break;

  case 507:
#line 1107 "grammar.y"
    { printf("tuple_type_element_list (1)\n"); ;}
    break;

  case 508:
#line 1108 "grammar.y"
    { printf("tuple_type_element (0)\n"); ;}
    break;

  case 509:
#line 1109 "grammar.y"
    { printf("tuple_type_element (1)\n"); ;}
    break;

  case 510:
#line 1110 "grammar.y"
    { printf("element_name (0)\n"); ;}
    break;

  case 511:
#line 1114 "grammar.y"
    { printf("function_type (0)\n"); ;}
    break;

  case 512:
#line 1118 "grammar.y"
    { printf("array_type (0)\n"); ;}
    break;

  case 513:
#line 1119 "grammar.y"
    { printf("array_type (1)\n"); ;}
    break;

  case 514:
#line 1123 "grammar.y"
    { printf("optional_type (0)\n"); ;}
    break;

  case 515:
#line 1127 "grammar.y"
    { printf("implicitly_unwrapped_optional_type (0)\n"); ;}
    break;

  case 516:
#line 1131 "grammar.y"
    { printf("protocol_composition_type (0)\n"); ;}
    break;

  case 518:
#line 1132 "grammar.y"
    { printf("protocol_identifier_list_opt\n"); ;}
    break;

  case 519:
#line 1133 "grammar.y"
    { printf("protocol_identifier_list (0)\n"); ;}
    break;

  case 520:
#line 1134 "grammar.y"
    { printf("protocol_identifier_list (1)\n"); ;}
    break;

  case 521:
#line 1135 "grammar.y"
    { printf("protocol_identifier (0)\n"); ;}
    break;

  case 522:
#line 1139 "grammar.y"
    { printf("metatype_type (0)\n"); ;}
    break;

  case 523:
#line 1140 "grammar.y"
    { printf("metatype_type (1)\n"); ;}
    break;

  case 524:
#line 1144 "grammar.y"
    { printf("type_inheritance_clause (0)\n"); ;}
    break;

  case 525:
#line 1145 "grammar.y"
    { printf("type_inheritance_list (0)\n"); ;}
    break;

  case 526:
#line 1146 "grammar.y"
    { printf("type_inheritance_list (1)\n"); ;}
    break;


/* Line 930 of glr.c.  */
#line 4582 "grammar.mm"
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


/*ARGSUSED*/ static void
yyuserMerge (int yyn, YYSTYPE* yy0, YYSTYPE* yy1)
{
  YYUSE (yy0);
  YYUSE (yy1);

  switch (yyn)
    {
      
      default: break;
    }
}

			      /* Bison grammar-table manipulation.  */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
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
	    YYFPRINTF (stderr, "%s unresolved ", yymsg);
	  else
	    YYFPRINTF (stderr, "%s incomplete ", yymsg);
	  yy_symbol_print (stderr, yystos[yys->yylrState],
			   NULL);
	  YYFPRINTF (stderr, "\n");
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

/** Left-hand-side symbol for rule #RULE.  */
static inline yySymbol
yylhsNonterm (yyRuleNum yyrule)
{
  return yyr1[yyrule];
}

#define yyis_pact_ninf(yystate) \
  ((yystate) == YYPACT_NINF)

/** True iff LR state STATE has only a default reduction (regardless
 *  of token).  */
static inline yybool
yyisDefaultedState (yyStateNum yystate)
{
  return yyis_pact_ninf (yypact[yystate]);
}

/** The default reduction for STATE, assuming it has one.  */
static inline yyRuleNum
yydefaultAction (yyStateNum yystate)
{
  return yydefact[yystate];
}

#define yyis_table_ninf(yytable_value) \
  YYID (0)

/** Set *YYACTION to the action to take in YYSTATE on seeing YYTOKEN.
 *  Result R means
 *    R < 0:  Reduce on rule -R.
 *    R = 0:  Error.
 *    R > 0:  Shift to state R.
 *  Set *CONFLICTS to a pointer into yyconfl to 0-terminated list of
 *  conflicting reductions.
 */
static inline void
yygetLRActions (yyStateNum yystate, int yytoken,
		int* yyaction, const short int** yyconflicts)
{
  int yyindex = yypact[yystate] + yytoken;
  if (yyindex < 0 || YYLAST < yyindex || yycheck[yyindex] != yytoken)
    {
      *yyaction = -yydefact[yystate];
      *yyconflicts = yyconfl;
    }
  else if (! yyis_table_ninf (yytable[yyindex]))
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

static inline yyStateNum
yyLRgotoState (yyStateNum yystate, yySymbol yylhs)
{
  int yyr;
  yyr = yypgoto[yylhs - YYNTOKENS] + yystate;
  if (0 <= yyr && yyr <= YYLAST && yycheck[yyr] == yystate)
    return yytable[yyr];
  else
    return yydefgoto[yylhs - YYNTOKENS];
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

/** Return a fresh GLRStackItem.  Callers should call
 * YY_RESERVE_GLRSTACK afterwards to make sure there is sufficient
 * headroom.  */

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
 *  RULENUM on the semantic values in RHS to the list of
 *  alternative actions for STATE.  Assumes that RHS comes from
 *  stack #K of *STACKP. */
static void
yyaddDeferredAction (yyGLRStack* yystackp, size_t yyk, yyGLRState* yystate,
		     yyGLRState* rhs, yyRuleNum yyrule)
{
  yySemanticOption* yynewOption =
    &yynewGLRStackItem (yystackp, yyfalse)->yyoption;
  yynewOption->yystate = rhs;
  yynewOption->yyrule = yyrule;
  if (yystackp->yytops.yylookaheadNeeds[yyk])
    {
      yynewOption->yyrawchar = yychar;
      yynewOption->yyval = yylval;
      yynewOption->yyloc = yylloc;
    }
  else
    yynewOption->yyrawchar = YYEMPTY;
  yynewOption->yynext = yystate->yysemantics.yyfirstVal;
  yystate->yysemantics.yyfirstVal = yynewOption;

  YY_RESERVE_GLRSTACK (yystackp);
}

				/* GLRStacks */

/** Initialize SET to a singleton set containing an empty stack.  */
static yybool
yyinitStateSet (yyGLRStateSet* yyset)
{
  yyset->yysize = 1;
  yyset->yycapacity = 16;
  yyset->yystates = (yyGLRState**) YYMALLOC (16 * sizeof yyset->yystates[0]);
  if (! yyset->yystates)
    return yyfalse;
  yyset->yystates[0] = NULL;
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

/** Initialize STACK to a single empty stack, with total maximum
 *  capacity for all stacks of SIZE.  */
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
  yystackp->yysplitPoint = NULL;
  yystackp->yylastDeleted = NULL;
  return yyinitStateSet (&yystackp->yytops);
}


#if YYSTACKEXPANDABLE
# define YYRELOC(YYFROMITEMS,YYTOITEMS,YYX,YYTYPE) \
  &((YYTOITEMS) - ((YYFROMITEMS) - (yyGLRStackItem*) (YYX)))->YYTYPE

/** If STACK is expandable, extend it.  WARNING: Pointers into the
    stack from outside should be considered invalid after this call.
    We always expand when there are 1 or fewer items left AFTER an
    allocation, so that we can avoid having external pointers exist
    across an allocation.  */
static void
yyexpandGLRStack (yyGLRStack* yystackp)
{
  yyGLRStackItem* yynewItems;
  yyGLRStackItem* yyp0, *yyp1;
  size_t yysize, yynewSize;
  size_t yyn;
  yysize = yystackp->yynextFree - yystackp->yyitems;
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
	  if (yys0->yypred != NULL)
	    yys1->yypred =
	      YYRELOC (yyp0, yyp1, yys0->yypred, yystate);
	  if (! yys0->yyresolved && yys0->yysemantics.yyfirstVal != NULL)
	    yys1->yysemantics.yyfirstVal =
	      YYRELOC(yyp0, yyp1, yys0->yysemantics.yyfirstVal, yyoption);
	}
      else
	{
	  yySemanticOption* yyv0 = &yyp0->yyoption;
	  yySemanticOption* yyv1 = &yyp1->yyoption;
	  if (yyv0->yystate != NULL)
	    yyv1->yystate = YYRELOC (yyp0, yyp1, yyv0->yystate, yystate);
	  if (yyv0->yynext != NULL)
	    yyv1->yynext = YYRELOC (yyp0, yyp1, yyv0->yynext, yyoption);
	}
    }
  if (yystackp->yysplitPoint != NULL)
    yystackp->yysplitPoint = YYRELOC (yystackp->yyitems, yynewItems,
				 yystackp->yysplitPoint, yystate);

  for (yyn = 0; yyn < yystackp->yytops.yysize; yyn += 1)
    if (yystackp->yytops.yystates[yyn] != NULL)
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

/** Assuming that S is a GLRState somewhere on STACK, update the
 *  splitpoint of STACK, if needed, so that it is at least as deep as
 *  S.  */
static inline void
yyupdateSplit (yyGLRStack* yystackp, yyGLRState* yys)
{
  if (yystackp->yysplitPoint != NULL && yystackp->yysplitPoint > yys)
    yystackp->yysplitPoint = yys;
}

/** Invalidate stack #K in STACK.  */
static inline void
yymarkStackDeleted (yyGLRStack* yystackp, size_t yyk)
{
  if (yystackp->yytops.yystates[yyk] != NULL)
    yystackp->yylastDeleted = yystackp->yytops.yystates[yyk];
  yystackp->yytops.yystates[yyk] = NULL;
}

/** Undelete the last stack that was marked as deleted.  Can only be
    done once after a deletion, and only when all other stacks have
    been deleted.  */
static void
yyundeleteLastStack (yyGLRStack* yystackp)
{
  if (yystackp->yylastDeleted == NULL || yystackp->yytops.yysize != 0)
    return;
  yystackp->yytops.yystates[0] = yystackp->yylastDeleted;
  yystackp->yytops.yysize = 1;
  YYDPRINTF ((stderr, "Restoring last deleted stack as stack #0.\n"));
  yystackp->yylastDeleted = NULL;
}

static inline void
yyremoveDeletes (yyGLRStack* yystackp)
{
  size_t yyi, yyj;
  yyi = yyj = 0;
  while (yyj < yystackp->yytops.yysize)
    {
      if (yystackp->yytops.yystates[yyi] == NULL)
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

/** Shift to a new state on stack #K of STACK, corresponding to LR state
 * LRSTATE, at input position POSN, with (resolved) semantic value SVAL.  */
static inline void
yyglrShift (yyGLRStack* yystackp, size_t yyk, yyStateNum yylrState,
	    size_t yyposn,
	    YYSTYPE* yyvalp, YYLTYPE* yylocp)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yytrue;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yysval = *yyvalp;
  yynewState->yyloc = *yylocp;
  yystackp->yytops.yystates[yyk] = yynewState;

  YY_RESERVE_GLRSTACK (yystackp);
}

/** Shift stack #K of YYSTACK, to a new state corresponding to LR
 *  state YYLRSTATE, at input position YYPOSN, with the (unresolved)
 *  semantic value of YYRHS under the action for YYRULE.  */
static inline void
yyglrShiftDefer (yyGLRStack* yystackp, size_t yyk, yyStateNum yylrState,
		 size_t yyposn, yyGLRState* rhs, yyRuleNum yyrule)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yyfalse;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yyfirstVal = NULL;
  yystackp->yytops.yystates[yyk] = yynewState;

  /* Invokes YY_RESERVE_GLRSTACK.  */
  yyaddDeferredAction (yystackp, yyk, yynewState, rhs, yyrule);
}

/** Pop the symbols consumed by reduction #RULE from the top of stack
 *  #K of STACK, and perform the appropriate semantic action on their
 *  semantic values.  Assumes that all ambiguities in semantic values
 *  have been previously resolved.  Set *VALP to the resulting value,
 *  and *LOCP to the computed location (if any).  Return value is as
 *  for userAction.  */
static inline YYRESULTTAG
yydoAction (yyGLRStack* yystackp, size_t yyk, yyRuleNum yyrule,
	    YYSTYPE* yyvalp, YYLTYPE* yylocp)
{
  int yynrhs = yyrhsLength (yyrule);

  if (yystackp->yysplitPoint == NULL)
    {
      /* Standard special case: single stack.  */
      yyGLRStackItem* rhs = (yyGLRStackItem*) yystackp->yytops.yystates[yyk];
      YYASSERT (yyk == 0);
      yystackp->yynextFree -= yynrhs;
      yystackp->yyspaceLeft += yynrhs;
      yystackp->yytops.yystates[0] = & yystackp->yynextFree[-1].yystate;
      return yyuserAction (yyrule, yynrhs, rhs,
			   yyvalp, yylocp, yystackp);
    }
  else
    {
      /* At present, doAction is never called in nondeterministic
       * mode, so this branch is never taken.  It is here in
       * anticipation of a future feature that will allow immediate
       * evaluation of selected actions in nondeterministic mode.  */
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
      return yyuserAction (yyrule, yynrhs, yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
			   yyvalp, yylocp, yystackp);
    }
}

#if !YYDEBUG
# define YY_REDUCE_PRINT(Args)
#else
# define YY_REDUCE_PRINT(Args)		\
do {					\
  if (yydebug)				\
    yy_reduce_print Args;		\
} while (YYID (0))

/*----------------------------------------------------------.
| Report that the RULE is going to be reduced on stack #K.  |
`----------------------------------------------------------*/

/*ARGSUSED*/ static inline void
yy_reduce_print (yyGLRStack* yystackp, size_t yyk, yyRuleNum yyrule,
		 YYSTYPE* yyvalp, YYLTYPE* yylocp)
{
  int yynrhs = yyrhsLength (yyrule);
  yybool yynormal __attribute__ ((__unused__)) =
    (yystackp->yysplitPoint == NULL);
  yyGLRStackItem* yyvsp = (yyGLRStackItem*) yystackp->yytops.yystates[yyk];
  int yylow = 1;
  int yyi;
  YYUSE (yyvalp);
  YYUSE (yylocp);
  YYFPRINTF (stderr, "Reducing stack %lu by rule %d (line %lu):\n",
	     (unsigned long int) yyk, yyrule - 1,
	     (unsigned long int) yyrline[yyrule]);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(((yyGLRStackItem const *)yyvsp)[YYFILL ((yyi + 1) - (yynrhs))].yystate.yysemantics.yysval)
		       		       );
      fprintf (stderr, "\n");
    }
}
#endif

/** Pop items off stack #K of STACK according to grammar rule RULE,
 *  and push back on the resulting nonterminal symbol.  Perform the
 *  semantic action associated with RULE and store its value with the
 *  newly pushed state, if FORCEEVAL or if STACK is currently
 *  unambiguous.  Otherwise, store the deferred semantic action with
 *  the new state.  If the new state would have an identical input
 *  position, LR state, and predecessor to an existing state on the stack,
 *  it is identified with that existing state, eliminating stack #K from
 *  the STACK.  In this case, the (necessarily deferred) semantic value is
 *  added to the options for the existing state's semantic value.
 */
static inline YYRESULTTAG
yyglrReduce (yyGLRStack* yystackp, size_t yyk, yyRuleNum yyrule,
	     yybool yyforceEval)
{
  size_t yyposn = yystackp->yytops.yystates[yyk]->yyposn;

  if (yyforceEval || yystackp->yysplitPoint == NULL)
    {
      YYSTYPE yysval;
      YYLTYPE yyloc;

      YY_REDUCE_PRINT ((yystackp, yyk, yyrule, &yysval, &yyloc));
      YYCHK (yydoAction (yystackp, yyk, yyrule, &yysval,
			 &yyloc));
      YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyrule], &yysval, &yyloc);
      yyglrShift (yystackp, yyk,
		  yyLRgotoState (yystackp->yytops.yystates[yyk]->yylrState,
				 yylhsNonterm (yyrule)),
		  yyposn, &yysval, &yyloc);
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
		  "Reduced stack %lu by rule #%d; action deferred.  Now in state %d.\n",
		  (unsigned long int) yyk, yyrule - 1, yynewLRState));
      for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
	if (yyi != yyk && yystackp->yytops.yystates[yyi] != NULL)
	  {
	    yyGLRState* yyp, *yysplit = yystackp->yysplitPoint;
	    yyp = yystackp->yytops.yystates[yyi];
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
  if (yystackp->yysplitPoint == NULL)
    {
      YYASSERT (yyk == 0);
      yystackp->yysplitPoint = yystackp->yytops.yystates[yyk];
    }
  if (yystackp->yytops.yysize >= yystackp->yytops.yycapacity)
    {
      yyGLRState** yynewStates;
      yybool* yynewLookaheadNeeds;

      yynewStates = NULL;

      if (yystackp->yytops.yycapacity
	  > (YYSIZEMAX / (2 * sizeof yynewStates[0])))
	yyMemoryExhausted (yystackp);
      yystackp->yytops.yycapacity *= 2;

      yynewStates =
	(yyGLRState**) YYREALLOC (yystackp->yytops.yystates,
				  (yystackp->yytops.yycapacity
				   * sizeof yynewStates[0]));
      if (yynewStates == NULL)
	yyMemoryExhausted (yystackp);
      yystackp->yytops.yystates = yynewStates;

      yynewLookaheadNeeds =
	(yybool*) YYREALLOC (yystackp->yytops.yylookaheadNeeds,
			     (yystackp->yytops.yycapacity
			      * sizeof yynewLookaheadNeeds[0]));
      if (yynewLookaheadNeeds == NULL)
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

/** True iff Y0 and Y1 represent identical options at the top level.
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

/** Assuming identicalOptions (Y0,Y1), destructively merge the
 *  alternative semantic values for the RHS-symbols of Y1 and Y0.  */
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
	  yySemanticOption** yyz0p;
	  yySemanticOption* yyz1;
	  yyz0p = &yys0->yysemantics.yyfirstVal;
	  yyz1 = yys1->yysemantics.yyfirstVal;
	  while (YYID (yytrue))
	    {
	      if (yyz1 == *yyz0p || yyz1 == NULL)
		break;
	      else if (*yyz0p == NULL)
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


/** Resolve the previous N states starting at and including state S.  If result
 *  != yyok, some states may have been left unresolved possibly with empty
 *  semantic option chains.  Regardless of whether result = yyok, each state
 *  has been left with consistent data so that yydestroyGLRState can be invoked
 *  if necessary.  */
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

/** Resolve the states for the RHS of OPT, perform its user action, and return
 *  the semantic value and location.  Regardless of whether result = yyok, all
 *  RHS states have been destroyed (assuming the user action destroys all RHS
 *  semantic values if invoked).  */
static YYRESULTTAG
yyresolveAction (yySemanticOption* yyopt, yyGLRStack* yystackp,
		 YYSTYPE* yyvalp, YYLTYPE* yylocp)
{
  yyGLRStackItem yyrhsVals[YYMAXRHS + YYMAXLEFT + 1];
  int yynrhs;
  int yychar_current;
  YYSTYPE yylval_current;
  YYLTYPE yylloc_current;
  YYRESULTTAG yyflag;

  yynrhs = yyrhsLength (yyopt->yyrule);
  yyflag = yyresolveStates (yyopt->yystate, yynrhs, yystackp);
  if (yyflag != yyok)
    {
      yyGLRState *yys;
      for (yys = yyopt->yystate; yynrhs > 0; yys = yys->yypred, yynrhs -= 1)
	yydestroyGLRState ("Cleanup: popping", yys);
      return yyflag;
    }

  yyrhsVals[YYMAXRHS + YYMAXLEFT].yystate.yypred = yyopt->yystate;
  yychar_current = yychar;
  yylval_current = yylval;
  yylloc_current = yylloc;
  yychar = yyopt->yyrawchar;
  yylval = yyopt->yyval;
  yylloc = yyopt->yyloc;
  yyflag = yyuserAction (yyopt->yyrule, yynrhs,
			   yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
			   yyvalp, yylocp, yystackp);
  yychar = yychar_current;
  yylval = yylval_current;
  yylloc = yylloc_current;
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
  if (yys == NULL)
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
		       yytokenName (yyrhs[yyprhs[yyx->yyrule]+yyi-1]));
	  else
	    YYFPRINTF (stderr, "%*s%s <tokens %lu .. %lu>\n", yyindent+2, "",
		       yytokenName (yyrhs[yyprhs[yyx->yyrule]+yyi-1]),
		       (unsigned long int) (yystates[yyi - 1]->yyposn + 1),
		       (unsigned long int) yystates[yyi]->yyposn);
	}
      else
	yyreportTree (yystates[yyi]->yysemantics.yyfirstVal, yyindent+2);
    }
}
#endif

/*ARGSUSED*/ static YYRESULTTAG
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

/** Starting at and including state S1, resolve the location for each of the
 *  previous N1 states that is unresolved.  The first semantic option of a state
 *  is always chosen.  */
static void
yyresolveLocations (yyGLRState* yys1, int yyn1,
		    yyGLRStack *yystackp)
{
  if (0 < yyn1)
    {
      yyresolveLocations (yys1->yypred, yyn1 - 1, yystackp);
      if (!yys1->yyresolved)
	{
	  yySemanticOption *yyoption;
	  yyGLRStackItem yyrhsloc[1 + YYMAXRHS];
	  int yynrhs;
	  int yychar_current;
	  YYSTYPE yylval_current;
	  YYLTYPE yylloc_current;
	  yyoption = yys1->yysemantics.yyfirstVal;
	  YYASSERT (yyoption != NULL);
	  yynrhs = yyrhsLength (yyoption->yyrule);
	  if (yynrhs > 0)
	    {
	      yyGLRState *yys;
	      int yyn;
	      yyresolveLocations (yyoption->yystate, yynrhs,
				  yystackp);
	      for (yys = yyoption->yystate, yyn = yynrhs;
		   yyn > 0;
		   yys = yys->yypred, yyn -= 1)
		yyrhsloc[yyn].yystate.yyloc = yys->yyloc;
	    }
	  else
	    {
	      /* Both yyresolveAction and yyresolveLocations traverse the GSS
		 in reverse rightmost order.  It is only necessary to invoke
		 yyresolveLocations on a subforest for which yyresolveAction
		 would have been invoked next had an ambiguity not been
		 detected.  Thus the location of the previous state (but not
		 necessarily the previous state itself) is guaranteed to be
		 resolved already.  */
	      yyGLRState *yyprevious = yyoption->yystate;
	      yyrhsloc[0].yystate.yyloc = yyprevious->yyloc;
	    }
	  yychar_current = yychar;
	  yylval_current = yylval;
	  yylloc_current = yylloc;
	  yychar = yyoption->yyrawchar;
	  yylval = yyoption->yyval;
	  yylloc = yyoption->yyloc;
	  YYLLOC_DEFAULT ((yys1->yyloc), yyrhsloc, yynrhs);
	  yychar = yychar_current;
	  yylval = yylval_current;
	  yylloc = yylloc_current;
	}
    }
}

/** Resolve the ambiguity represented in state S, perform the indicated
 *  actions, and set the semantic value of S.  If result != yyok, the chain of
 *  semantic options in S has been cleared instead or it has been left
 *  unmodified except that redundant options may have been removed.  Regardless
 *  of whether result = yyok, S has been left with consistent data so that
 *  yydestroyGLRState can be invoked if necessary.  */
static YYRESULTTAG
yyresolveValue (yyGLRState* yys, yyGLRStack* yystackp)
{
  yySemanticOption* yyoptionList = yys->yysemantics.yyfirstVal;
  yySemanticOption* yybest;
  yySemanticOption** yypp;
  yybool yymerge;
  YYSTYPE yysval;
  YYRESULTTAG yyflag;
  YYLTYPE *yylocp = &yys->yyloc;

  yybest = yyoptionList;
  yymerge = yyfalse;
  for (yypp = &yyoptionList->yynext; *yypp != NULL; )
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
	      yyresolveLocations (yys, 1, yystackp);
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
      yyflag = yyresolveAction (yybest, yystackp, &yysval,
				yylocp);
      if (yyflag == yyok)
	for (yyp = yybest->yynext; yyp != NULL; yyp = yyp->yynext)
	  {
	    if (yyprec == yydprec[yyp->yyrule])
	      {
		YYSTYPE yysval_other;
		YYLTYPE yydummy;
		yyflag = yyresolveAction (yyp, yystackp, &yysval_other,
					  &yydummy);
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
    yyflag = yyresolveAction (yybest, yystackp, &yysval, yylocp);

  if (yyflag == yyok)
    {
      yys->yyresolved = yytrue;
      yys->yysemantics.yysval = yysval;
    }
  else
    yys->yysemantics.yyfirstVal = NULL;
  return yyflag;
}

static YYRESULTTAG
yyresolveStack (yyGLRStack* yystackp)
{
  if (yystackp->yysplitPoint != NULL)
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

  if (yystackp->yytops.yysize != 1 || yystackp->yysplitPoint == NULL)
    return;

  for (yyp = yystackp->yytops.yystates[0], yyq = yyp->yypred, yyr = NULL;
       yyp != yystackp->yysplitPoint;
       yyr = yyp, yyp = yyq, yyq = yyp->yypred)
    yyp->yypred = yyr;

  yystackp->yyspaceLeft += yystackp->yynextFree - yystackp->yyitems;
  yystackp->yynextFree = ((yyGLRStackItem*) yystackp->yysplitPoint) + 1;
  yystackp->yyspaceLeft -= yystackp->yynextFree - yystackp->yyitems;
  yystackp->yysplitPoint = NULL;
  yystackp->yylastDeleted = NULL;

  while (yyr != NULL)
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
  int yyaction;
  const short int* yyconflicts;
  yyRuleNum yyrule;

  while (yystackp->yytops.yystates[yyk] != NULL)
    {
      yyStateNum yystate = yystackp->yytops.yystates[yyk]->yylrState;
      YYDPRINTF ((stderr, "Stack %lu Entering state %d\n",
		  (unsigned long int) yyk, yystate));

      YYASSERT (yystate != YYFINAL);

      if (yyisDefaultedState (yystate))
	{
	  yyrule = yydefaultAction (yystate);
	  if (yyrule == 0)
	    {
	      YYDPRINTF ((stderr, "Stack %lu dies.\n",
			  (unsigned long int) yyk));
	      yymarkStackDeleted (yystackp, yyk);
	      return yyok;
	    }
	  YYCHK (yyglrReduce (yystackp, yyk, yyrule, yyfalse));
	}
      else
	{
	  yySymbol yytoken;
	  yystackp->yytops.yylookaheadNeeds[yyk] = yytrue;
	  if (yychar == YYEMPTY)
	    {
	      YYDPRINTF ((stderr, "Reading a token: "));
	      yychar = YYLEX;
	      yytoken = YYTRANSLATE (yychar);
	      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
	    }
	  else
	    yytoken = YYTRANSLATE (yychar);
	  yygetLRActions (yystate, yytoken, &yyaction, &yyconflicts);

	  while (*yyconflicts != 0)
	    {
	      size_t yynewStack = yysplitStack (yystackp, yyk);
	      YYDPRINTF ((stderr, "Splitting off stack %lu from %lu.\n",
			  (unsigned long int) yynewStack,
			  (unsigned long int) yyk));
	      YYCHK (yyglrReduce (yystackp, yynewStack,
				  *yyconflicts, yyfalse));
	      YYCHK (yyprocessOneStack (yystackp, yynewStack,
					yyposn));
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
	    YYCHK (yyglrReduce (yystackp, yyk, -yyaction,
				yyfalse));
	}
    }
  return yyok;
}

/*ARGSUSED*/ static void
yyreportSyntaxError (yyGLRStack* yystackp)
{
  if (yystackp->yyerrState == 0)
    {
#if YYERROR_VERBOSE
      int yyn;
      yyn = yypact[yystackp->yytops.yystates[0]->yylrState];
      if (YYPACT_NINF < yyn && yyn <= YYLAST)
	{
	  yySymbol yytoken = YYTRANSLATE (yychar);
	  size_t yysize0 = yytnamerr (NULL, yytokenName (yytoken));
	  size_t yysize = yysize0;
	  size_t yysize1;
	  yybool yysize_overflow = yyfalse;
	  char* yymsg = NULL;
	  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
	  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
	  int yyx;
	  char *yyfmt;
	  char const *yyf;
	  static char const yyunexpected[] = "syntax error, unexpected %s";
	  static char const yyexpecting[] = ", expecting %s";
	  static char const yyor[] = " or %s";
	  char yyformat[sizeof yyunexpected
			+ sizeof yyexpecting - 1
			+ ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
			   * (sizeof yyor - 1))];
	  char const *yyprefix = yyexpecting;

	  /* Start YYX at -YYN if negative to avoid negative indexes in
	     YYCHECK.  */
	  int yyxbegin = yyn < 0 ? -yyn : 0;

	  /* Stay within bounds of both yycheck and yytname.  */
	  int yychecklim = YYLAST - yyn + 1;
	  int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
	  int yycount = 1;

	  yyarg[0] = yytokenName (yytoken);
	  yyfmt = yystpcpy (yyformat, yyunexpected);

	  for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	    if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	      {
		if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
		  {
		    yycount = 1;
		    yysize = yysize0;
		    yyformat[sizeof yyunexpected - 1] = '\0';
		    break;
		  }
		yyarg[yycount++] = yytokenName (yyx);
		yysize1 = yysize + yytnamerr (NULL, yytokenName (yyx));
		yysize_overflow |= yysize1 < yysize;
		yysize = yysize1;
		yyfmt = yystpcpy (yyfmt, yyprefix);
		yyprefix = yyor;
	      }

	  yyf = YY_(yyformat);
	  yysize1 = yysize + strlen (yyf);
	  yysize_overflow |= yysize1 < yysize;
	  yysize = yysize1;

	  if (!yysize_overflow)
	    yymsg = (char *) YYMALLOC (yysize);

	  if (yymsg)
	    {
	      char *yyp = yymsg;
	      int yyi = 0;
	      while ((*yyp = *yyf))
		{
		  if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		    {
		      yyp += yytnamerr (yyp, yyarg[yyi++]);
		      yyf += 2;
		    }
		  else
		    {
		      yyp++;
		      yyf++;
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
      else
#endif /* YYERROR_VERBOSE */
	yyerror (YY_("syntax error"));
      yynerrs += 1;
    }
}

/* Recover from a syntax error on *YYSTACKP, assuming that *YYSTACKP->YYTOKENP,
   yylval, and yylloc are the syntactic category, semantic value, and location
   of the look-ahead.  */
/*ARGSUSED*/ static void
yyrecoverSyntaxError (yyGLRStack* yystackp)
{
  size_t yyk;
  int yyj;

  if (yystackp->yyerrState == 3)
    /* We just shifted the error token and (perhaps) took some
       reductions.  Skip tokens until we can proceed.  */
    while (YYID (yytrue))
      {
	yySymbol yytoken;
	if (yychar == YYEOF)
	  yyFail (yystackp, NULL);
	if (yychar != YYEMPTY)
	  {
	    yytoken = YYTRANSLATE (yychar);
	    yydestruct ("Error: discarding",
			yytoken, &yylval);
	  }
	YYDPRINTF ((stderr, "Reading a token: "));
	yychar = YYLEX;
	yytoken = YYTRANSLATE (yychar);
	YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
	yyj = yypact[yystackp->yytops.yystates[0]->yylrState];
	if (yyis_pact_ninf (yyj))
	  return;
	yyj += yytoken;
	if (yyj < 0 || YYLAST < yyj || yycheck[yyj] != yytoken)
	  {
	    if (yydefact[yystackp->yytops.yystates[0]->yylrState] != 0)
	      return;
	  }
	else if (yytable[yyj] != 0 && ! yyis_table_ninf (yytable[yyj]))
	  return;
      }

  /* Reduce to one stack.  */
  for (yyk = 0; yyk < yystackp->yytops.yysize; yyk += 1)
    if (yystackp->yytops.yystates[yyk] != NULL)
      break;
  if (yyk >= yystackp->yytops.yysize)
    yyFail (yystackp, NULL);
  for (yyk += 1; yyk < yystackp->yytops.yysize; yyk += 1)
    yymarkStackDeleted (yystackp, yyk);
  yyremoveDeletes (yystackp);
  yycompressStack (yystackp);

  /* Now pop stack until we find a state that shifts the error token.  */
  yystackp->yyerrState = 3;
  while (yystackp->yytops.yystates[0] != NULL)
    {
      yyGLRState *yys = yystackp->yytops.yystates[0];
      yyj = yypact[yys->yylrState];
      if (! yyis_pact_ninf (yyj))
	{
	  yyj += YYTERROR;
	  if (0 <= yyj && yyj <= YYLAST && yycheck[yyj] == YYTERROR
	      && yyisShiftAction (yytable[yyj]))
	    {
	      /* Shift the error token having adjusted its location.  */
	      YYLTYPE yyerrloc;
	      YY_SYMBOL_PRINT ("Shifting", yystos[yytable[yyj]],
			       &yylval, &yyerrloc);
	      yyglrShift (yystackp, 0, yytable[yyj],
			  yys->yyposn, &yylval, &yyerrloc);
	      yys = yystackp->yytops.yystates[0];
	      break;
	    }
	}

      yydestroyGLRState ("Error: popping", yys);
      yystackp->yytops.yystates[0] = yys->yypred;
      yystackp->yynextFree -= 1;
      yystackp->yyspaceLeft += 1;
    }
  if (yystackp->yytops.yystates[0] == NULL)
    yyFail (yystackp, NULL);
}

#define YYCHK1(YYE)							     \
  do {									     \
    switch (YYE) {							     \
    case yyok:								     \
      break;								     \
    case yyabort:							     \
      goto yyabortlab;							     \
    case yyaccept:							     \
      goto yyacceptlab;							     \
    case yyerr:								     \
      goto yyuser_error;						     \
    default:								     \
      goto yybuglab;							     \
    }									     \
  } while (YYID (0))


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
  yyglrShift (&yystack, 0, 0, 0, &yylval, &yylloc);
  yyposn = 0;

  while (YYID (yytrue))
    {
      /* For efficiency, we have two loops, the first of which is
	 specialized to deterministic operation (single stack, no
	 potential ambiguity).  */
      /* Standard mode */
      while (YYID (yytrue))
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
		  yychar = YYLEX;
		  yytoken = YYTRANSLATE (yychar);
		  YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
		}
	      else
		yytoken = YYTRANSLATE (yychar);
	      yygetLRActions (yystate, yytoken, &yyaction, &yyconflicts);
	      if (*yyconflicts != 0)
		break;
	      if (yyisShiftAction (yyaction))
		{
		  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
		  if (yychar != YYEOF)
		    yychar = YYEMPTY;
		  yyposn += 1;
		  yyglrShift (&yystack, 0, yyaction, yyposn, &yylval, &yylloc);
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

      while (YYID (yytrue))
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
			  &yylval, &yylloc);
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
  if (yychar != YYEOF && yychar != YYEMPTY)
    yydestruct ("Cleanup: discarding lookahead",
		YYTRANSLATE (yychar),
		&yylval);

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

  /* Make sure YYID is used.  */
  return YYID (yyresult);
}

/* DEBUGGING ONLY */
#ifdef YYDEBUG
static void yypstack (yyGLRStack* yystackp, size_t yyk)
  __attribute__ ((__unused__));
static void yypdumpstack (yyGLRStack* yystackp) __attribute__ ((__unused__));

static void
yy_yypstack (yyGLRState* yys)
{
  if (yys->yypred)
    {
      yy_yypstack (yys->yypred);
      fprintf (stderr, " -> ");
    }
  fprintf (stderr, "%d@%lu", yys->yylrState, (unsigned long int) yys->yyposn);
}

static void
yypstates (yyGLRState* yyst)
{
  if (yyst == NULL)
    fprintf (stderr, "<null>");
  else
    yy_yypstack (yyst);
  fprintf (stderr, "\n");
}

static void
yypstack (yyGLRStack* yystackp, size_t yyk)
{
  yypstates (yystackp->yytops.yystates[yyk]);
}

#define YYINDEX(YYX)							     \
    ((YYX) == NULL ? -1 : (yyGLRStackItem*) (YYX) - yystackp->yyitems)


static void
yypdumpstack (yyGLRStack* yystackp)
{
  yyGLRStackItem* yyp;
  size_t yyi;
  for (yyp = yystackp->yyitems; yyp < yystackp->yynextFree; yyp += 1)
    {
      fprintf (stderr, "%3lu. ", (unsigned long int) (yyp - yystackp->yyitems));
      if (*(yybool *) yyp)
	{
	  fprintf (stderr, "Res: %d, LR State: %d, posn: %lu, pred: %ld",
		   yyp->yystate.yyresolved, yyp->yystate.yylrState,
		   (unsigned long int) yyp->yystate.yyposn,
		   (long int) YYINDEX (yyp->yystate.yypred));
	  if (! yyp->yystate.yyresolved)
	    fprintf (stderr, ", firstVal: %ld",
		     (long int) YYINDEX (yyp->yystate.yysemantics.yyfirstVal));
	}
      else
	{
	  fprintf (stderr, "Option. rule: %d, state: %ld, next: %ld",
		   yyp->yyoption.yyrule - 1,
		   (long int) YYINDEX (yyp->yyoption.yystate),
		   (long int) YYINDEX (yyp->yyoption.yynext));
	}
      fprintf (stderr, "\n");
    }
  fprintf (stderr, "Tops:");
  for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
    fprintf (stderr, "%lu: %ld; ", (unsigned long int) yyi,
	     (long int) YYINDEX (yystackp->yytops.yystates[yyi]));
  fprintf (stderr, "\n");
}
#endif


#line 1148 "grammar.y"


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

