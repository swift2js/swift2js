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


/* Copy the first part of user declarations.  */
#line 1 "grammar.y"

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


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE 
#line 23 "grammar.y"
{
    ASTNode * node;
    char *    str;
}
/* Line 204 of glr.c.  */
#line 206 "grammar.mm"
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
#line 253 "grammar.mm"

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
#define YYLAST   1732

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  120
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  270
/* YYNRULES -- Number of rules.  */
#define YYNRULES  524
/* YYNRULES -- Number of states.  */
#define YYNSTATES  798
/* YYMAXRHS -- Maximum number of symbols on right-hand side of rule.  */
#define YYMAXRHS 9
/* YYMAXLEFT -- Maximum number of symbols to the left of a handle
   accessed by $0, $-1, etc., in any rule.  */
#define YYMAXLEFT 0

/* YYTRANSLATE(X) -- Bison symbol number corresponding to X.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   264

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
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const unsigned short int yyprhs[] =
{
       0,     0,     3,     5,     8,     9,    11,    14,    17,    20,
      22,    25,    27,    30,    32,    34,    36,    38,    46,    47,
      49,    50,    52,    62,    64,    66,    72,    76,    78,    80,
      85,    87,    89,    94,    95,    97,    99,   101,   104,   107,
     113,   114,   116,   119,   122,   125,   128,   131,   135,   138,
     143,   144,   146,   149,   152,   154,   157,   160,   163,   165,
     167,   169,   171,   173,   176,   177,   179,   182,   184,   187,
     192,   193,   195,   197,   201,   203,   207,   211,   214,   216,
     220,   222,   224,   228,   232,   236,   240,   242,   246,   248,
     250,   252,   254,   256,   258,   260,   262,   264,   266,   268,
     270,   272,   274,   276,   279,   280,   282,   285,   286,   288,
     290,   292,   294,   296,   298,   300,   302,   304,   306,   310,
     313,   318,   319,   321,   322,   324,   326,   328,   330,   332,
     334,   336,   338,   340,   344,   346,   348,   353,   355,   359,
     362,   364,   365,   367,   370,   373,   378,   383,   388,   394,
     398,   400,   405,   406,   408,   413,   417,   422,   423,   425,
     429,   434,   435,   437,   442,   445,   448,   453,   454,   456,
     461,   466,   471,   474,   477,   479,   482,   488,   489,   491,
     495,   497,   499,   502,   503,   505,   509,   511,   514,   515,
     517,   520,   525,   526,   528,   530,   534,   542,   543,   545,
     546,   548,   549,   551,   552,   554,   555,   557,   565,   568,
     570,   572,   574,   576,   579,   582,   585,   591,   592,   594,
     597,   599,   601,   605,   607,   611,   614,   615,   617,   619,
     621,   629,   630,   632,   635,   637,   639,   643,   645,   649,
     652,   653,   655,   658,   665,   666,   668,   670,   674,   681,
     683,   687,   693,   695,   699,   700,   702,   704,   706,   708,
     710,   712,   715,   720,   725,   729,   733,   737,   738,   740,
     745,   749,   750,   752,   754,   758,   763,   767,   771,   775,
     779,   783,   787,   789,   791,   793,   799,   805,   812,   813,
     815,   818,   819,   821,   822,   824,   827,   828,   831,   833,
     835,   837,   840,   841,   843,   846,   848,   851,   853,   855,
     857,   859,   861,   864,   867,   871,   872,   874,   876,   880,
     882,   887,   888,   890,   891,   893,   895,   897,   900,   904,
     906,   910,   911,   913,   915,   919,   920,   922,   925,   928,
     932,   936,   940,   941,   942,   944,   947,   949,   953,   956,
     957,   959,   961,   964,   967,   970,   975,   977,   979,   982,
     985,   989,   990,   992,   995,   996,   998,  1000,  1002,  1004,
    1006,  1008,  1010,  1012,  1014,  1016,  1018,  1020,  1022,  1024,
    1026,  1030,  1031,  1033,  1036,  1040,  1041,  1043,  1045,  1049,
    1053,  1056,  1060,  1064,  1066,  1070,  1075,  1079,  1081,  1083,
    1085,  1089,  1094,  1098,  1103,  1104,  1106,  1110,  1114,  1119,
    1124,  1127,  1132,  1134,  1136,  1138,  1140,  1143,  1147,  1148,
    1150,  1152,  1156,  1158,  1162,  1164,  1166,  1169,  1171,  1173,
    1175,  1177,  1179,  1181,  1183,  1185,  1188,  1192,  1193,  1195,
    1197,  1201,  1205,  1210,  1214,  1218,  1223,  1226,  1229,  1231,
    1235,  1237,  1239,  1241,  1243,  1245,  1247,  1249,  1251,  1253,
    1255,  1257,  1259,  1261,  1263,  1265,  1267,  1269,  1271,  1273,
    1275,  1277,  1279,  1281,  1283,  1285,  1287,  1289,  1291,  1293,
    1295,  1298,  1301,  1304,  1307,  1310,  1313,  1316,  1319,  1321,
    1323,  1325,  1327,  1329,  1331,  1333,  1335,  1339,  1342,  1347,
    1349,  1353,  1354,  1356,  1359,  1361,  1365,  1369,  1373,  1375,
    1379,  1383,  1387,  1390,  1393,  1398,  1399,  1401,  1403,  1407,
    1409,  1413,  1417,  1420,  1422
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const short int yyrhs[] =
{
     121,     0,    -1,   124,    -1,   316,   123,    -1,    -1,   105,
      -1,   170,   123,    -1,   125,   123,    -1,   134,   123,    -1,
     149,    -1,   152,   123,    -1,   122,    -1,   122,   124,    -1,
     126,    -1,   130,    -1,   131,    -1,   133,    -1,    27,   127,
     105,   128,   105,   128,   176,    -1,    -1,   129,    -1,    -1,
     316,    -1,    27,    97,   127,   105,   128,   105,   128,    98,
     176,    -1,   188,    -1,   317,    -1,    27,   292,    26,   316,
     176,    -1,    31,   132,   176,    -1,   316,    -1,   170,    -1,
      22,   176,    31,   132,    -1,   135,    -1,   139,    -1,    25,
     137,   176,   136,    -1,    -1,   138,    -1,   316,    -1,   170,
      -1,    23,   176,    -1,    23,   135,    -1,    29,   316,   101,
     140,   102,    -1,    -1,   141,    -1,   142,   140,    -1,   143,
     124,    -1,   146,   124,    -1,   143,   105,    -1,   146,   105,
      -1,    19,   144,   104,    -1,   292,   145,    -1,   292,   145,
     103,   144,    -1,    -1,   147,    -1,    21,   104,    -1,    30,
     148,    -1,   316,    -1,   150,   125,    -1,   150,   139,    -1,
     151,   104,    -1,     3,    -1,   153,    -1,   155,    -1,   156,
      -1,   157,    -1,    18,   154,    -1,    -1,   151,    -1,    20,
     154,    -1,    24,    -1,    28,   128,    -1,    71,   160,   159,
      72,    -1,    -1,   162,    -1,   161,    -1,   161,   103,   160,
      -1,   372,    -1,   372,   104,   371,    -1,   372,   104,   383,
      -1,    30,   163,    -1,   164,    -1,   164,   103,   163,    -1,
     165,    -1,   166,    -1,   371,   104,   371,    -1,   371,   104,
     383,    -1,   371,    78,   371,    -1,    71,   168,    72,    -1,
     169,    -1,   169,   103,   168,    -1,   369,    -1,   177,    -1,
     183,    -1,   188,    -1,   205,    -1,   209,    -1,   231,    -1,
     251,    -1,   255,    -1,   258,    -1,   270,    -1,   274,    -1,
     275,    -1,   277,    -1,   280,    -1,   170,   172,    -1,    -1,
     171,    -1,   175,   174,    -1,    -1,   173,    -1,     4,    -1,
      46,    -1,    48,    -1,    50,    -1,    13,    -1,    56,    -1,
      57,    -1,    58,    -1,    59,    -1,   101,   124,   102,    -1,
     101,   102,    -1,   178,     9,   179,   181,    -1,    -1,   313,
      -1,    -1,   180,    -1,    16,    -1,    14,    -1,     4,    -1,
       6,    -1,    12,    -1,    17,    -1,     8,    -1,   182,    -1,
     182,    77,   181,    -1,     3,    -1,   365,    -1,   178,   174,
      11,   184,    -1,   185,    -1,   185,   103,   184,    -1,   292,
     187,    -1,   292,    -1,    -1,   187,    -1,    65,   316,    -1,
     189,   184,    -1,   189,   190,   370,   176,    -1,   189,   190,
     370,   191,    -1,   189,   190,   370,   197,    -1,   189,   190,
     370,   186,   201,    -1,   178,   174,    17,    -1,     3,    -1,
     101,   193,   192,   102,    -1,    -1,   194,    -1,   101,   194,
     193,   102,    -1,   178,    42,   176,    -1,   178,    55,   195,
     176,    -1,    -1,   196,    -1,    97,     3,    98,    -1,   101,
     199,   198,   102,    -1,    -1,   200,    -1,   101,   200,   199,
     102,    -1,   178,    42,    -1,   178,    55,    -1,   101,   203,
     202,   102,    -1,    -1,   204,    -1,   101,   204,   203,   102,
      -1,   178,    60,   195,   176,    -1,   178,    41,   195,   176,
      -1,   206,   208,    -1,    16,   207,    -1,     3,    -1,    65,
     369,    -1,   211,   212,   210,   213,   216,    -1,    -1,   158,
      -1,   178,   174,     8,    -1,     3,    -1,   365,    -1,   217,
     214,    -1,    -1,   215,    -1,    87,   178,   369,    -1,   176,
      -1,   219,   218,    -1,    -1,   217,    -1,    97,    98,    -1,
      97,   221,   220,    98,    -1,    -1,    82,    -1,   222,    -1,
     222,   103,   221,    -1,   223,   224,   225,   228,   226,   370,
     227,    -1,    -1,    44,    -1,    -1,    11,    -1,    -1,   108,
      -1,    -1,   229,    -1,    -1,   230,    -1,   223,    17,   225,
     228,   226,   370,   227,    -1,   178,   369,    -1,     3,    -1,
     107,    -1,     3,    -1,   107,    -1,    65,   316,    -1,   178,
     232,    -1,   178,   242,    -1,   240,   210,   101,   233,   102,
      -1,    -1,   234,    -1,   235,   233,    -1,   170,    -1,   236,
      -1,   178,    19,   237,    -1,   238,    -1,   238,   103,   237,
      -1,   241,   239,    -1,    -1,   373,    -1,     3,    -1,     3,
      -1,   240,   210,   104,   371,   101,   243,   102,    -1,    -1,
     244,    -1,   245,   243,    -1,   170,    -1,   246,    -1,   178,
      19,   247,    -1,   248,    -1,   248,   103,   247,    -1,   241,
     249,    -1,    -1,   250,    -1,    65,   364,    -1,   178,    14,
     253,   210,   252,   254,    -1,    -1,   388,    -1,     3,    -1,
     101,   172,   102,    -1,   178,     4,   256,   210,   252,   257,
      -1,     3,    -1,   101,   172,   102,    -1,   178,    12,   259,
     252,   260,    -1,     3,    -1,   101,   261,   102,    -1,    -1,
     263,    -1,   264,    -1,   265,    -1,   266,    -1,   267,    -1,
     268,    -1,   262,   261,    -1,   189,   190,   370,   197,    -1,
     211,   212,   210,   213,    -1,   271,   210,   219,    -1,   278,
     279,   197,    -1,   206,   252,   269,    -1,    -1,   208,    -1,
     271,   210,   219,   273,    -1,   178,   272,    10,    -1,    -1,
     113,    -1,   176,    -1,   178,     5,   176,    -1,     7,   371,
     252,   276,    -1,   101,   172,   102,    -1,   278,   279,   176,
      -1,   278,   279,   191,    -1,   278,   279,   197,    -1,   178,
      15,   219,    -1,    87,   178,   369,    -1,   281,    -1,   282,
      -1,   283,    -1,    49,    53,   365,   101,   102,    -1,    49,
      51,   365,   101,   102,    -1,    49,    43,   365,   101,   284,
     102,    -1,    -1,   285,    -1,   286,   287,    -1,    -1,   288,
      -1,    -1,   290,    -1,    52,   289,    -1,    -1,    40,   291,
      -1,    45,    -1,    54,    -1,    47,    -1,   294,   293,    -1,
      -1,   370,    -1,   295,   293,    -1,   296,    -1,   297,   293,
      -1,   301,    -1,   304,    -1,   307,    -1,   107,    -1,     3,
      -1,    17,   292,    -1,    11,   292,    -1,    97,   298,    98,
      -1,    -1,   299,    -1,   300,    -1,   300,   103,   299,    -1,
     292,    -1,   302,    77,   241,   303,    -1,    -1,   371,    -1,
      -1,   297,    -1,   305,    -1,   306,    -1,    34,   369,    -1,
     292,    32,   369,    -1,   316,    -1,   106,   310,   309,    -1,
      -1,   311,    -1,     3,    -1,    97,   312,    98,    -1,    -1,
     314,    -1,   308,   178,    -1,   315,   312,    -1,    97,   312,
      98,    -1,    99,   312,   100,    -1,   101,   312,   102,    -1,
      -1,    -1,   318,    -1,   318,   322,    -1,   316,    -1,   316,
     103,   317,    -1,   319,   352,    -1,    -1,   367,    -1,   320,
      -1,    73,     3,    -1,   366,   318,    -1,    65,   318,    -1,
     110,   316,   104,   318,    -1,   323,    -1,   321,    -1,   321,
     322,    -1,    34,   369,    -1,    32,   324,   369,    -1,    -1,
     110,    -1,     3,   326,    -1,    -1,   167,    -1,   327,    -1,
     336,    -1,   337,    -1,   341,    -1,   347,    -1,   346,    -1,
     351,    -1,   364,    -1,   328,    -1,   333,    -1,   114,    -1,
     115,    -1,   116,    -1,   117,    -1,    99,   329,   100,    -1,
      -1,   330,    -1,   332,   331,    -1,   332,   103,   330,    -1,
      -1,   103,    -1,   316,    -1,    99,   334,   100,    -1,    99,
     104,   100,    -1,   335,   331,    -1,   335,   103,   334,    -1,
     316,   104,   316,    -1,    37,    -1,    37,    77,     3,    -1,
      37,    99,   316,   100,    -1,    37,    77,    10,    -1,   338,
      -1,   339,    -1,   340,    -1,    36,    77,     3,    -1,    36,
      99,   316,   100,    -1,    36,    77,    10,    -1,   101,   342,
     124,   102,    -1,    -1,   343,    -1,   219,   214,    26,    -1,
     363,   214,    26,    -1,   344,   219,   214,    26,    -1,   344,
     363,   214,    26,    -1,   344,    26,    -1,    99,   345,   316,
     100,    -1,    59,    -1,    56,    -1,    57,    -1,    58,    -1,
      77,     3,    -1,    97,   348,    98,    -1,    -1,   349,    -1,
     350,    -1,   350,   103,   349,    -1,   316,    -1,     3,   104,
     316,    -1,   107,    -1,   325,    -1,   352,   368,    -1,   353,
      -1,   356,    -1,   357,    -1,   358,    -1,   359,    -1,   360,
      -1,   361,    -1,   362,    -1,   352,   347,    -1,   352,   354,
     355,    -1,    -1,   347,    -1,   341,    -1,   352,    77,    10,
      -1,   352,    77,    61,    -1,   352,    77,     3,   326,    -1,
     352,    77,    37,    -1,   352,    77,   118,    -1,   352,    99,
     317,   100,    -1,   352,    68,    -1,   352,   110,    -1,     3,
      -1,     3,   103,   363,    -1,    61,    -1,    63,    -1,    62,
      -1,   366,    -1,   367,    -1,   368,    -1,    64,    -1,    91,
      -1,    78,    -1,    79,    -1,    66,    -1,    89,    -1,    67,
      -1,    88,    -1,    68,    -1,    69,    -1,    90,    -1,    70,
      -1,    92,    -1,    71,    -1,    72,    -1,    73,    -1,    85,
      -1,    74,    -1,    86,    -1,    75,    -1,    94,    -1,    76,
      -1,    95,    -1,    77,    -1,   111,    80,    -1,   111,    81,
      -1,   111,    68,    -1,   111,    76,    -1,   111,    67,    -1,
     111,    66,    -1,   112,    80,    -1,   112,    81,    -1,   380,
      -1,   379,    -1,   371,    -1,   373,    -1,   381,    -1,   382,
      -1,   383,    -1,   387,    -1,   104,   178,   369,    -1,   372,
     326,    -1,   372,   326,    77,   371,    -1,     3,    -1,    97,
     374,    98,    -1,    -1,   375,    -1,   376,   220,    -1,   377,
      -1,   377,   103,   376,    -1,   178,   223,   369,    -1,   223,
     378,   370,    -1,     3,    -1,   369,    87,   369,    -1,   369,
      99,   100,    -1,   380,    99,   100,    -1,   369,   110,    -1,
     369,    68,    -1,    12,    71,   384,    72,    -1,    -1,   385,
      -1,   386,    -1,   386,   103,   385,    -1,   371,    -1,   369,
      77,    39,    -1,   369,    77,   119,    -1,   104,   389,    -1,
     371,    -1,   371,   103,   389,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   410,   410,   417,   418,   418,   419,   420,   421,   422,
     423,   424,   425,   429,   430,   431,   432,   436,   437,   437,
     438,   438,   439,   440,   441,   445,   449,   450,   451,   455,
     459,   460,   464,   465,   465,   466,   467,   468,   469,   473,
     474,   474,   475,   476,   477,   478,   479,   480,   481,   482,
     483,   483,   484,   485,   486,   490,   491,   492,   493,   497,
     498,   499,   500,   504,   505,   505,   509,   513,   517,   524,
     525,   525,   526,   527,   528,   529,   530,   531,   532,   533,
     534,   535,   536,   537,   538,   542,   543,   544,   545,   552,
     553,   554,   555,   556,   557,   558,   559,   560,   561,   562,
     563,   564,   565,   566,   567,   567,   568,   569,   569,   570,
     571,   572,   573,   574,   575,   576,   577,   578,   582,   583,
     587,   588,   588,   589,   589,   590,   591,   592,   593,   594,
     595,   596,   597,   598,   599,   600,   604,   605,   606,   607,
     608,   609,   609,   610,   614,   615,   616,   617,   618,   619,
     620,   621,   622,   622,   623,   624,   625,   626,   626,   627,
     628,   629,   629,   630,   631,   632,   633,   634,   634,   635,
     636,   637,   641,   642,   643,   644,   648,   652,   652,   653,
     654,   655,   656,   657,   657,   658,   659,   660,   661,   661,
     662,   663,   664,   664,   665,   666,   667,   671,   671,   672,
     672,   673,   673,   674,   674,   675,   675,   676,   677,   678,
     679,   680,   681,   682,   686,   687,   688,   689,   689,   690,
     691,   692,   693,   694,   695,   696,   697,   697,   698,   699,
     700,   701,   701,   702,   703,   704,   705,   706,   707,   708,
     709,   709,   710,   714,   715,   715,   716,   717,   721,   722,
     723,   727,   728,   729,   730,   730,   731,   732,   733,   734,
     735,   736,   740,   744,   748,   752,   756,   757,   757,   761,
     762,   763,   763,   764,   768,   772,   773,   777,   778,   779,
     780,   781,   785,   786,   787,   788,   789,   790,   791,   791,
     792,   793,   793,   794,   794,   795,   796,   797,   798,   799,
     800,   807,   808,   808,   809,   810,   811,   812,   813,   814,
     818,   822,   826,   827,   831,   832,   832,   833,   834,   835,
     839,   840,   840,   841,   841,   845,   846,   847,   848,   852,
     859,   860,   860,   861,   862,   863,   863,   864,   865,   866,
     867,   868,   869,   870,   877,   878,   879,   880,   884,   885,
     885,   886,   887,   891,   892,   893,   894,   895,   896,   902,
     903,   904,   904,   908,   909,   909,   910,   911,   912,   913,
     914,   915,   916,   920,   921,   922,   923,   924,   925,   926,
     927,   928,   928,   929,   930,   931,   931,   932,   933,   934,
     935,   936,   937,   941,   942,   943,   944,   948,   949,   950,
     951,   952,   953,   957,   958,   958,   959,   960,   961,   962,
     963,   964,   965,   966,   967,   968,   972,   976,   977,   977,
     978,   979,   980,   981,   985,   989,   990,   991,   992,   993,
     994,   995,   996,   997,   998,  1002,  1003,  1004,  1004,  1005,
    1009,  1013,  1014,  1018,  1022,  1026,  1030,  1034,  1041,  1042,
    1046,  1047,  1048,  1051,  1051,  1051,  1052,  1052,  1053,  1053,
    1054,  1054,  1055,  1055,  1056,  1057,  1057,  1058,  1058,  1059,
    1060,  1061,  1061,  1062,  1062,  1063,  1063,  1064,  1064,  1065,
    1066,  1067,  1068,  1069,  1070,  1071,  1072,  1073,  1080,  1081,
    1082,  1083,  1084,  1085,  1086,  1087,  1091,  1095,  1096,  1097,
    1101,  1102,  1102,  1103,  1104,  1105,  1106,  1107,  1108,  1112,
    1116,  1117,  1121,  1125,  1129,  1130,  1130,  1131,  1132,  1133,
    1137,  1138,  1142,  1143,  1144
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
  "type_inheritance_clause", "type_inheritance_list", 0
};
#endif

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
     366,   366,   366,   366,   366,   366,   366,   366,   366,   366,
     367,   367,   367,   367,   367,   367,   368,   368,   369,   369,
     369,   369,   369,   369,   369,   369,   370,   371,   371,   372,
     373,   374,   374,   375,   376,   376,   377,   377,   378,   379,
     380,   380,   381,   382,   383,   384,   384,   385,   385,   386,
     387,   387,   388,   389,   389
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
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
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       2,     2,     2,     2,     2,     2,     2,     2,     1,     1,
       1,     1,     1,     1,     1,     1,     3,     2,     4,     1,
       3,     0,     1,     2,     1,     3,     3,     3,     1,     3,
       3,     3,     2,     2,     4,     0,     1,     1,     3,     1,
       3,     3,     2,     1,     3
};

/* YYDPREC[RULE-NUM] -- Dynamic precedence of rule #RULE-NUM (0 if none).  */
static const unsigned char yydprec[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     2,     1,     0,     0,     0,     0,     0,     0,     0,
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

/* YYDEFACT[S] -- default rule to reduce with in state S when YYTABLE
   doesn't specify something else to do.  Zero means the default is an
   error.  */
static const unsigned short int yydefact[] =
{
     121,    58,     0,     0,    64,    64,     0,    67,   121,   349,
      20,   349,   121,     0,     0,     0,     0,     0,   121,     2,
       4,    13,    14,    15,    16,     4,    30,    31,     9,     0,
       0,     4,    59,    60,    61,    62,     4,    89,   107,    90,
      91,   349,    92,     0,    93,     0,    94,    95,    96,    97,
      98,   177,    99,   100,   101,     0,   102,   282,   283,   284,
     121,   122,     4,   344,     0,   351,   350,   499,   244,   364,
     174,   173,    65,    63,    66,   121,     0,     0,    36,    35,
     311,   349,   349,     0,   349,   310,     0,    19,   107,    23,
       0,   302,   302,   305,   302,   307,     0,   308,   325,   326,
     309,   329,    24,   322,    68,    21,     0,     0,    28,    27,
       0,     0,     0,   352,   333,   331,   485,   484,   482,   483,
     480,   481,     1,    12,     5,     7,     8,    55,    56,    57,
      10,     6,   228,   109,     0,   123,     0,   113,     0,     0,
     110,   111,   112,   114,   115,   116,   117,   272,   108,     0,
     107,   214,   177,   215,     0,   311,   349,   144,   137,     0,
     140,   329,     0,   172,   180,   456,   460,   462,   464,   465,
     467,   469,   470,   471,   473,   475,   477,   479,   458,   459,
     472,   474,   463,   461,   466,   457,   468,   476,   478,     0,
     177,   181,   453,   454,   455,     0,   178,     0,   121,     0,
     337,     3,   361,     0,   349,   349,   357,   345,   356,   349,
     364,     0,   393,   450,   452,   451,     0,   349,   349,   404,
     424,   376,   377,   378,   379,   425,   366,   374,   375,   367,
     368,   397,   398,   399,   369,   371,   370,   372,   348,   427,
     428,   429,   430,   431,   432,   433,   434,   373,     0,     0,
     245,     0,   365,   497,   119,     0,   121,    33,   313,   312,
       0,   121,   327,   490,   491,   489,   488,   492,   493,   494,
     495,     0,   319,     0,   316,   317,   349,   109,     0,   349,
       0,   121,   301,   303,   304,   306,     0,   349,    40,    26,
       0,     0,     0,   335,   330,   332,   249,   177,   274,   127,
     128,   131,   129,   126,   125,   130,     0,   124,   252,   244,
     246,   177,   197,   280,   179,   349,   149,   106,     0,   270,
     349,     0,   349,   139,   175,   486,   487,     0,    70,    72,
      74,     0,     0,   121,   277,   278,   279,   362,     0,   359,
     354,     0,   358,   353,   363,     0,   349,     0,   349,   416,
       0,   422,     0,   419,   420,     0,   387,     0,   382,   385,
       0,   385,   448,     0,   183,   121,   405,     0,   183,   446,
       0,   349,   447,   435,     0,   426,   523,   522,   121,   275,
       0,    86,    88,     0,   118,    29,     0,    32,    34,   515,
     198,   197,     0,     0,   502,   192,   504,   513,     0,     0,
       0,   512,     0,   349,   314,   349,     0,     0,   328,     0,
     229,   323,   346,   347,   349,     0,     0,    41,    40,   121,
     121,   288,     0,     0,   335,   335,   335,     0,   336,   335,
     244,   134,   120,   132,   135,     0,   244,   190,     0,   192,
     194,   199,   136,   121,     0,   138,   145,     0,   142,   146,
     147,   143,     0,   183,   188,     0,     0,    71,     0,     0,
     273,   269,   281,   107,   121,   121,   121,   121,   360,   349,
     400,   402,     0,   394,   396,     0,   349,   417,   349,   389,
     349,   380,   349,   383,   388,   349,   390,     0,   413,   414,
     415,   412,   349,   121,     0,   184,     0,   410,   183,   183,
       0,   364,   440,   443,   441,   444,     0,   439,   436,     0,
     121,   105,     0,    85,     0,   498,    38,    37,   519,     0,
     516,   517,     0,   508,     0,   500,   193,   503,   121,   520,
     521,   509,   510,   511,     0,   318,   349,    25,   496,   324,
     320,     0,    50,    52,    39,    42,    45,    43,    46,    44,
     296,     0,   289,   293,   292,   286,   285,     0,     0,     0,
     334,   338,     0,     0,   121,   251,     0,   208,     0,   197,
     200,   201,   201,   220,   107,     0,   218,   121,   221,     0,
     121,   148,   186,   176,   182,   189,   187,    77,    78,    80,
      81,     0,    69,    73,    75,    76,   164,   165,     0,     0,
     153,     0,     0,     0,     0,   162,     0,     0,   355,   401,
     395,   423,   421,   392,   387,   384,     0,   391,   449,     0,
       0,   406,   403,     0,     0,   407,   442,   445,   524,   103,
     276,    87,   514,     0,   506,   507,   505,   349,     0,    47,
     349,    48,    51,   295,   287,     0,   290,   294,   339,   340,
     341,   121,   248,   133,   107,     0,   244,     0,     0,   121,
     255,   256,   257,   258,   259,   260,   177,     0,   121,   243,
     191,   195,   202,     0,     0,     0,   216,   219,   121,     0,
     121,   121,     0,     0,     0,   155,     0,     0,   158,   157,
     151,     0,   154,   165,   160,   164,   163,   411,   185,   408,
     409,   518,     0,    17,    53,    54,   349,   298,   300,   299,
     297,     0,     0,   150,     0,   267,   177,   253,   261,     0,
       0,     0,   209,   210,   203,   203,   222,   223,   226,   234,
     107,     0,   232,   121,   235,   157,   157,     0,     0,   168,
       0,     0,    79,    84,    82,    83,     0,   156,     0,    49,
     250,     0,   268,   266,     0,   264,   121,   265,   247,   211,
     212,     0,   204,     0,     0,   225,   227,     0,   230,   233,
       0,     0,   166,   169,   159,    22,   262,   263,     0,   205,
     205,   224,   240,   236,   237,   171,   170,   349,   207,   206,
     196,     0,   239,   241,     0,   213,   242,   238
};

/* YYPDEFGOTO[NTERM-NUM].  */
static const short int yydefgoto[] =
{
      -1,    17,    18,   125,   255,    20,    21,    86,   104,    87,
      22,    23,   107,    24,    25,    26,   387,    77,   388,    27,
     416,   417,   418,   419,   541,   641,   420,   642,   704,    28,
      29,    30,    31,    32,    73,    33,    34,    35,   196,   456,
     328,   329,   457,   587,   588,   589,   590,   252,   380,   381,
      36,   511,   512,   148,   149,   150,   685,    37,    38,   306,
     307,   432,   433,    39,   157,   158,   447,   323,    40,    41,
     159,   335,   599,   464,   465,   687,   688,   336,   604,   466,
     467,   581,   738,   680,   681,    42,    43,    71,   163,    44,
     197,    45,   190,   452,   494,   495,   583,   453,   586,   454,
     527,   439,   440,   392,   572,   673,   761,   788,   724,   762,
     789,    46,   151,   575,   576,   577,   578,   726,   727,   765,
     152,   728,   153,   731,   732,   733,   734,   783,   784,   792,
     793,    47,   249,   311,   669,    48,   297,   652,    49,   309,
     565,   658,   659,   660,   661,   662,   663,   664,   665,   753,
      50,    51,   154,   461,    52,    53,   379,    54,    55,   199,
      56,    57,    58,    59,   551,   552,   553,   646,   554,   643,
     647,   710,   160,   282,    91,    92,    93,    94,   273,   274,
     275,    95,    96,   540,    97,    98,    99,   100,    60,   294,
     115,   295,   427,    61,   428,   429,   161,   102,    63,    64,
      65,   206,   207,   208,   338,   225,   253,   226,   227,   357,
     358,   483,   359,   228,   360,   361,   229,   230,   231,   232,
     233,   234,   365,   366,   367,   492,   235,   236,   352,   353,
     354,   237,   238,   239,   374,   508,   240,   241,   242,   243,
     244,   245,   246,   368,   247,   191,   192,    66,   194,   382,
     283,   263,    69,   264,   393,   394,   395,   396,   524,   265,
     266,   267,   268,   269,   519,   520,   521,   270,   250,   377
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -516
static const short int yypact[] =
{
    1088,  -516,    50,    63,   116,   224,    10,  -516,   124,  1477,
     615,   -11,   327,   278,   245,   293,   618,   220,   733,  -516,
     210,  -516,  -516,  -516,  -516,   210,  -516,  -516,  -516,   370,
     204,   210,  -516,  -516,  -516,  -516,   210,  -516,  1310,  -516,
    -516,   125,  -516,   279,  -516,  1309,  -516,  -516,  -516,  -516,
    -516,   286,  -516,  -516,  -516,   280,  -516,  -516,  -516,  -516,
     244,  -516,   210,  1527,  1177,  -516,  -516,  -516,   276,   290,
    -516,  -516,  -516,  -516,  -516,   835,   364,    10,  -516,  -516,
     173,   136,   406,    80,  1451,  -516,   320,  -516,   261,  -516,
     219,   312,   331,  -516,   335,  -516,   379,  -516,  -516,  -516,
    -516,   274,  -516,  -516,  -516,  -516,   348,    10,  -516,  -516,
    1620,  1620,  1620,  -516,  -516,   360,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,   459,    10,   556,   464,  -516,   486,   393,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,   330,
     261,  -516,   286,  -516,   483,   191,   255,  -516,   391,   401,
     217,  -516,    80,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,   305,
     286,  -516,  -516,  -516,  -516,    50,  -516,   393,   244,   397,
    -516,  -516,   398,    80,   -11,   -11,  1575,  -516,  -516,   -11,
     447,    39,   206,  -516,  -516,  -516,   518,    37,   108,    96,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,   387,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,    50,   431,
    -516,    80,  -516,   456,  -516,   436,   488,   512,   509,   510,
     473,    35,   225,  -516,  -516,  -516,   449,  -516,  -516,  -516,
    -516,   441,   535,   485,  -516,   481,   141,  -516,   559,   -11,
      80,   244,  -516,  -516,  -516,  -516,   578,   -11,   394,  -516,
     487,   489,   490,   353,  -516,  -516,  -516,   286,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,  1358,  -516,  -516,   276,
    -516,   286,    78,  -516,  -516,   523,  -516,  -516,   235,  -516,
     686,   163,   -11,  -516,   283,  -516,  -516,   393,   562,   494,
     503,    10,    80,   858,  -516,  -516,  -516,  -516,    80,   319,
    -516,   505,  -516,  -516,  -516,   104,   -11,   200,   -11,  -516,
     507,  -516,   495,  -516,   498,   513,   508,   529,  -516,   532,
     536,   538,   540,   471,   511,  1111,  -516,   203,   511,  -516,
      36,   -11,  -516,   543,   544,  -516,   546,  -516,   151,  -516,
     567,   560,   551,    50,  -516,  -516,    31,  -516,  -516,    50,
    -516,   602,   644,   561,  -516,   582,   563,  -516,    11,    80,
     581,  -516,   587,   141,  -516,   707,   575,    10,   555,    80,
    -516,   594,   590,  -516,   802,   591,   598,  -516,   394,   960,
     983,   202,   599,   600,   372,   478,   257,   609,  -516,   723,
     276,  -516,  -516,   619,  -516,   607,   276,  -516,    80,   582,
     606,   269,  -516,   167,    50,  -516,  -516,   610,  -516,  -516,
    -516,  -516,    10,   511,   393,    50,   643,  -516,    50,   311,
    -516,  -516,   551,   497,    66,   244,   292,   244,   580,   -11,
    -516,  -516,   617,  -516,  -516,   621,   -11,  -516,    45,  -516,
     -11,  -516,   -13,  -516,  -516,   -13,  -516,   716,  -516,  -516,
    -516,  -516,   -11,   244,   697,  -516,   632,  -516,   511,   511,
     709,   668,  -516,  -516,  -516,  -516,   642,  -516,  -516,    50,
     151,  -516,   645,  -516,    80,  -516,  -516,  -516,  -516,   672,
    -516,   670,    80,  -516,   401,  -516,  -516,  -516,    49,  -516,
    -516,   669,  -516,  -516,   640,  -516,   -16,  -516,   699,  -516,
    -516,   667,   433,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,   646,  -516,   732,  -516,  -516,  -516,   676,   675,   679,
    -516,  -516,   677,  1358,   105,  -516,   684,   551,   690,    93,
    -516,   681,   681,  -516,   612,   688,  -516,   167,  -516,   691,
     244,  -516,  -516,  -516,  -516,  -516,  -516,  -516,   674,  -516,
    -516,   193,  -516,  -516,  -516,  -516,    10,   -46,   736,   698,
    -516,   757,   700,   746,   701,  -516,   765,   706,  -516,  -516,
    -516,  -516,  -516,  -516,  -516,  -516,   508,  -516,  -516,   711,
      80,  -516,  -516,   786,   789,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,    50,   551,  -516,  -516,   187,    10,  -516,
     -11,   713,  -516,  -516,  -516,   256,  -516,  -516,  -516,  -516,
    -516,   151,  -516,  -516,    67,   814,   276,  1309,   724,   105,
    -516,  -516,  -516,  -516,  -516,  -516,   286,   280,   151,  -516,
    -516,  -516,  -516,    38,    38,   578,  -516,  -516,   175,     1,
     308,   244,    50,    50,   311,  -516,   824,    10,  -516,   731,
    -516,    10,  -516,  -516,  -516,  -516,  -516,  -516,   551,  -516,
    -516,  -516,   735,  -516,  -516,  -516,   927,  -516,  -516,  -516,
    -516,   727,   332,  -516,   401,   279,   286,  -516,  -516,   393,
     730,   739,  -516,  -516,    44,    44,  -516,   734,   748,  -516,
    1252,   741,  -516,   175,  -516,   731,   731,   805,   750,  -516,
     794,   754,  -516,  -516,  -516,  -516,   760,  -516,    10,  -516,
    -516,   730,  -516,  -516,   393,  -516,   244,  -516,  -516,  -516,
    -516,   401,  -516,   401,   578,  -516,  -516,   578,  -516,  -516,
      10,    10,  -516,  -516,  -516,  -516,  -516,  -516,     3,   803,
     803,  -516,   804,  -516,   764,  -516,  -516,   -11,  -516,  -516,
    -516,   369,  -516,  -516,   578,  -516,  -516,  -516
};

/* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
    -516,  -516,  -516,   263,    26,   841,  -516,   793,  -269,  -516,
    -516,  -516,   625,  -516,  -516,   502,  -516,  -516,  -516,   844,
     472,  -516,  -516,  -516,   185,  -516,  -516,  -516,  -516,  -516,
    -516,   403,  -516,  -516,   887,  -516,  -516,  -516,  -516,  -516,
     435,  -516,  -516,   218,  -516,  -516,  -516,  -516,   388,  -516,
       5,  -516,  -480,  -516,   -74,  -516,    -5,  -516,    -6,  -516,
    -516,   338,  -516,  -516,  -250,  -516,  -516,   583,   153,  -515,
     248,   584,  -516,   445,   442,  -261,  -516,  -298,  -516,   444,
     448,  -516,  -516,   234,   236,  -516,  -490,  -516,   207,  -516,
    -147,  -470,   260,   164,  -333,  -516,  -516,   469,  -516,  -133,
     500,   355,  -516,  -279,  -516,   354,   208,   145,   253,  -516,
    -516,  -516,  -516,   351,  -516,  -516,  -516,   165,  -516,  -516,
    -516,  -271,  -516,   212,  -516,  -516,  -516,   146,  -516,  -516,
    -516,  -516,  -284,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,   284,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -463,  -516,  -516,  -516,  -516,  -516,  -516,  -455,   281,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,     7,   422,  -516,  -516,  -516,   542,  -516,   549,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,   -51,  -516,  -516,  -516,     0,  -228,  -177,  -516,
    -516,  -516,   752,  -516,  -516,  -516,  -188,  -516,  -516,  -516,
     465,   595,  -516,  -516,   477,  -516,  -516,  -516,  -516,  -516,
    -516,   592,  -516,  -516,  -516,  -516,  -516,   743,  -516,   492,
    -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,  -516,
    -516,  -516,  -516,  -330,   177,   -91,   -27,   -43,   745,   -54,
    -155,    22,  -167,   243,  -516,  -516,   451,  -516,  -516,  -516,
    -516,  -516,  -516,  -425,  -516,   344,  -516,  -516,  -516,   484
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -502
static const short int yytable[] =
{
      62,    76,   193,    88,   321,   318,   313,   406,    79,   101,
     105,   106,   109,    78,   278,   411,    90,   108,    62,   290,
     291,   292,   344,   450,    68,   435,    19,   340,   330,   262,
     629,   103,   343,   441,   595,   500,   209,   499,  -121,   501,
     350,   722,   735,   327,   123,   695,   502,   759,   350,   655,
     529,   686,  -121,    67,   200,  -157,     8,    14,   693,   413,
      14,   736,    14,   103,   331,   442,    70,   193,   193,   193,
     445,   277,   257,   503,   656,    62,   317,  -271,    88,   390,
     137,  -121,   139,    67,   101,   -20,   364,  -386,   258,   259,
    -121,   272,   260,   390,   657,    16,  -121,   504,    16,   362,
      16,   666,   289,   103,   103,  -121,   103,   470,   324,   667,
      14,    75,   522,   140,   471,   141,   345,   142,    14,     1,
     584,     3,   390,   143,   144,   145,   146,  -121,   155,   298,
     530,     2,    75,  -501,   534,  -418,    81,   390,   346,    80,
       3,    15,    82,   506,   655,   723,   562,    81,    16,   339,
     430,   760,   566,    82,   505,    15,    16,   618,     2,    83,
    -349,  -349,    89,   272,   436,   623,   624,     3,  -152,   656,
      83,   711,    15,    13,     2,  -121,   437,   261,   103,   209,
     147,    14,     2,     3,    15,  -349,  -349,  -349,   721,   657,
    -121,     3,   332,   312,   334,   363,   666,    14,    14,    15,
      13,  -349,  -321,   473,   667,   341,   362,  -254,  -381,    14,
     474,    15,   355,  -321,    14,   434,    13,   351,   356,    16,
     122,  -349,   156,  -349,    13,  -349,   408,     1,   322,   497,
      15,  -349,    85,   156,   498,    16,    16,    89,  -349,  -349,
    -349,  -349,  -291,    85,  -499,   279,   -20,    16,   113,   280,
    -311,   280,    16,  -104,   550,   391,   109,    15,    80,   745,
      14,   108,  -499,   193,   333,   277,    81,   638,  -311,  -217,
     376,   683,    82,    15,   137,   409,   105,  -231,   462,   407,
     570,    15,   322,   347,   468,   -20,   571,   412,   126,    83,
     441,   330,   608,   397,   130,  -150,   114,   684,    16,   131,
     312,   707,   398,   708,  -288,   348,   438,   140,   129,   141,
     709,   142,   399,   626,    67,   124,   446,   143,   144,   145,
     146,   110,   451,   260,   400,   201,   460,   463,    14,   111,
    -121,   112,  -321,    62,     2,   401,   443,   103,   314,   444,
     314,   315,   103,     3,   162,   531,   472,   316,   475,   316,
      15,   397,   156,  -315,   424,   538,   425,   195,   426,  -335,
     398,   251,    85,  -349,  -349,    62,    16,   198,   702,   635,
     399,   412,   715,   557,   558,   559,    13,   287,   561,  -346,
     248,   517,   400,   510,   567,   325,   326,   397,  -349,  -349,
    -349,   496,     6,   401,  -161,   256,   398,     9,    15,    11,
      14,    12,   537,   105,  -349,   515,   399,    72,    72,    80,
    -167,   518,   272,   414,    15,   415,   281,    81,   400,    62,
      62,   542,   757,    82,  -349,   276,  -349,   103,  -349,   401,
     213,   214,   215,    15,  -349,   281,   103,   574,    16,   281,
      83,  -349,  -349,  -349,  -349,   547,   549,   582,   573,   288,
     424,  -335,   425,   776,   426,   369,   286,   293,   598,   601,
     603,   606,   296,   640,   370,   280,   579,   308,   634,   424,
    -335,   425,   434,   426,   770,   771,   611,   591,   351,    14,
     613,   594,   614,  -321,   217,   616,   371,   620,  -348,   310,
     312,  -121,   619,   319,   320,     2,   782,   372,   333,   189,
     132,   133,   134,   156,     3,   281,   135,  -271,   337,   136,
     137,   138,   139,    85,   284,   510,   285,    16,   251,   719,
     193,   349,   391,   782,  -349,  -349,    80,   488,   489,   490,
     491,   376,   378,   383,    81,   386,   105,    13,   384,   596,
      82,   280,   280,   140,   389,   141,   403,   142,   402,  -349,
    -349,  -349,   597,   143,   144,   145,   146,    83,   654,   751,
     299,    14,   300,   438,   301,  -349,   698,   280,   302,   754,
     303,   574,   304,   305,   679,   424,   316,   425,  -335,   426,
     712,   410,   573,   404,   405,  -349,   755,  -349,   421,  -349,
     422,   423,   455,   477,    15,  -349,    14,   458,   493,    16,
    -321,   478,  -349,  -349,  -349,  -349,   779,   459,   780,   469,
     147,   476,   480,   479,   193,   132,   133,   134,   -20,   397,
     156,   135,  -271,   397,   136,   137,   138,   139,   398,   481,
      85,   675,   398,   703,    16,   482,   484,   105,   399,   513,
     705,   485,   399,   487,  -435,   219,   390,   523,   397,   509,
     400,   -20,   -20,   654,   400,   518,   510,   398,   140,   525,
     141,   401,   142,   514,   526,   401,   528,   399,   143,   144,
     145,   146,   730,   510,   737,   740,   -20,   -20,   -20,   400,
     536,   532,   747,   729,   116,   117,   118,   533,    14,    80,
     401,   156,   -20,   287,   119,   543,   563,    81,   120,   121,
     544,   555,   556,    82,   591,   743,   744,   560,   564,   569,
      80,   580,   -20,   542,   -20,   592,   -20,   609,    81,   362,
      83,   610,   -20,   621,    82,   147,    16,   730,   103,   -20,
     -20,   -20,   -20,   -11,   622,   625,     1,   397,   729,   251,
       2,    83,   627,   775,   632,   637,   398,   630,   644,     3,
     778,     4,   -11,     5,   -11,     6,   399,     7,     8,    14,
       9,    10,    11,  -321,    12,   785,   786,   397,   400,  -349,
    -349,   639,   645,   633,   648,   649,   398,   682,   651,   401,
      14,   650,    13,   156,  -321,   668,   399,   795,   670,   672,
     676,   689,   678,    85,  -349,  -349,  -349,    16,   400,   691,
     690,   693,   692,   694,   156,    80,    14,   695,   696,   401,
    -349,   697,   699,    81,    85,   700,   706,   713,    16,    82,
     424,  -335,   425,  -335,   426,  -335,   717,   746,   686,   750,
    -349,   756,  -349,   748,  -349,   -11,    83,   764,     1,    15,
    -349,   758,     2,   768,    16,   261,   735,  -349,  -349,  -349,
    -349,     3,   772,     4,   736,     5,   773,     6,   774,     7,
       8,     1,     9,    10,    11,     2,    12,   794,   787,   791,
     127,  -349,  -349,   128,     3,    14,     4,   271,     5,  -321,
       6,   385,     7,     8,    13,     9,    10,    11,   516,    12,
     545,   749,    74,   593,  -349,  -349,  -349,  -349,  -349,   156,
     742,   653,   631,   714,   448,   449,   600,    13,    14,    85,
     602,   607,  -349,    16,   605,   741,   739,   716,   777,  -349,
    -349,  -349,   752,   585,   671,   790,   674,   725,   677,   781,
      80,    14,  -349,   763,  -349,  -349,  -349,   254,    81,   568,
     797,    15,  -349,   718,    82,   769,    16,   615,   720,  -349,
    -349,  -349,  -349,   539,   535,  -349,   486,  -349,   342,  -349,
     254,    83,   617,     1,    15,  -349,   507,     2,   796,    16,
     612,   766,  -349,  -349,  -349,  -349,     3,   701,     4,   636,
       5,   373,     6,   375,     7,     8,     1,     9,    10,    11,
       2,    12,     0,   628,     0,     0,  -349,  -349,     0,     3,
      14,     4,     0,     5,  -321,     6,     0,     7,     8,    13,
       9,    10,    11,     0,    12,     0,     0,     0,     0,  -349,
    -349,  -349,  -349,  -349,   156,     0,     0,     0,     0,     0,
       0,     0,    13,    14,    85,     0,     0,  -349,    16,     0,
       0,     0,     0,     0,  -349,  -349,  -349,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    14,  -349,     0,  -349,
    -349,  -349,     0,     0,     0,   546,    15,  -349,     0,     0,
       0,    16,     0,     0,  -349,  -349,  -349,  -349,     0,     0,
    -349,     0,  -349,     0,  -349,     0,     0,     0,   548,    15,
    -349,     1,     0,     0,    16,     2,     0,  -349,  -349,  -349,
    -349,     0,     0,     0,     3,     0,     4,     0,     5,     0,
       6,     0,     7,     8,     1,     9,    10,    11,     2,    12,
       0,     0,     0,     0,  -349,  -349,     0,     3,     0,     4,
       0,     5,     0,     6,     0,     7,     8,    13,     9,    10,
      11,     0,    12,     0,     0,     0,     0,  -349,  -349,  -349,
    -349,  -349,     0,     0,     0,     0,     0,     0,     0,     0,
      13,    14,     0,     0,     0,  -349,     0,     0,     0,     0,
       0,     0,  -349,  -349,  -349,     0,     0,     0,     0,     0,
     210,     0,     0,     0,    14,  -349,     0,  -349,  -349,  -349,
       0,     0,     0,     0,    15,  -349,     0,     0,     0,    16,
       0,     0,  -349,  -349,  -349,  -349,     0,     0,  -349,     0,
    -349,     0,  -349,   211,   212,     0,     0,    15,  -349,     0,
       0,     0,    16,     0,     0,  -349,  -349,  -349,  -349,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   213,   214,
     215,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   216,   132,   133,   134,     0,     0,
       0,   135,  -271,     0,   136,   137,   138,   139,     0,     0,
       0,   767,     0,     0,   217,     0,   218,     0,   219,     0,
       0,     0,     0,     0,   220,     0,     0,     0,     0,     0,
       0,   221,   222,   223,   224,     0,     0,     0,   140,     0,
     141,     0,   142,     0,     0,     0,     0,     0,   143,   144,
     145,   146,   164,   132,   133,   134,     0,     0,     0,   135,
    -271,     0,   136,   137,   138,   139,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   140,     0,   141,     0,
     142,   431,     0,     0,     0,   147,   143,   144,   145,   146,
       0,     0,     0,   165,     0,   166,   167,   168,   169,   170,
     171,   172,   173,   174,   175,   176,   177,   178,   179,     0,
       0,     0,     0,     0,   180,   181,     0,   182,   183,   184,
     185,   186,     0,   187,   188,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      16,   189,   165,   147,   166,   167,   168,   169,   170,   171,
     172,   173,   174,   175,   176,   177,   178,   179,     0,     0,
       0,     0,     0,   180,   181,     0,   182,   183,   184,   185,
     186,     0,   187,   188,    80,  -121,     0,     0,     0,     0,
       0,     0,    81,     0,  -121,     0,     0,     0,    82,    16,
     189,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      80,  -121,     0,     0,     0,    83,     0,     0,    81,     0,
    -121,     0,     0,     0,    82,     0,     0,  -121,     0,  -121,
       0,  -121,     0,     0,     0,     0,     0,  -121,  -121,  -121,
    -121,    83,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,  -121,    14,  -121,     0,  -121,  -321,     0,
       0,     0,     0,  -121,  -121,  -121,  -121,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   156,  -315,
      14,     0,     0,     0,  -321,     0,   -18,    15,    85,   202,
       0,   203,    16,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    84,     0,     0,     0,     0,     0,
       0,     0,   -18,    15,    85,     0,     0,     0,    16,     0,
       0,   165,   204,   166,   167,   168,   169,   170,   171,   172,
     173,   174,   175,   176,   177,   178,   179,   202,     0,   203,
       0,     0,   180,   181,     0,   182,   183,   184,   185,   186,
       0,   187,   188,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   205,     0,   165,
     204,   166,   167,   168,   169,   170,   171,   172,   173,   174,
     175,   176,   177,   178,   179,     0,     0,     0,     0,     0,
     180,   181,     0,   182,   183,   184,   185,   186,     0,   187,
     188,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   165,   205,   166,   167,   168,   169,
     170,   171,   172,   173,   174,   175,   176,   177,   178,   179,
       0,     0,     0,     0,     0,   180,   181,     0,   182,   183,
     184,   185,   186,     0,   187,   188,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    16,   189
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
       0,     0,     0,     0,     0,     0,     0,     0,   172,     0,
     144,     0,     0,     0,     0,     0,     0,     0,   328,     0,
       0,     0,   332,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   174,
       0,   194,     0,     0,     0,   346,     0,     0,     0,     0,
       0,     0,     0,   334,     0,     0,   352,     0,     0,   146,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     4,
       0,     0,     0,     0,     0,     0,     0,     8,    59,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    82,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   148,     0,   150,     0,     0,     0,     0,
       0,     0,    61,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    84,     0,     0,     0,     0,     0,     0,
       0,     0,    63,     0,     0,     0,     0,     6,     0,     0,
       0,     0,    65,    86,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    88,     0,     0,     0,     0,     0,     0,
      80,     0,     0,     0,     0,     0,     0,     0,   122,     0,
       0,     0,     0,     0,   212,     0,     0,     0,   118,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   140,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   120,     0,     0,     0,     0,
       0,     0,   176,     0,   262,   142,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   178,     0,     0,     0,     0,     0,
      54,     0,   124,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   126,     0,   288,     0,   291,     0,   294,   297,
     214,    75,   128,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   114,     0,     0,
       0,     0,   216,     0,     0,     0,     0,   221,     0,     0,
       0,     0,     0,     0,     0,     0,   223,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    90,
       0,     0,     0,     0,     0,     0,   108,     0,   225,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   227,
       0,     0,     0,     0,     0,   110,     0,     0,     0,   112,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     182,   185,   188,     0,   191,   152,     0,   116,     0,     0,
       0,     0,     0,     0,   154,     0,     0,     0,     0,   264,
     267,   270,     0,   273,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    92,   156,     0,   158,     0,   160,     0,
       0,   166,     0,     0,     0,     0,     0,   162,     0,     0,
       0,     0,     0,    94,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    96,     0,     0,     0,     0,   138,     0,
       0,     0,     0,     0,     0,     0,   196,     0,     0,     0,
       0,     0,     0,   164,     0,     0,     0,     0,     0,     0,
       0,   168,   170,     0,     0,     0,     0,     0,   180,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   276,     0,   279,   282,   285,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     198,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    20,     0,
     200,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     202,     0,   242,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   232,     0,     0,     0,   320,     0,
       0,    22,    24,     0,   244,     0,     0,   322,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    26,    28,    30,   324,
       0,     0,     0,     0,     0,     0,     0,     0,    32,   204,
     326,   246,    34,     0,     0,     0,   318,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     234,     0,    36,     0,    38,     0,    40,     0,     0,     0,
       0,     0,    42,     0,     0,     0,    44,     0,     0,    46,
      48,    50,    52,     0,     0,     0,    56,   336,     0,   330,
       0,     0,     0,     0,     0,     0,   338,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   340,     0,     0,     0,
       0,     0,     0,   206,     0,     0,     0,     0,   342,     0,
       0,     0,     0,     0,     0,     0,   348,     0,     0,   344,
       0,     0,     0,   208,   236,     0,     0,     0,     0,     0,
       0,     0,     0,   210,     0,     0,     0,     0,   350,     0,
       0,     0,     0,     0,   238,   248,     0,     0,     0,     0,
       0,     0,     0,     0,   240,     0,     0,     0,     0,     0,
     300,   303,   306,   309,   312,   315,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    77,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   218,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   250,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   252,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   254,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     354,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   256,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   259,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   356,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   358,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   360,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     1,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   229,     0,     0,     0,     0,     0,
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
       0,     0,     0,     0,    98,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   100,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      10,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    12,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   102,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   104,     0,
       0,     0,     0,     0,    14,     0,     0,     0,   106,    67,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    16,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    18,     0,     0,     0,     0,     0,
       0,     0,    69,     0,     0,     0,     0,     0,     0,     0,
      71,     0,     0,     0,    73,     0,     0,   130,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     132,     0,     0,     0,     0,     0,     0,     0,   134,     0,
       0,     0,   136,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0
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
       0,   344,     0,   344,     0,   364,     0,   121,   349,     0,
     499,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     121,     0,   349,     0,   349,     0,   349,     0,   302,     0,
     302,     0,   302,     0,   329,     0,   331,     0,   499,     0,
     311,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     357,     0,   357,     0,   357,     0,   357,     0,   364,     0,
     393,     0,   393,     0,   349,     0,   404,     0,   404,     0,
     404,     0,   348,     0,   348,     0,   348,     0,   348,     0,
     437,     0,   348,     0,   497,     0,   349,     0,   313,     0,
     312,     0,   197,     0,   121,     0,   327,     0,   327,     0,
     488,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   197,     0,   349,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   141,     0,   175,     0,   175,     0,   121,   349,
       0,   359,     0,   359,     0,   359,     0,   359,     0,   121,
     349,     0,   438,     0,   349,     0,   349,     0,   349,     0,
     349,     0,   328,     0,   328,     0,   323,     0,   349,     0,
     349,     0,   349,     0,   349,     0,   121,   349,     0,   121,
     349,     0,   291,     0,   342,   343,     0,   342,   343,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   342,   343,
       0,   342,   343,     0,   342,   343,     0,   342,   343,     0,
     342,   343,     0,   342,   343,     0,   342,   343,     0,   342,
     343,     0,   342,   343,     0,   342,   343,     0,   132,     0,
     360,     0,   360,     0,   360,     0,   360,     0,   349,     0,
     364,     0,   197,     0,   121,     0,   509,     0,   509,     0,
     509,     0,   509,     0,   509,     0,   349,     0,   496,     0,
     496,     0,   197,     0,   349,     0,   349,     0,   349,     0,
     349,     0
};

static const short int yycheck[] =
{
       0,     6,    45,     9,   159,   152,   139,   276,     8,     9,
      10,    11,    12,     8,    88,   286,     9,    12,    18,   110,
     111,   112,   210,   321,     2,   309,     0,   204,   195,    83,
     510,     9,   209,   312,   459,   368,    63,   367,     3,     3,
       3,     3,    41,   190,    18,    42,    10,     3,     3,   564,
      39,    97,     3,     3,    60,   101,    25,    73,    55,   287,
      73,    60,    73,    41,   197,   315,     3,   110,   111,   112,
     320,     4,    77,    37,   564,    75,   150,    10,    84,    44,
      13,     3,    15,     3,    84,   101,   219,   100,    81,    82,
      12,    84,    12,    44,   564,   111,     3,    61,   111,     3,
     111,   564,   107,    81,    82,    12,    84,     3,   162,   564,
      73,   101,   391,    46,    10,    48,    77,    50,    73,     3,
     453,    16,    44,    56,    57,    58,    59,     3,     3,   134,
     119,     7,   101,    98,   403,    98,    11,    44,    99,     3,
      16,   106,    17,   371,   659,   107,   430,    11,   111,   203,
     297,   107,   436,    17,   118,   106,   111,   487,     7,    34,
      36,    37,     9,   156,   311,   498,   499,    16,   102,   659,
      34,   651,   106,    49,     7,    97,    98,    97,   156,   206,
     113,    73,     7,    16,   106,    61,    62,    63,   668,   659,
      97,    16,   198,    97,   199,    99,   659,    73,    73,   106,
      49,    77,    77,     3,   659,   205,     3,   102,   100,    73,
      10,   106,   104,    77,    73,   306,    49,   217,   218,   111,
       0,    97,    97,    99,    49,   101,   280,     3,    65,    26,
     106,   107,   107,    97,   367,   111,   111,    84,   114,   115,
     116,   117,    40,   107,    71,    26,   105,   111,     3,    32,
      77,    32,   111,   102,    52,   261,   256,   106,     3,   684,
      73,   256,    71,   306,   101,     4,    11,   536,    77,   102,
     248,    78,    17,   106,    13,   281,   276,   102,   332,   279,
      11,   106,    65,    77,   338,    98,    17,   287,    25,    34,
     569,   458,   469,    68,    31,   104,     3,   104,   111,    36,
      97,    45,    77,    47,   102,    99,   312,    46,   104,    48,
      54,    50,    87,   501,     3,   105,   321,    56,    57,    58,
      59,    43,   322,    12,    99,    62,   331,   333,    73,    51,
       3,    53,    77,   333,     7,   110,   101,   315,     8,   104,
       8,    11,   320,    16,    65,   399,   346,    17,   348,    17,
     106,    68,    97,    98,    97,   409,    99,    71,   101,   102,
      77,    71,   107,    36,    37,   365,   111,    87,   637,   524,
      87,   371,   656,   424,   425,   426,    49,   103,   429,   105,
     104,   386,    99,   378,   438,    80,    81,    68,    61,    62,
      63,   365,    22,   110,   102,    31,    77,    27,   106,    29,
      73,    31,   407,   403,    77,   383,    87,     4,     5,     3,
     102,   389,   405,    19,   106,    21,   104,    11,    99,   419,
     420,   414,   720,    17,    97,   105,    99,   405,   101,   110,
      61,    62,    63,   106,   107,   104,   414,   443,   111,   104,
      34,   114,   115,   116,   117,   419,   420,   452,   443,   101,
      97,    98,    99,   751,   101,    68,    77,    97,   464,   465,
     466,   467,     3,    30,    77,    32,   444,     3,   522,    97,
      98,    99,   563,   101,   735,   736,   476,   455,   478,    73,
     480,   459,   482,    77,    97,   485,    99,   493,   101,     3,
      97,     3,   492,    10,   103,     7,   767,   110,   101,   112,
       3,     4,     5,    97,    16,   104,     9,    10,   110,    12,
      13,    14,    15,   107,    92,   510,    94,   111,    71,   666,
     563,     3,   528,   794,    36,    37,     3,    56,    57,    58,
      59,   509,   101,    77,    11,    23,   536,    49,   102,    42,
      17,    32,    32,    46,    71,    48,   105,    50,    99,    61,
      62,    63,    55,    56,    57,    58,    59,    34,   564,   714,
       4,    73,     6,   569,     8,    77,   620,    32,    12,   716,
      14,   577,    16,    17,   580,    97,    17,    99,   100,   101,
     654,     3,   577,    98,   103,    97,   719,    99,   101,   101,
     101,   101,    30,    98,   106,   107,    73,   103,    87,   111,
      77,   103,   114,   115,   116,   117,   761,   104,   763,   104,
     113,   104,   104,   100,   657,     3,     4,     5,     3,    68,
      97,     9,    10,    68,    12,    13,    14,    15,    77,   100,
     107,    19,    77,   638,   111,   103,   100,   637,    87,    72,
     640,   103,    87,   103,   101,   101,    44,     3,    68,   103,
      99,    36,    37,   659,    99,   633,   651,    77,    46,    98,
      48,   110,    50,   103,    82,   110,   103,    87,    56,    57,
      58,    59,   678,   668,   680,   681,    61,    62,    63,    99,
     105,   100,   687,   678,    66,    67,    68,   100,    73,     3,
     110,    97,    77,   103,    76,   104,    77,    11,    80,    81,
     102,   102,   102,    17,   682,   683,   684,    98,   101,   103,
       3,   101,    97,   706,    99,    72,   101,   100,    11,     3,
      34,   100,   107,    26,    17,   113,   111,   733,   706,   114,
     115,   116,   117,     0,   102,    26,     3,    68,   733,    71,
       7,    34,   100,   748,    72,   105,    77,   102,   102,    16,
     756,    18,    19,    20,    21,    22,    87,    24,    25,    73,
      27,    28,    29,    77,    31,   770,   771,    68,    99,    36,
      37,   104,    40,   103,    98,   100,    77,   103,   101,   110,
      73,   102,    49,    97,    77,   101,    87,   787,    98,   108,
     102,    55,   101,   107,    61,    62,    63,   111,    99,    42,
     102,    55,   102,   102,    97,     3,    73,    42,   102,   110,
      77,   100,    26,    11,   107,    26,   103,     3,   111,    17,
      97,    98,    99,   100,   101,   102,   102,     3,    97,   102,
      97,   101,    99,    98,   101,   102,    34,   103,     3,   106,
     107,   102,     7,   102,   111,    97,    41,   114,   115,   116,
     117,    16,   102,    18,    60,    20,   102,    22,    98,    24,
      25,     3,    27,    28,    29,     7,    31,   103,    65,    65,
      29,    36,    37,    29,    16,    73,    18,    84,    20,    77,
      22,   256,    24,    25,    49,    27,    28,    29,   386,    31,
     418,   706,     5,   458,    36,    37,    61,    62,    63,    97,
     682,   563,   514,   655,   321,   321,   464,    49,    73,   107,
     465,   467,    77,   111,   466,   681,   680,   657,   754,    61,
      62,    63,   715,   454,   569,   780,   572,   674,   577,   764,
       3,    73,    97,   725,    99,    77,   101,   102,    11,   439,
     794,   106,   107,   659,    17,   733,   111,   482,   667,   114,
     115,   116,   117,   411,   405,    97,   361,    99,   206,   101,
     102,    34,   485,     3,   106,   107,   374,     7,   791,   111,
     478,   728,   114,   115,   116,   117,    16,   633,    18,   528,
      20,   238,    22,   238,    24,    25,     3,    27,    28,    29,
       7,    31,    -1,   509,    -1,    -1,    36,    37,    -1,    16,
      73,    18,    -1,    20,    77,    22,    -1,    24,    25,    49,
      27,    28,    29,    -1,    31,    -1,    -1,    -1,    -1,    36,
      37,    61,    62,    63,    97,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    49,    73,   107,    -1,    -1,    77,   111,    -1,
      -1,    -1,    -1,    -1,    61,    62,    63,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    97,    -1,    99,
      77,   101,    -1,    -1,    -1,   105,   106,   107,    -1,    -1,
      -1,   111,    -1,    -1,   114,   115,   116,   117,    -1,    -1,
      97,    -1,    99,    -1,   101,    -1,    -1,    -1,   105,   106,
     107,     3,    -1,    -1,   111,     7,    -1,   114,   115,   116,
     117,    -1,    -1,    -1,    16,    -1,    18,    -1,    20,    -1,
      22,    -1,    24,    25,     3,    27,    28,    29,     7,    31,
      -1,    -1,    -1,    -1,    36,    37,    -1,    16,    -1,    18,
      -1,    20,    -1,    22,    -1,    24,    25,    49,    27,    28,
      29,    -1,    31,    -1,    -1,    -1,    -1,    36,    37,    61,
      62,    63,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      49,    73,    -1,    -1,    -1,    77,    -1,    -1,    -1,    -1,
      -1,    -1,    61,    62,    63,    -1,    -1,    -1,    -1,    -1,
       3,    -1,    -1,    -1,    73,    97,    -1,    99,    77,   101,
      -1,    -1,    -1,    -1,   106,   107,    -1,    -1,    -1,   111,
      -1,    -1,   114,   115,   116,   117,    -1,    -1,    97,    -1,
      99,    -1,   101,    36,    37,    -1,    -1,   106,   107,    -1,
      -1,    -1,   111,    -1,    -1,   114,   115,   116,   117,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,    62,
      63,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    77,     3,     4,     5,    -1,    -1,
      -1,     9,    10,    -1,    12,    13,    14,    15,    -1,    -1,
      -1,    19,    -1,    -1,    97,    -1,    99,    -1,   101,    -1,
      -1,    -1,    -1,    -1,   107,    -1,    -1,    -1,    -1,    -1,
      -1,   114,   115,   116,   117,    -1,    -1,    -1,    46,    -1,
      48,    -1,    50,    -1,    -1,    -1,    -1,    -1,    56,    57,
      58,    59,     3,     3,     4,     5,    -1,    -1,    -1,     9,
      10,    -1,    12,    13,    14,    15,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    46,    -1,    48,    -1,
      50,     3,    -1,    -1,    -1,   113,    56,    57,    58,    59,
      -1,    -1,    -1,    64,    -1,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    -1,
      -1,    -1,    -1,    -1,    85,    86,    -1,    88,    89,    90,
      91,    92,    -1,    94,    95,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     111,   112,    64,   113,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    -1,    -1,
      -1,    -1,    -1,    85,    86,    -1,    88,    89,    90,    91,
      92,    -1,    94,    95,     3,     4,    -1,    -1,    -1,    -1,
      -1,    -1,    11,    -1,    13,    -1,    -1,    -1,    17,   111,
     112,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       3,     4,    -1,    -1,    -1,    34,    -1,    -1,    11,    -1,
      13,    -1,    -1,    -1,    17,    -1,    -1,    46,    -1,    48,
      -1,    50,    -1,    -1,    -1,    -1,    -1,    56,    57,    58,
      59,    34,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    46,    73,    48,    -1,    50,    77,    -1,
      -1,    -1,    -1,    56,    57,    58,    59,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    97,    98,
      73,    -1,    -1,    -1,    77,    -1,   105,   106,   107,    32,
      -1,    34,   111,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    97,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   105,   106,   107,    -1,    -1,    -1,   111,    -1,
      -1,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    32,    -1,    34,
      -1,    -1,    85,    86,    -1,    88,    89,    90,    91,    92,
      -1,    94,    95,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   110,    -1,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    -1,    88,    89,    90,    91,    92,    -1,    94,
      95,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    64,   110,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      -1,    -1,    -1,    -1,    -1,    85,    86,    -1,    88,    89,
      90,    91,    92,    -1,    94,    95,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   111,   112
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
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      85,    86,    88,    89,    90,    91,    92,    94,    95,   112,
     212,   365,   366,   367,   368,    71,   158,   210,    87,   279,
     178,   123,    32,    34,    65,   110,   321,   322,   323,   366,
       3,    36,    37,    61,    62,    63,    77,    97,    99,   101,
     107,   114,   115,   116,   117,   325,   327,   328,   333,   336,
     337,   338,   339,   340,   341,   346,   347,   351,   352,   353,
     356,   357,   358,   359,   360,   361,   362,   364,   104,   252,
     388,    71,   167,   326,   102,   124,    31,   176,   292,   292,
      12,    97,   369,   371,   373,   379,   380,   381,   382,   383,
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
      44,   178,   223,   374,   375,   376,   377,    68,    77,    87,
      99,   110,    99,   105,    98,   103,   128,   316,   369,   178,
       3,   241,   316,   317,    19,    21,   140,   141,   142,   143,
     146,   101,   101,   101,    97,    99,   101,   312,   314,   315,
     210,     3,   181,   182,   365,   252,   210,    98,   178,   221,
     222,   223,   184,   101,   104,   184,   176,   186,   187,   191,
     197,   316,   213,   217,   219,    30,   159,   162,   103,   104,
     176,   273,   369,   178,   193,   194,   199,   200,   369,   104,
       3,    10,   316,     3,    10,   316,   104,    98,   103,   100,
     104,   100,   103,   331,   100,   103,   331,   103,    56,    57,
      58,    59,   345,    87,   214,   215,   124,    26,   219,   363,
     214,     3,    10,    37,    61,   118,   317,   341,   355,   103,
     170,   171,   172,    72,   103,   371,   135,   176,   371,   384,
     385,   386,   223,     3,   378,    98,    82,   220,   103,    39,
     119,   369,   100,   100,   128,   299,   105,   176,   369,   297,
     303,   144,   292,   104,   102,   140,   105,   124,   105,   124,
      52,   284,   285,   286,   288,   102,   102,   312,   312,   312,
      98,   312,   252,    77,   101,   260,   252,   369,   220,   103,
      11,    17,   224,   170,   178,   233,   234,   235,   236,   371,
     101,   201,   176,   216,   214,   217,   218,   163,   164,   165,
     166,   371,    72,   160,   371,   383,    42,    55,   178,   192,
     194,   178,   193,   178,   198,   200,   178,   199,   318,   100,
     100,   316,   349,   316,   316,   330,   316,   334,   363,   316,
     178,    26,   102,   214,   214,    26,   326,   100,   389,   172,
     102,   168,    72,   103,   369,   370,   376,   105,   128,   104,
      30,   145,   147,   289,   102,    40,   287,   290,    98,   100,
     102,   101,   257,   181,   178,   189,   206,   211,   261,   262,
     263,   264,   265,   266,   267,   268,   271,   278,   101,   254,
      98,   221,   108,   225,   225,    19,   102,   233,   101,   178,
     203,   204,   103,    78,   104,   176,    97,   195,   196,    55,
     102,    42,   102,    55,   102,    42,   102,   100,   369,    26,
      26,   385,   128,   176,   148,   316,   103,    45,    47,    54,
     291,   172,   174,     3,   190,   252,   212,   102,   261,   210,
     279,   172,     3,   107,   228,   228,   237,   238,   241,   170,
     178,   243,   244,   245,   246,    41,    60,   178,   202,   204,
     178,   203,   163,   371,   371,   383,     3,   176,    98,   144,
     102,   370,   208,   269,   210,   219,   101,   197,   102,     3,
     107,   226,   229,   226,   103,   239,   373,    19,   102,   243,
     195,   195,   102,   102,    98,   176,   197,   213,   178,   370,
     370,   237,   241,   247,   248,   176,   176,    65,   227,   230,
     227,    65,   249,   250,   103,   316,   364,   247
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
        case 2:
#line 410 "grammar.y"
    {ast = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node);;}
    break;

  case 3:
#line 417 "grammar.y"
    { ((*yyvalp).node) = [[StatementNode alloc] initWithStatement:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node)]; LOG("statement (0)\n"); ;}
    break;

  case 5:
#line 418 "grammar.y"
    { LOG("semicolon_opt\n"); ;}
    break;

  case 6:
#line 419 "grammar.y"
    { LOG("statement (0)\n"); ;}
    break;

  case 7:
#line 420 "grammar.y"
    { LOG("statement (0)\n"); ;}
    break;

  case 8:
#line 421 "grammar.y"
    { LOG("statement (0)\n"); ;}
    break;

  case 9:
#line 422 "grammar.y"
    { LOG("statement (0)\n"); ;}
    break;

  case 10:
#line 423 "grammar.y"
    { LOG("statement (0)\n"); ;}
    break;

  case 11:
#line 424 "grammar.y"
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node)]; ;}
    break;

  case 12:
#line 425 "grammar.y"
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(StatementsNode*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; ;}
    break;

  case 13:
#line 429 "grammar.y"
    { LOG("loop_statement (0)\n"); ;}
    break;

  case 14:
#line 430 "grammar.y"
    { LOG("loop_statement (0)\n"); ;}
    break;

  case 15:
#line 431 "grammar.y"
    { LOG("loop_statement (0)\n"); ;}
    break;

  case 16:
#line 432 "grammar.y"
    { LOG("loop_statement (0)\n"); ;}
    break;

  case 17:
#line 436 "grammar.y"
    { LOG("for_statement (0)\n"); ;}
    break;

  case 19:
#line 437 "grammar.y"
    { LOG("for_init_opt\n"); ;}
    break;

  case 21:
#line 438 "grammar.y"
    { LOG("expression_opt\n"); ;}
    break;

  case 22:
#line 439 "grammar.y"
    { LOG("for_statement (0)\n"); ;}
    break;

  case 23:
#line 440 "grammar.y"
    { LOG("for_init (0)\n"); ;}
    break;

  case 24:
#line 441 "grammar.y"
    { LOG("for_init (1)\n"); ;}
    break;

  case 25:
#line 445 "grammar.y"
    { LOG("for_in_statement (0)\n"); ;}
    break;

  case 26:
#line 449 "grammar.y"
    { LOG("while_statement (0)\n"); ;}
    break;

  case 27:
#line 450 "grammar.y"
    { LOG("while_condition (0)\n"); ;}
    break;

  case 28:
#line 451 "grammar.y"
    { LOG("while_condition (1)\n"); ;}
    break;

  case 29:
#line 455 "grammar.y"
    { LOG("do_while_statement (0)\n"); ;}
    break;

  case 30:
#line 459 "grammar.y"
    { LOG("branch_statement (0)\n"); ;}
    break;

  case 31:
#line 460 "grammar.y"
    { LOG("branch_statement (0)\n"); ;}
    break;

  case 32:
#line 464 "grammar.y"
    {((*yyvalp).node) = [[IfStatement alloc] initWithIfCondition:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (4))].yystate.yysemantics.yysval.node) body:(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (4))].yystate.yysemantics.yysval.node) elseClause:(((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (4))].yystate.yysemantics.yysval.node)]; LOG("if_statement (0)\n"); ;}
    break;

  case 34:
#line 465 "grammar.y"
    { LOG("else_clause_opt\n"); ;}
    break;

  case 35:
#line 466 "grammar.y"
    { LOG("if_condition (0)\n"); ;}
    break;

  case 36:
#line 467 "grammar.y"
    { LOG("if_condition (1)\n"); ;}
    break;

  case 37:
#line 468 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node); LOG("else_clause (0)\n"); ;}
    break;

  case 38:
#line 469 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node); LOG("else_clause (1)\n"); ;}
    break;

  case 39:
#line 473 "grammar.y"
    { LOG("switch_statement (0)\n"); ;}
    break;

  case 41:
#line 474 "grammar.y"
    { LOG("switch_cases_opt\n"); ;}
    break;

  case 42:
#line 475 "grammar.y"
    { LOG("switch_cases (0)\n"); ;}
    break;

  case 43:
#line 476 "grammar.y"
    { LOG("switch_case (0)\n"); ;}
    break;

  case 44:
#line 477 "grammar.y"
    { LOG("switch_case (1)\n"); ;}
    break;

  case 45:
#line 478 "grammar.y"
    { LOG("switch_case (0)\n"); ;}
    break;

  case 46:
#line 479 "grammar.y"
    { LOG("switch_case (1)\n"); ;}
    break;

  case 47:
#line 480 "grammar.y"
    { LOG("case_label (0)\n"); ;}
    break;

  case 48:
#line 481 "grammar.y"
    { LOG("case_item_list (0)\n"); ;}
    break;

  case 49:
#line 482 "grammar.y"
    { LOG("case_item_list (1)\n"); ;}
    break;

  case 51:
#line 483 "grammar.y"
    { LOG("guard_clause_opt\n"); ;}
    break;

  case 52:
#line 484 "grammar.y"
    { LOG("default_label (0)\n"); ;}
    break;

  case 53:
#line 485 "grammar.y"
    { LOG("guard_clause (0)\n"); ;}
    break;

  case 54:
#line 486 "grammar.y"
    { LOG("guard_expression (0)\n"); ;}
    break;

  case 55:
#line 490 "grammar.y"
    { LOG("labeled_statement (0)\n"); ;}
    break;

  case 56:
#line 491 "grammar.y"
    { LOG("labeled_statement (1)\n"); ;}
    break;

  case 57:
#line 492 "grammar.y"
    { LOG("statement_label (0)\n"); ;}
    break;

  case 58:
#line 493 "grammar.y"
    { LOG("label_name (0)\n"); ;}
    break;

  case 59:
#line 497 "grammar.y"
    { LOG("control_transfer_statement (0)\n"); ;}
    break;

  case 60:
#line 498 "grammar.y"
    { LOG("control_transfer_statement (0)\n"); ;}
    break;

  case 61:
#line 499 "grammar.y"
    { LOG("control_transfer_statement (0)\n"); ;}
    break;

  case 62:
#line 500 "grammar.y"
    { LOG("control_transfer_statement (0)\n"); ;}
    break;

  case 63:
#line 504 "grammar.y"
    { LOG("break_statement (0)\n"); ;}
    break;

  case 65:
#line 505 "grammar.y"
    { LOG("label_name_opt\n"); ;}
    break;

  case 66:
#line 509 "grammar.y"
    { LOG("continue_statement (0)\n"); ;}
    break;

  case 67:
#line 513 "grammar.y"
    { LOG("fallthrough_statement (0)\n"); ;}
    break;

  case 68:
#line 517 "grammar.y"
    {((*yyvalp).node) = [[ReturnStatement alloc] initWithReturnExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; LOG("return_statement (0)\n"); ;}
    break;

  case 69:
#line 524 "grammar.y"
    { LOG("generic_parameter_clause (0)\n"); ;}
    break;

  case 71:
#line 525 "grammar.y"
    { LOG("requirement_clause_opt\n"); ;}
    break;

  case 72:
#line 526 "grammar.y"
    { LOG("generic_parameter_list (0)\n"); ;}
    break;

  case 73:
#line 527 "grammar.y"
    { LOG("generic_parameter_list (1)\n"); ;}
    break;

  case 74:
#line 528 "grammar.y"
    { LOG("generic_parameter (0)\n"); ;}
    break;

  case 75:
#line 529 "grammar.y"
    { LOG("generic_parameter (0)\n"); ;}
    break;

  case 76:
#line 530 "grammar.y"
    { LOG("generic_parameter (0)\n"); ;}
    break;

  case 77:
#line 531 "grammar.y"
    { LOG("requirement_clause (0)\n"); ;}
    break;

  case 78:
#line 532 "grammar.y"
    { LOG("requirement_list (0)\n"); ;}
    break;

  case 79:
#line 533 "grammar.y"
    { LOG("requirement_list (1)\n"); ;}
    break;

  case 80:
#line 534 "grammar.y"
    { LOG("requirement (0)\n"); ;}
    break;

  case 81:
#line 535 "grammar.y"
    { LOG("requirement (1)\n"); ;}
    break;

  case 82:
#line 536 "grammar.y"
    { LOG("conformance_requirement (0)\n"); ;}
    break;

  case 83:
#line 537 "grammar.y"
    { LOG("conformance_requirement (0)\n"); ;}
    break;

  case 84:
#line 538 "grammar.y"
    { LOG("same_type_requirement (0)\n"); ;}
    break;

  case 85:
#line 542 "grammar.y"
    { LOG("generic_argument_clause (0)\n"); ;}
    break;

  case 86:
#line 543 "grammar.y"
    { LOG("generic_argument_list (0)\n"); ;}
    break;

  case 87:
#line 544 "grammar.y"
    { LOG("generic_argument_list (1)\n"); ;}
    break;

  case 88:
#line 545 "grammar.y"
    { LOG("generic_argument (0)\n"); ;}
    break;

  case 89:
#line 552 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 90:
#line 553 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 91:
#line 554 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 92:
#line 555 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 93:
#line 556 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 94:
#line 557 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 95:
#line 558 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 96:
#line 559 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 97:
#line 560 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 98:
#line 561 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 99:
#line 562 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 100:
#line 563 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 101:
#line 564 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 102:
#line 565 "grammar.y"
    { LOG("declaration (0)\n"); ;}
    break;

  case 103:
#line 566 "grammar.y"
    { LOG("declarations (0)\n"); ;}
    break;

  case 105:
#line 567 "grammar.y"
    { LOG("declarations_opt\n"); ;}
    break;

  case 106:
#line 568 "grammar.y"
    { LOG("declaration_specifiers (0)\n"); ;}
    break;

  case 108:
#line 569 "grammar.y"
    { LOG("declaration_specifiers_opt\n"); ;}
    break;

  case 109:
#line 570 "grammar.y"
    { LOG("declaration_specifier (0)\n"); ;}
    break;

  case 110:
#line 571 "grammar.y"
    { LOG("declaration_specifier (1)\n"); ;}
    break;

  case 111:
#line 572 "grammar.y"
    { LOG("declaration_specifier (2)\n"); ;}
    break;

  case 112:
#line 573 "grammar.y"
    { LOG("declaration_specifier (3)\n"); ;}
    break;

  case 113:
#line 574 "grammar.y"
    { LOG("declaration_specifier (4)\n"); ;}
    break;

  case 114:
#line 575 "grammar.y"
    { LOG("declaration_specifier (5)\n"); ;}
    break;

  case 115:
#line 576 "grammar.y"
    { LOG("declaration_specifier (6)\n"); ;}
    break;

  case 116:
#line 577 "grammar.y"
    { LOG("declaration_specifier (7)\n"); ;}
    break;

  case 117:
#line 578 "grammar.y"
    { LOG("declaration_specifier (8)\n"); ;}
    break;

  case 118:
#line 582 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (3))].yystate.yysemantics.yysval.node); LOG("code_block (0)\n"); ;}
    break;

  case 119:
#line 583 "grammar.y"
    { ((*yyvalp).node) = NULL; LOG("code_block (1)\n"); ;}
    break;

  case 120:
#line 587 "grammar.y"
    { LOG("import_declaration (0)\n"); ;}
    break;

  case 122:
#line 588 "grammar.y"
    { LOG("attributes_opt\n"); ;}
    break;

  case 124:
#line 589 "grammar.y"
    { LOG("import_kind_opt\n"); ;}
    break;

  case 125:
#line 590 "grammar.y"
    { LOG("import_kind (0)\n"); ;}
    break;

  case 126:
#line 591 "grammar.y"
    { LOG("import_kind (1)\n"); ;}
    break;

  case 127:
#line 592 "grammar.y"
    { LOG("import_kind (2)\n"); ;}
    break;

  case 128:
#line 593 "grammar.y"
    { LOG("import_kind (3)\n"); ;}
    break;

  case 129:
#line 594 "grammar.y"
    { LOG("import_kind (4)\n"); ;}
    break;

  case 130:
#line 595 "grammar.y"
    { LOG("import_kind (5)\n"); ;}
    break;

  case 131:
#line 596 "grammar.y"
    { LOG("import_kind (6)\n"); ;}
    break;

  case 132:
#line 597 "grammar.y"
    { LOG("import_path (0)\n"); ;}
    break;

  case 133:
#line 598 "grammar.y"
    { LOG("import_path (1)\n"); ;}
    break;

  case 134:
#line 599 "grammar.y"
    { LOG("import_path_identifier (0)\n"); ;}
    break;

  case 135:
#line 600 "grammar.y"
    { LOG("import_path_identifier (1)\n"); ;}
    break;

  case 136:
#line 604 "grammar.y"
    {((*yyvalp).node) = [[DeclarationStatement alloc] initWithInitializer:(((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (4))].yystate.yysemantics.yysval.node)]; LOG("constant_declaration (0)\n"); ;}
    break;

  case 137:
#line 605 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node) next:nil];  LOG("pattern_initializer_list (0)\n"); ;}
    break;

  case 138:
#line 606 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)]; LOG("pattern_initializer_list (1)\n"); ;}
    break;

  case 139:
#line 607 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:[[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node) next:nil]]; LOG("pattern_initializer (0)\n"); ;}
    break;

  case 140:
#line 608 "grammar.y"
    { LOG("pattern_initializer (1)\n"); ;}
    break;

  case 142:
#line 609 "grammar.y"
    { LOG("initializer_opt\n"); ;}
    break;

  case 143:
#line 610 "grammar.y"
    {((*yyvalp).node) = [[AssignmentOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)];  LOG("initializer (0)\n"); ;}
    break;

  case 144:
#line 614 "grammar.y"
    {((*yyvalp).node) = [[DeclarationStatement alloc] initWithInitializer:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; LOG("variable_declaration (0)\n"); ;}
    break;

  case 145:
#line 615 "grammar.y"
    { LOG("variable_declaration (0)\n"); ;}
    break;

  case 146:
#line 616 "grammar.y"
    { LOG("variable_declaration (0)\n"); ;}
    break;

  case 147:
#line 617 "grammar.y"
    { LOG("variable_declaration (0)\n"); ;}
    break;

  case 148:
#line 618 "grammar.y"
    { LOG("variable_declaration (0)\n"); ;}
    break;

  case 149:
#line 619 "grammar.y"
    { LOG("variable_declaration_head (0)\n"); ;}
    break;

  case 150:
#line 620 "grammar.y"
    { LOG("variable_name (0)\n"); ;}
    break;

  case 151:
#line 621 "grammar.y"
    { LOG("getter_setter_block (0)\n"); ;}
    break;

  case 153:
#line 622 "grammar.y"
    { LOG("setter_clause_opt\n"); ;}
    break;

  case 154:
#line 623 "grammar.y"
    { LOG("getter_setter_block (0)\n"); ;}
    break;

  case 155:
#line 624 "grammar.y"
    { LOG("getter_clause (0)\n"); ;}
    break;

  case 156:
#line 625 "grammar.y"
    { LOG("setter_clause (0)\n"); ;}
    break;

  case 158:
#line 626 "grammar.y"
    { LOG("setter_name_opt\n"); ;}
    break;

  case 159:
#line 627 "grammar.y"
    { LOG("setter_name (0)\n"); ;}
    break;

  case 160:
#line 628 "grammar.y"
    { LOG("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 162:
#line 629 "grammar.y"
    { LOG("setter_keyword_clause_opt\n"); ;}
    break;

  case 163:
#line 630 "grammar.y"
    { LOG("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 164:
#line 631 "grammar.y"
    { LOG("getter_keyword_clause (0)\n"); ;}
    break;

  case 165:
#line 632 "grammar.y"
    { LOG("setter_keyword_clause (0)\n"); ;}
    break;

  case 166:
#line 633 "grammar.y"
    { LOG("willSet_didSet_block (0)\n"); ;}
    break;

  case 168:
#line 634 "grammar.y"
    { LOG("didSet_clause_opt\n"); ;}
    break;

  case 169:
#line 635 "grammar.y"
    { LOG("willSet_didSet_block (0)\n"); ;}
    break;

  case 170:
#line 636 "grammar.y"
    { LOG("willSet_clause (0)\n"); ;}
    break;

  case 171:
#line 637 "grammar.y"
    { LOG("didSet_clause (0)\n"); ;}
    break;

  case 172:
#line 641 "grammar.y"
    { LOG("typealias_declaration (0)\n"); ;}
    break;

  case 173:
#line 642 "grammar.y"
    { LOG("typealias_head (0)\n"); ;}
    break;

  case 174:
#line 643 "grammar.y"
    { LOG("typealias_name (0)\n"); ;}
    break;

  case 175:
#line 644 "grammar.y"
    { LOG("typealias_assignment (0)\n"); ;}
    break;

  case 176:
#line 648 "grammar.y"
    {
    ((*yyvalp).node) = [[FunctionDeclaration alloc] initWithName:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (5))].yystate.yysemantics.yysval.str)) signature:(((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (5))].yystate.yysemantics.yysval.node) body:(((yyGLRStackItem const *)yyvsp)[YYFILL ((5) - (5))].yystate.yysemantics.yysval.node)];
    LOG("function_declaration (0)\n");
;}
    break;

  case 178:
#line 652 "grammar.y"
    { LOG("generic_parameter_clause_opt\n"); ;}
    break;

  case 179:
#line 653 "grammar.y"
    { LOG("function_head (0)\n"); ;}
    break;

  case 180:
#line 654 "grammar.y"
    { LOG("function_name (0)\n"); ;}
    break;

  case 181:
#line 655 "grammar.y"
    { LOG("function_name (1)\n"); ;}
    break;

  case 182:
#line 656 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node); LOG("function_signature (0)\n"); ;}
    break;

  case 184:
#line 657 "grammar.y"
    { LOG("function_result_opt\n"); ;}
    break;

  case 185:
#line 658 "grammar.y"
    { LOG("function_result (0)\n"); ;}
    break;

  case 186:
#line 659 "grammar.y"
    { LOG("function_body (0)\n"); ;}
    break;

  case 187:
#line 660 "grammar.y"
    { LOG("parameter_clauses (0)\n"); ;}
    break;

  case 189:
#line 661 "grammar.y"
    { LOG("parameter_clauses_opt\n"); ;}
    break;

  case 190:
#line 662 "grammar.y"
    {((*yyvalp).node) = NULL; LOG("parameter_clause (0)\n"); ;}
    break;

  case 191:
#line 663 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (4))].yystate.yysemantics.yysval.node); LOG("parameter_clause (1)\n"); ;}
    break;

  case 193:
#line 664 "grammar.y"
    { LOG("tripledot_opt\n"); ;}
    break;

  case 194:
#line 665 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node) next:nil]; LOG("parameter_list (0)\n"); ;}
    break;

  case 195:
#line 666 "grammar.y"
    { ((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)];LOG("parameter_list (1)\n"); ;}
    break;

  case 196:
#line 667 "grammar.y"
    {
    ((*yyvalp).node) = [[FunctionParameter alloc] initWithInoutVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (7))].yystate.yysemantics.yysval.node) letVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (7))].yystate.yysemantics.yysval.node) hashVal:!!(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (7))].yystate.yysemantics.yysval.node) external:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (7))].yystate.yysemantics.yysval.str)) local:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((5) - (7))].yystate.yysemantics.yysval.str)) defVal:(((yyGLRStackItem const *)yyvsp)[YYFILL ((6) - (7))].yystate.yysemantics.yysval.node)];
    LOG("parameter (0)\n");
;}
    break;

  case 198:
#line 671 "grammar.y"
    { LOG("inout_opt\n"); ;}
    break;

  case 200:
#line 672 "grammar.y"
    { LOG("let_opt\n"); ;}
    break;

  case 202:
#line 673 "grammar.y"
    { LOG("hash_opt\n"); ;}
    break;

  case 204:
#line 674 "grammar.y"
    { LOG("local_parameter_name_opt\n"); ;}
    break;

  case 206:
#line 675 "grammar.y"
    { LOG("default_argument_clause_opt\n"); ;}
    break;

  case 207:
#line 676 "grammar.y"
    { LOG("parameter (0)\n"); ;}
    break;

  case 208:
#line 677 "grammar.y"
    { LOG("parameter (0)\n"); ;}
    break;

  case 209:
#line 678 "grammar.y"
    { LOG("parameter_name (0)\n"); ;}
    break;

  case 210:
#line 679 "grammar.y"
    { LOG("parameter_name (1)\n"); ;}
    break;

  case 211:
#line 680 "grammar.y"
    { LOG("local_parameter_name (0)\n"); ;}
    break;

  case 212:
#line 681 "grammar.y"
    { LOG("local_parameter_name (1)\n"); ;}
    break;

  case 213:
#line 682 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node); LOG("default_argument_clause (0)\n"); ;}
    break;

  case 214:
#line 686 "grammar.y"
    { LOG("enum_declaration (0)\n"); ;}
    break;

  case 215:
#line 687 "grammar.y"
    { LOG("enum_declaration (1)\n"); ;}
    break;

  case 216:
#line 688 "grammar.y"
    { LOG("union_style_enum (0)\n"); ;}
    break;

  case 218:
#line 689 "grammar.y"
    { LOG("union_style_enum_members_opt\n"); ;}
    break;

  case 219:
#line 690 "grammar.y"
    { LOG("union_style_enum_members (0)\n"); ;}
    break;

  case 220:
#line 691 "grammar.y"
    { LOG("union_style_enum_member (0)\n"); ;}
    break;

  case 221:
#line 692 "grammar.y"
    { LOG("union_style_enum_member (1)\n"); ;}
    break;

  case 222:
#line 693 "grammar.y"
    { LOG("union_style_enum_case_clause (0)\n"); ;}
    break;

  case 223:
#line 694 "grammar.y"
    { LOG("union_style_enum_case_list (0)\n"); ;}
    break;

  case 224:
#line 695 "grammar.y"
    { LOG("union_style_enum_case_list (1)\n"); ;}
    break;

  case 225:
#line 696 "grammar.y"
    { LOG("union_style_enum_case (0)\n"); ;}
    break;

  case 227:
#line 697 "grammar.y"
    { LOG("tuple_type_opt\n"); ;}
    break;

  case 228:
#line 698 "grammar.y"
    { LOG("enum_name (0)\n"); ;}
    break;

  case 229:
#line 699 "grammar.y"
    { LOG("enum_case_name (0)\n"); ;}
    break;

  case 230:
#line 700 "grammar.y"
    { LOG("raw_value_style_enum (0)\n"); ;}
    break;

  case 232:
#line 701 "grammar.y"
    { LOG("raw_value_style_enum_members_opt\n"); ;}
    break;

  case 233:
#line 702 "grammar.y"
    { LOG("raw_value_style_enum_members (0)\n"); ;}
    break;

  case 234:
#line 703 "grammar.y"
    { LOG("raw_value_style_enum_member (0)\n"); ;}
    break;

  case 235:
#line 704 "grammar.y"
    { LOG("raw_value_style_enum_member (1)\n"); ;}
    break;

  case 236:
#line 705 "grammar.y"
    { LOG("raw_value_style_enum_case_clause (0)\n"); ;}
    break;

  case 237:
#line 706 "grammar.y"
    { LOG("raw_value_style_enum_case_list (0)\n"); ;}
    break;

  case 238:
#line 707 "grammar.y"
    { LOG("raw_value_style_enum_case_list (1)\n"); ;}
    break;

  case 239:
#line 708 "grammar.y"
    { LOG("raw_value_style_enum_case (0)\n"); ;}
    break;

  case 241:
#line 709 "grammar.y"
    { LOG("raw_value_assignment_opt\n"); ;}
    break;

  case 242:
#line 710 "grammar.y"
    { LOG("raw_value_assignment (0)\n"); ;}
    break;

  case 243:
#line 714 "grammar.y"
    { LOG("struct_declaration (0)\n"); ;}
    break;

  case 245:
#line 715 "grammar.y"
    { LOG("type_inheritance_clause_opt\n"); ;}
    break;

  case 246:
#line 716 "grammar.y"
    { LOG("struct_name (0)\n"); ;}
    break;

  case 247:
#line 717 "grammar.y"
    { LOG("struct_body (0)\n"); ;}
    break;

  case 248:
#line 721 "grammar.y"
    { LOG("class_declaration (0)\n"); ;}
    break;

  case 249:
#line 722 "grammar.y"
    { LOG("class_name (0)\n"); ;}
    break;

  case 250:
#line 723 "grammar.y"
    { LOG("class_body (0)\n"); ;}
    break;

  case 251:
#line 727 "grammar.y"
    { LOG("protocol_declaration (0)\n"); ;}
    break;

  case 252:
#line 728 "grammar.y"
    { LOG("protocol_name (0)\n"); ;}
    break;

  case 253:
#line 729 "grammar.y"
    { LOG("protocol_body (0)\n"); ;}
    break;

  case 255:
#line 730 "grammar.y"
    { LOG("protocol_member_declarations_opt\n"); ;}
    break;

  case 256:
#line 731 "grammar.y"
    { LOG("protocol_member_declaration (0)\n"); ;}
    break;

  case 257:
#line 732 "grammar.y"
    { LOG("protocol_member_declaration (0)\n"); ;}
    break;

  case 258:
#line 733 "grammar.y"
    { LOG("protocol_member_declaration (0)\n"); ;}
    break;

  case 259:
#line 734 "grammar.y"
    { LOG("protocol_member_declaration (0)\n"); ;}
    break;

  case 260:
#line 735 "grammar.y"
    { LOG("protocol_member_declaration (0)\n"); ;}
    break;

  case 261:
#line 736 "grammar.y"
    { LOG("protocol_member_declarations (0)\n"); ;}
    break;

  case 262:
#line 740 "grammar.y"
    { LOG("protocol_property_declaration (0)\n"); ;}
    break;

  case 263:
#line 744 "grammar.y"
    { LOG("protocol_method_declaration (0)\n"); ;}
    break;

  case 264:
#line 748 "grammar.y"
    { LOG("protocol_initializer_declaration (0)\n"); ;}
    break;

  case 265:
#line 752 "grammar.y"
    { LOG("protocol_subscript_declaration (0)\n"); ;}
    break;

  case 266:
#line 756 "grammar.y"
    { LOG("protocol_associated_type_declaration (0)\n"); ;}
    break;

  case 268:
#line 757 "grammar.y"
    { LOG("typealias_assignment_opt\n"); ;}
    break;

  case 269:
#line 761 "grammar.y"
    { LOG("initializer_declaration (0)\n"); ;}
    break;

  case 270:
#line 762 "grammar.y"
    { LOG("initializer_head (0)\n"); ;}
    break;

  case 272:
#line 763 "grammar.y"
    { LOG("convenience_opt\n"); ;}
    break;

  case 273:
#line 764 "grammar.y"
    { LOG("initializer_body (0)\n"); ;}
    break;

  case 274:
#line 768 "grammar.y"
    { LOG("deinitializer_declaration (0)\n"); ;}
    break;

  case 275:
#line 772 "grammar.y"
    { LOG("extension_declaration (0)\n"); ;}
    break;

  case 276:
#line 773 "grammar.y"
    { LOG("extension_body (0)\n"); ;}
    break;

  case 277:
#line 777 "grammar.y"
    { LOG("subscript_declaration (0)\n"); ;}
    break;

  case 278:
#line 778 "grammar.y"
    { LOG("subscript_declaration (0)\n"); ;}
    break;

  case 279:
#line 779 "grammar.y"
    { LOG("subscript_declaration (0)\n"); ;}
    break;

  case 280:
#line 780 "grammar.y"
    { LOG("subscript_head (0)\n"); ;}
    break;

  case 281:
#line 781 "grammar.y"
    { LOG("subscript_result (0)\n"); ;}
    break;

  case 282:
#line 785 "grammar.y"
    { LOG("operator_declaration (0)\n"); ;}
    break;

  case 283:
#line 786 "grammar.y"
    { LOG("operator_declaration (1)\n"); ;}
    break;

  case 284:
#line 787 "grammar.y"
    { LOG("operator_declaration (2)\n"); ;}
    break;

  case 285:
#line 788 "grammar.y"
    { LOG("prefix_operator_declaration (0)\n"); ;}
    break;

  case 286:
#line 789 "grammar.y"
    { LOG("postfix_operator_declaration (0)\n"); ;}
    break;

  case 287:
#line 790 "grammar.y"
    { LOG("infix_operator_declaration (0)\n"); ;}
    break;

  case 289:
#line 791 "grammar.y"
    { LOG("infix_operator_attributes_opt\n"); ;}
    break;

  case 290:
#line 792 "grammar.y"
    { LOG("infix_operator_attributes (0)\n"); ;}
    break;

  case 292:
#line 793 "grammar.y"
    { LOG("precedence_clause_opt\n"); ;}
    break;

  case 294:
#line 794 "grammar.y"
    { LOG("associativity_clause_opt\n"); ;}
    break;

  case 295:
#line 795 "grammar.y"
    { LOG("precedence_clause (0)\n"); ;}
    break;

  case 296:
#line 796 "grammar.y"
    { LOG("precedence_level (0)\n"); ;}
    break;

  case 297:
#line 797 "grammar.y"
    { LOG("associativity_clause (0)\n"); ;}
    break;

  case 298:
#line 798 "grammar.y"
    { LOG("associativity (0)\n"); ;}
    break;

  case 299:
#line 799 "grammar.y"
    { LOG("associativity (1)\n"); ;}
    break;

  case 300:
#line 800 "grammar.y"
    { LOG("associativity (2)\n"); ;}
    break;

  case 301:
#line 807 "grammar.y"
    { LOG("pattern (0)\n"); ;}
    break;

  case 303:
#line 808 "grammar.y"
    { LOG("type_annotation_opt\n"); ;}
    break;

  case 304:
#line 809 "grammar.y"
    {((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))]; LOG("pattern (1)\n"); ;}
    break;

  case 305:
#line 810 "grammar.y"
    { LOG("pattern (3)\n"); ;}
    break;

  case 306:
#line 811 "grammar.y"
    { LOG("pattern (4)\n"); ;}
    break;

  case 307:
#line 812 "grammar.y"
    { LOG("pattern (5)\n"); ;}
    break;

  case 308:
#line 813 "grammar.y"
    { LOG("pattern (6)\n"); ;}
    break;

  case 309:
#line 814 "grammar.y"
    { LOG("pattern (7)\n"); ;}
    break;

  case 310:
#line 818 "grammar.y"
    { LOG("wildcard_pattern (0)\n"); ;}
    break;

  case 311:
#line 822 "grammar.y"
    { LOG("identifier_pattern (0)\n"); ;}
    break;

  case 312:
#line 826 "grammar.y"
    { LOG("value_binding_pattern (0)\n"); ;}
    break;

  case 313:
#line 827 "grammar.y"
    { LOG("value_binding_pattern (1)\n"); ;}
    break;

  case 314:
#line 831 "grammar.y"
    { LOG("tuple_pattern (0)\n"); ;}
    break;

  case 316:
#line 832 "grammar.y"
    { LOG("tuple_pattern_element_list_opt\n"); ;}
    break;

  case 317:
#line 833 "grammar.y"
    { LOG("tuple_pattern_element_list (0)\n"); ;}
    break;

  case 318:
#line 834 "grammar.y"
    { LOG("tuple_pattern_element_list (1)\n"); ;}
    break;

  case 319:
#line 835 "grammar.y"
    { LOG("tuple_pattern_element (0)\n"); ;}
    break;

  case 320:
#line 839 "grammar.y"
    { LOG("enum_case_pattern (0)\n"); ;}
    break;

  case 322:
#line 840 "grammar.y"
    { LOG("type_identifier_opt\n"); ;}
    break;

  case 324:
#line 841 "grammar.y"
    { LOG("tuple_pattern_opt\n"); ;}
    break;

  case 325:
#line 845 "grammar.y"
    { LOG("type_casting_pattern (0)\n"); ;}
    break;

  case 326:
#line 846 "grammar.y"
    { LOG("type_casting_pattern (1)\n"); ;}
    break;

  case 327:
#line 847 "grammar.y"
    { LOG("is_pattern (0)\n"); ;}
    break;

  case 328:
#line 848 "grammar.y"
    { LOG("as_pattern (0)\n"); ;}
    break;

  case 329:
#line 852 "grammar.y"
    { LOG("expression_pattern (0)\n"); ;}
    break;

  case 330:
#line 859 "grammar.y"
    { LOG("attribute (0)\n"); ;}
    break;

  case 332:
#line 860 "grammar.y"
    { LOG("attribute_argument_clause_opt\n"); ;}
    break;

  case 333:
#line 861 "grammar.y"
    { LOG("attribute_name (0)\n"); ;}
    break;

  case 334:
#line 862 "grammar.y"
    { LOG("attribute_argument_clause (0)\n"); ;}
    break;

  case 336:
#line 863 "grammar.y"
    { LOG("balanced_tokens_opt\n"); ;}
    break;

  case 337:
#line 864 "grammar.y"
    { LOG("attributes (0)\n"); ;}
    break;

  case 338:
#line 865 "grammar.y"
    { LOG("balanced_tokens (0)\n"); ;}
    break;

  case 339:
#line 866 "grammar.y"
    { LOG("balanced_token (0)\n"); ;}
    break;

  case 340:
#line 867 "grammar.y"
    { LOG("balanced_token (0)\n"); ;}
    break;

  case 341:
#line 868 "grammar.y"
    { LOG("balanced_token (0)\n"); ;}
    break;

  case 342:
#line 869 "grammar.y"
    { LOG("balanced_token (0)\n"); ;}
    break;

  case 343:
#line 870 "grammar.y"
    { LOG("balanced_token (0)\n"); ;}
    break;

  case 344:
#line 877 "grammar.y"
    {LOG("expression (0)\n"); ;}
    break;

  case 345:
#line 878 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)];;}
    break;

  case 346:
#line 879 "grammar.y"
    { LOG("expression_list (0)\n"); ;}
    break;

  case 347:
#line 880 "grammar.y"
    { LOG("expression_list (1)\n"); ;}
    break;

  case 348:
#line 884 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str) ? [[PrefixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))] : (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node);  LOG("prefix_expression\n"); ;}
    break;

  case 349:
#line 885 "grammar.y"
    {((*yyvalp).str) = NULL;}
    break;

  case 350:
#line 885 "grammar.y"
    { LOG("prefix_operator_opt\n"); ;}
    break;

  case 351:
#line 886 "grammar.y"
    { LOG("prefix_expression (0)\n"); ;}
    break;

  case 352:
#line 887 "grammar.y"
    { LOG("in_out_expression (0)\n"); ;}
    break;

  case 353:
#line 891 "grammar.y"
    {((*yyvalp).node) = [[BinaryOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node) binaryOperator:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))]; LOG("binary_expression (0)\n"); ;}
    break;

  case 354:
#line 892 "grammar.y"
    {((*yyvalp).node) = [[AssignmentOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; LOG("binary_expression (0)\n"); ;}
    break;

  case 355:
#line 893 "grammar.y"
    {((*yyvalp).node) = [[TernaryOperator alloc] initWithTrueOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (4))].yystate.yysemantics.yysval.node) falseOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (4))].yystate.yysemantics.yysval.node)]; LOG("binary_expression (0)\n"); ;}
    break;

  case 356:
#line 894 "grammar.y"
    { LOG("binary_expression (0)\n"); ;}
    break;

  case 357:
#line 895 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node)]; ;}
    break;

  case 358:
#line 896 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)];  ;}
    break;

  case 359:
#line 902 "grammar.y"
    { LOG("type_casting_operator (0)\n"); ;}
    break;

  case 360:
#line 903 "grammar.y"
    { LOG("type_casting_operator (1)\n"); ;}
    break;

  case 362:
#line 904 "grammar.y"
    { LOG("question_opt\n"); ;}
    break;

  case 363:
#line 908 "grammar.y"
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))]; LOG("primary_expression (1)\n"); ;}
    break;

  case 365:
#line 909 "grammar.y"
    { LOG("generic_argument_clause_opt\n"); ;}
    break;

  case 366:
#line 910 "grammar.y"
    { LOG("primary_expression (2)\n"); ;}
    break;

  case 367:
#line 911 "grammar.y"
    { LOG("primary_expression (3)\n"); ;}
    break;

  case 368:
#line 912 "grammar.y"
    { LOG("primary_expression (4)\n"); ;}
    break;

  case 369:
#line 913 "grammar.y"
    { LOG("primary_expression (5)\n"); ;}
    break;

  case 370:
#line 914 "grammar.y"
    { LOG("primary_expression (6)\n"); ;}
    break;

  case 371:
#line 915 "grammar.y"
    { LOG("primary_expression (7)\n"); ;}
    break;

  case 372:
#line 916 "grammar.y"
    { LOG("primary_expression (8)\n"); ;}
    break;

  case 373:
#line 920 "grammar.y"
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.str))]; LOG("Literal: %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.str));}
    break;

  case 374:
#line 921 "grammar.y"
    { LOG("literal_expression (0)\n"); ;}
    break;

  case 375:
#line 922 "grammar.y"
    { LOG("literal_expression (1)\n"); ;}
    break;

  case 376:
#line 923 "grammar.y"
    { LOG("literal_expression (0)\n"); ;}
    break;

  case 377:
#line 924 "grammar.y"
    { LOG("literal_expression (1)\n"); ;}
    break;

  case 378:
#line 925 "grammar.y"
    { LOG("literal_expression (2)\n"); ;}
    break;

  case 379:
#line 926 "grammar.y"
    { LOG("literal_expression (3)\n"); ;}
    break;

  case 380:
#line 927 "grammar.y"
    {((*yyvalp).node) = [[ArrayLiteral alloc] initWithItems:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (3))].yystate.yysemantics.yysval.node)]; LOG("array_literal (0)\n"); ;}
    break;

  case 382:
#line 928 "grammar.y"
    { LOG("array_literal_items_opt\n"); ;}
    break;

  case 383:
#line 929 "grammar.y"
    { ((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:nil]; LOG("array_literal_items (0)\n"); ;}
    break;

  case 384:
#line 930 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)]; LOG("array_literal_items (1)\n"); ;}
    break;

  case 386:
#line 931 "grammar.y"
    { LOG("comma_opt\n"); ;}
    break;

  case 387:
#line 932 "grammar.y"
    { LOG("array_literal_item (0)\n"); ;}
    break;

  case 388:
#line 933 "grammar.y"
    {((*yyvalp).node) = [[DictionaryLiteral alloc] initWithPairs:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (3))].yystate.yysemantics.yysval.node)]; LOG("array_literal (0)\n"); LOG("dictionary_literal (0)\n"); ;}
    break;

  case 389:
#line 934 "grammar.y"
    {((*yyvalp).node) = [[DictionaryLiteral alloc] initWithPairs:nil];  LOG("dictionary_literal (1)\n"); ;}
    break;

  case 390:
#line 935 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:nil]; LOG("dictionary_literal_items (0)\n"); ;}
    break;

  case 391:
#line 936 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)]; LOG("dictionary_literal_items (1)\n"); ;}
    break;

  case 392:
#line 937 "grammar.y"
    {((*yyvalp).node) = [[DictionaryItem alloc] initWithKey:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) value:(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)]; LOG("dictionary_literal_item (0)\n"); ;}
    break;

  case 393:
#line 941 "grammar.y"
    { LOG("self_expression (0)\n"); ;}
    break;

  case 394:
#line 942 "grammar.y"
    { LOG("self_expression (0)\n"); ;}
    break;

  case 395:
#line 943 "grammar.y"
    { LOG("self_expression (0)\n"); ;}
    break;

  case 396:
#line 944 "grammar.y"
    { LOG("self_expression (0)\n"); ;}
    break;

  case 397:
#line 948 "grammar.y"
    { LOG("superclass_expression (0)\n"); ;}
    break;

  case 398:
#line 949 "grammar.y"
    { LOG("superclass_expression (1)\n"); ;}
    break;

  case 399:
#line 950 "grammar.y"
    { LOG("superclass_expression (2)\n"); ;}
    break;

  case 400:
#line 951 "grammar.y"
    { LOG("superclass_method_expression (0)\n"); ;}
    break;

  case 401:
#line 952 "grammar.y"
    { LOG("superclass_subscript_expression (0)\n"); ;}
    break;

  case 402:
#line 953 "grammar.y"
    { LOG("superclass_initializer_expression (0)\n"); ;}
    break;

  case 403:
#line 957 "grammar.y"
    { LOG("closure_expression (0)\n"); ;}
    break;

  case 405:
#line 958 "grammar.y"
    { LOG("closure_signature_opt\n"); ;}
    break;

  case 406:
#line 959 "grammar.y"
    { LOG("closure_signature (0)\n"); ;}
    break;

  case 407:
#line 960 "grammar.y"
    { LOG("closure_signature (0)\n"); ;}
    break;

  case 408:
#line 961 "grammar.y"
    { LOG("closure_signature (0)\n"); ;}
    break;

  case 409:
#line 962 "grammar.y"
    { LOG("closure_signature (0)\n"); ;}
    break;

  case 410:
#line 963 "grammar.y"
    { LOG("closure_signature (0)\n"); ;}
    break;

  case 411:
#line 964 "grammar.y"
    { LOG("capture_list (0)\n"); ;}
    break;

  case 412:
#line 965 "grammar.y"
    { LOG("capture_specifier (0)\n"); ;}
    break;

  case 413:
#line 966 "grammar.y"
    { LOG("capture_specifier (1)\n"); ;}
    break;

  case 414:
#line 967 "grammar.y"
    { LOG("capture_specifier (2)\n"); ;}
    break;

  case 415:
#line 968 "grammar.y"
    { LOG("capture_specifier (3)\n"); ;}
    break;

  case 416:
#line 972 "grammar.y"
    { LOG("implicit_member_expression (0)\n"); ;}
    break;

  case 417:
#line 976 "grammar.y"
    { ((*yyvalp).node) = [[ParenthesizedExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (3))].yystate.yysemantics.yysval.node)]; LOG("parenthesized_expression (0)\n"); ;}
    break;

  case 418:
#line 977 "grammar.y"
    {((*yyvalp).node) = NULL;}
    break;

  case 419:
#line 977 "grammar.y"
    { ((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node); LOG("expression_element_list_opt\n"); ;}
    break;

  case 420:
#line 978 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node) next:nil]; LOG("expression_element_list (0)\n"); ;}
    break;

  case 421:
#line 979 "grammar.y"
    {((*yyvalp).node)=[[ExpressionList alloc] initWithExpr:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (3))].yystate.yysemantics.yysval.node) next:(ExpressionList*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node)]; LOG("expression_element_list (1)\n"); ;}
    break;

  case 422:
#line 980 "grammar.y"
    { LOG("expression_element (0)\n"); ;}
    break;

  case 423:
#line 981 "grammar.y"
    { ((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((3) - (3))].yystate.yysemantics.yysval.node); LOG("expression_element (1)\n"); ;}
    break;

  case 424:
#line 985 "grammar.y"
    { LOG("wildcard_expression (0)\n"); ;}
    break;

  case 425:
#line 989 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 426:
#line 990 "grammar.y"
    { ((*yyvalp).node) = [[PostfixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str))]; LOG("postfix_expression op %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str)); ;}
    break;

  case 427:
#line 991 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 428:
#line 992 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 429:
#line 993 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 430:
#line 994 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 431:
#line 995 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 432:
#line 996 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 433:
#line 997 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 434:
#line 998 "grammar.y"
    { LOG("postfix_expression (0)\n"); ;}
    break;

  case 435:
#line 1002 "grammar.y"
    {((*yyvalp).node) = [[FunctionCallExpression alloc] initWithFunction:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) parenthesized:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; LOG("function_call_expression (0)\n"); ;}
    break;

  case 436:
#line 1003 "grammar.y"
    { LOG("function_call_expression (0)\n"); ;}
    break;

  case 438:
#line 1004 "grammar.y"
    { LOG("parenthesized_expression_opt\n"); ;}
    break;

  case 439:
#line 1005 "grammar.y"
    { LOG("trailing_closure (0)\n"); ;}
    break;

  case 440:
#line 1009 "grammar.y"
    { LOG("initializer_expression (0)\n"); ;}
    break;

  case 441:
#line 1013 "grammar.y"
    { LOG("explicit_member_expression (0)\n"); ;}
    break;

  case 442:
#line 1014 "grammar.y"
    { LOG("explicit_member_expression (0)\n"); ;}
    break;

  case 443:
#line 1018 "grammar.y"
    { LOG("postfix_self_expression (0)\n"); ;}
    break;

  case 444:
#line 1022 "grammar.y"
    { LOG("dynamic_type_expression (0)\n"); ;}
    break;

  case 445:
#line 1026 "grammar.y"
    { LOG("subscript_expression (0)\n"); ;}
    break;

  case 446:
#line 1030 "grammar.y"
    { LOG("forced_value_expression (0)\n"); ;}
    break;

  case 447:
#line 1034 "grammar.y"
    { LOG("optional_chaining_expression (0)\n"); ;}
    break;

  case 448:
#line 1041 "grammar.y"
    { LOG("identifier_list (0)\n"); ;}
    break;

  case 449:
#line 1042 "grammar.y"
    { LOG("identifier_list (1)\n"); ;}
    break;

  case 480:
#line 1066 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 481:
#line 1067 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 482:
#line 1068 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 483:
#line 1069 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 484:
#line 1070 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 485:
#line 1071 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 486:
#line 1072 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 487:
#line 1073 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 488:
#line 1080 "grammar.y"
    { LOG("type (0)\n"); ;}
    break;

  case 489:
#line 1081 "grammar.y"
    { LOG("type (1)\n"); ;}
    break;

  case 490:
#line 1082 "grammar.y"
    { LOG("type (2)\n"); ;}
    break;

  case 491:
#line 1083 "grammar.y"
    { LOG("type (3)\n"); ;}
    break;

  case 492:
#line 1084 "grammar.y"
    { LOG("type (4)\n"); ;}
    break;

  case 493:
#line 1085 "grammar.y"
    { LOG("type (5)\n"); ;}
    break;

  case 494:
#line 1086 "grammar.y"
    { LOG("type (6)\n"); ;}
    break;

  case 495:
#line 1087 "grammar.y"
    { LOG("type (7)\n"); ;}
    break;

  case 496:
#line 1091 "grammar.y"
    { LOG("type_annotation (0)\n"); ;}
    break;

  case 497:
#line 1095 "grammar.y"
    { LOG("type_identifier (0)\n"); ;}
    break;

  case 498:
#line 1096 "grammar.y"
    { LOG("type_identifier (1)\n"); ;}
    break;

  case 499:
#line 1097 "grammar.y"
    { LOG("type_name (0)\n"); ;}
    break;

  case 500:
#line 1101 "grammar.y"
    { LOG("tuple_type (0)\n"); ;}
    break;

  case 502:
#line 1102 "grammar.y"
    { LOG("tuple_type_body_opt\n"); ;}
    break;

  case 503:
#line 1103 "grammar.y"
    { LOG("tuple_type_body (0)\n"); ;}
    break;

  case 504:
#line 1104 "grammar.y"
    { LOG("tuple_type_element_list (0)\n"); ;}
    break;

  case 505:
#line 1105 "grammar.y"
    { LOG("tuple_type_element_list (1)\n"); ;}
    break;

  case 506:
#line 1106 "grammar.y"
    { LOG("tuple_type_element (0)\n"); ;}
    break;

  case 507:
#line 1107 "grammar.y"
    { LOG("tuple_type_element (1)\n"); ;}
    break;

  case 508:
#line 1108 "grammar.y"
    { LOG("element_name (0)\n"); ;}
    break;

  case 509:
#line 1112 "grammar.y"
    { LOG("function_type (0)\n"); ;}
    break;

  case 510:
#line 1116 "grammar.y"
    { LOG("array_type (0)\n"); ;}
    break;

  case 511:
#line 1117 "grammar.y"
    { LOG("array_type (1)\n"); ;}
    break;

  case 512:
#line 1121 "grammar.y"
    { LOG("optional_type (0)\n"); ;}
    break;

  case 513:
#line 1125 "grammar.y"
    { LOG("implicitly_unwrapped_optional_type (0)\n"); ;}
    break;

  case 514:
#line 1129 "grammar.y"
    { LOG("protocol_composition_type (0)\n"); ;}
    break;

  case 516:
#line 1130 "grammar.y"
    { LOG("protocol_identifier_list_opt\n"); ;}
    break;

  case 517:
#line 1131 "grammar.y"
    { LOG("protocol_identifier_list (0)\n"); ;}
    break;

  case 518:
#line 1132 "grammar.y"
    { LOG("protocol_identifier_list (1)\n"); ;}
    break;

  case 519:
#line 1133 "grammar.y"
    { LOG("protocol_identifier (0)\n"); ;}
    break;

  case 520:
#line 1137 "grammar.y"
    { LOG("metatype_type (0)\n"); ;}
    break;

  case 521:
#line 1138 "grammar.y"
    { LOG("metatype_type (1)\n"); ;}
    break;

  case 522:
#line 1142 "grammar.y"
    { LOG("type_inheritance_clause (0)\n"); ;}
    break;

  case 523:
#line 1143 "grammar.y"
    { LOG("type_inheritance_list (0)\n"); ;}
    break;

  case 524:
#line 1144 "grammar.y"
    { LOG("type_inheritance_list (1)\n"); ;}
    break;


/* Line 930 of glr.c.  */
#line 4593 "grammar.mm"
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


#line 1146 "grammar.y"


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

