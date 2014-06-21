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
    static ASTNode * ast = NULL;
    
    inline NSString * toSwift(const char * c) {
        return [NSString stringWithUTF8String:c];
    }


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE 
#line 19 "grammar.y"
{
    ASTNode * node;
    char *    str;
}
/* Line 204 of glr.c.  */
#line 201 "grammar.mm"
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
#line 248 "grammar.mm"

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
#define YYLAST   1910

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
     121,     0,    -1,   124,    -1,   316,   123,    -1,    -1,   104,
      -1,   170,   123,    -1,   125,   123,    -1,   134,   123,    -1,
     149,    -1,   152,   123,    -1,   122,    -1,   122,   124,    -1,
     126,    -1,   130,    -1,   131,    -1,   133,    -1,    27,   127,
     104,   128,   104,   128,   176,    -1,    -1,   129,    -1,    -1,
     316,    -1,    27,    96,   127,   104,   128,   104,   128,    97,
     176,    -1,   188,    -1,   317,    -1,    27,   292,    26,   316,
     176,    -1,    31,   132,   176,    -1,   316,    -1,   170,    -1,
      22,   176,    31,   132,    -1,   135,    -1,   139,    -1,    25,
     137,   176,   136,    -1,    -1,   138,    -1,   316,    -1,   170,
      -1,    23,   176,    -1,    23,   135,    -1,    29,   316,   100,
     140,   101,    -1,    -1,   141,    -1,   142,   140,    -1,   143,
     124,    -1,   146,   124,    -1,   143,   104,    -1,   146,   104,
      -1,    19,   144,   103,    -1,   292,   145,    -1,   292,   145,
     102,   144,    -1,    -1,   147,    -1,    21,   103,    -1,    30,
     148,    -1,   316,    -1,   150,   125,    -1,   150,   139,    -1,
     151,   103,    -1,     3,    -1,   153,    -1,   155,    -1,   156,
      -1,   157,    -1,    18,   154,    -1,    -1,   151,    -1,    20,
     154,    -1,    24,    -1,    28,   128,    -1,    71,   160,   159,
      72,    -1,    -1,   162,    -1,   161,    -1,   161,   102,   160,
      -1,   372,    -1,   372,   103,   371,    -1,   372,   103,   383,
      -1,    30,   163,    -1,   164,    -1,   164,   102,   163,    -1,
     165,    -1,   166,    -1,   371,   103,   371,    -1,   371,   103,
     383,    -1,   371,    78,   371,    -1,    71,   168,    72,    -1,
     169,    -1,   169,   102,   168,    -1,   369,    -1,   177,    -1,
     183,    -1,   188,    -1,   205,    -1,   209,    -1,   231,    -1,
     251,    -1,   255,    -1,   258,    -1,   270,    -1,   274,    -1,
     275,    -1,   277,    -1,   280,    -1,   170,   172,    -1,    -1,
     171,    -1,   175,   174,    -1,    -1,   173,    -1,     4,    -1,
      46,    -1,    48,    -1,    50,    -1,    13,    -1,    56,    -1,
      57,    -1,    58,    -1,    59,    -1,   100,   124,   101,    -1,
     100,   101,    -1,   178,     9,   179,   181,    -1,    -1,   313,
      -1,    -1,   180,    -1,    16,    -1,    14,    -1,     4,    -1,
       6,    -1,    12,    -1,    17,    -1,     8,    -1,   182,    -1,
     182,    77,   181,    -1,     3,    -1,   365,    -1,   178,   174,
      11,   184,    -1,   185,    -1,   185,   102,   184,    -1,   292,
     187,    -1,   292,    -1,    -1,   187,    -1,    65,   316,    -1,
     189,   184,    -1,   189,   190,   370,   176,    -1,   189,   190,
     370,   191,    -1,   189,   190,   370,   197,    -1,   189,   190,
     370,   186,   201,    -1,   178,   174,    17,    -1,     3,    -1,
     100,   193,   192,   101,    -1,    -1,   194,    -1,   100,   194,
     193,   101,    -1,   178,    42,   176,    -1,   178,    55,   195,
     176,    -1,    -1,   196,    -1,    96,     3,    97,    -1,   100,
     199,   198,   101,    -1,    -1,   200,    -1,   100,   200,   199,
     101,    -1,   178,    42,    -1,   178,    55,    -1,   100,   203,
     202,   101,    -1,    -1,   204,    -1,   100,   204,   203,   101,
      -1,   178,    60,   195,   176,    -1,   178,    41,   195,   176,
      -1,   206,   208,    -1,    16,   207,    -1,     3,    -1,    65,
     369,    -1,   211,   212,   210,   213,   216,    -1,    -1,   158,
      -1,   178,   174,     8,    -1,     3,    -1,   365,    -1,   217,
     214,    -1,    -1,   215,    -1,   112,   178,   369,    -1,   176,
      -1,   219,   218,    -1,    -1,   217,    -1,    96,    97,    -1,
      96,   221,   220,    97,    -1,    -1,    82,    -1,   222,    -1,
     222,   102,   221,    -1,   223,   224,   225,   228,   226,   370,
     227,    -1,    -1,    44,    -1,    -1,    11,    -1,    -1,   107,
      -1,    -1,   229,    -1,    -1,   230,    -1,   223,    17,   225,
     228,   226,   370,   227,    -1,   178,   369,    -1,     3,    -1,
     106,    -1,     3,    -1,   106,    -1,    65,   316,    -1,   178,
     232,    -1,   178,   242,    -1,   240,   210,   100,   233,   101,
      -1,    -1,   234,    -1,   235,   233,    -1,   170,    -1,   236,
      -1,   178,    19,   237,    -1,   238,    -1,   238,   102,   237,
      -1,   241,   239,    -1,    -1,   373,    -1,     3,    -1,     3,
      -1,   240,   210,   103,   371,   100,   243,   101,    -1,    -1,
     244,    -1,   245,   243,    -1,   170,    -1,   246,    -1,   178,
      19,   247,    -1,   248,    -1,   248,   102,   247,    -1,   241,
     249,    -1,    -1,   250,    -1,    65,   364,    -1,   178,    14,
     253,   210,   252,   254,    -1,    -1,   388,    -1,     3,    -1,
     100,   172,   101,    -1,   178,     4,   256,   210,   252,   257,
      -1,     3,    -1,   100,   172,   101,    -1,   178,    12,   259,
     252,   260,    -1,     3,    -1,   100,   261,   101,    -1,    -1,
     263,    -1,   264,    -1,   265,    -1,   266,    -1,   267,    -1,
     268,    -1,   262,   261,    -1,   189,   190,   370,   197,    -1,
     211,   212,   210,   213,    -1,   271,   210,   219,    -1,   278,
     279,   197,    -1,   206,   252,   269,    -1,    -1,   208,    -1,
     271,   210,   219,   273,    -1,   178,   272,    10,    -1,    -1,
     113,    -1,   176,    -1,   178,     5,   176,    -1,     7,   371,
     252,   276,    -1,   100,   172,   101,    -1,   278,   279,   176,
      -1,   278,   279,   191,    -1,   278,   279,   197,    -1,   178,
      15,   219,    -1,   112,   178,   369,    -1,   281,    -1,   282,
      -1,   283,    -1,    49,    53,   365,   100,   101,    -1,    49,
      51,   365,   100,   101,    -1,    49,    43,   365,   100,   284,
     101,    -1,    -1,   285,    -1,   286,   287,    -1,    -1,   288,
      -1,    -1,   290,    -1,    52,   289,    -1,    -1,    40,   291,
      -1,    45,    -1,    54,    -1,    47,    -1,   294,   293,    -1,
      -1,   370,    -1,   295,   293,    -1,   296,    -1,   297,   293,
      -1,   301,    -1,   304,    -1,   307,    -1,   106,    -1,     3,
      -1,    17,   292,    -1,    11,   292,    -1,    96,   298,    97,
      -1,    -1,   299,    -1,   300,    -1,   300,   102,   299,    -1,
     292,    -1,   302,    77,   241,   303,    -1,    -1,   371,    -1,
      -1,   297,    -1,   305,    -1,   306,    -1,    34,   369,    -1,
     292,    32,   369,    -1,   316,    -1,   105,   310,   309,    -1,
      -1,   311,    -1,     3,    -1,    96,   312,    97,    -1,    -1,
     314,    -1,   308,   178,    -1,   315,   312,    -1,    96,   312,
      97,    -1,    98,   312,    99,    -1,   100,   312,   101,    -1,
      -1,    -1,   318,    -1,   318,   322,    -1,   316,    -1,   316,
     102,   317,    -1,   319,   352,    -1,    -1,   367,    -1,   320,
      -1,    73,     3,    -1,   366,   318,    -1,    65,   318,    -1,
     109,   316,   103,   318,    -1,   323,    -1,   321,    -1,   321,
     322,    -1,    34,   369,    -1,    32,   324,   369,    -1,    -1,
     109,    -1,     3,   326,    -1,    -1,   167,    -1,   327,    -1,
     336,    -1,   337,    -1,   341,    -1,   347,    -1,   346,    -1,
     351,    -1,   364,    -1,   328,    -1,   333,    -1,   114,    -1,
     115,    -1,   116,    -1,   117,    -1,    98,   329,    99,    -1,
      -1,   330,    -1,   332,   331,    -1,   332,   102,   330,    -1,
      -1,   102,    -1,   316,    -1,    98,   334,    99,    -1,    98,
     103,    99,    -1,   335,   331,    -1,   335,   102,   334,    -1,
     316,   103,   316,    -1,    37,    -1,    37,    77,     3,    -1,
      37,    98,   316,    99,    -1,    37,    77,    10,    -1,   338,
      -1,   339,    -1,   340,    -1,    36,    77,     3,    -1,    36,
      98,   316,    99,    -1,    36,    77,    10,    -1,   100,   342,
     124,   101,    -1,    -1,   343,    -1,   219,   214,    26,    -1,
     363,   214,    26,    -1,   344,   219,   214,    26,    -1,   344,
     363,   214,    26,    -1,   344,    26,    -1,    98,   345,   316,
      99,    -1,    59,    -1,    56,    -1,    57,    -1,    58,    -1,
      77,     3,    -1,    96,   348,    97,    -1,    -1,   349,    -1,
     350,    -1,   350,   102,   349,    -1,   316,    -1,     3,   103,
     316,    -1,   106,    -1,   325,    -1,   352,   368,    -1,   353,
      -1,   356,    -1,   357,    -1,   358,    -1,   359,    -1,   360,
      -1,   361,    -1,   362,    -1,   352,   347,    -1,   352,   354,
     355,    -1,    -1,   347,    -1,   341,    -1,   352,    77,    10,
      -1,   352,    77,    61,    -1,   352,    77,     3,   326,    -1,
     352,    77,    37,    -1,   352,    77,   118,    -1,   352,    98,
     317,    99,    -1,   352,    68,    -1,   352,   109,    -1,     3,
      -1,     3,   102,   363,    -1,    61,    -1,    63,    -1,    62,
      -1,   366,    -1,   367,    -1,   368,    -1,    64,    -1,    90,
      -1,    78,    -1,    79,    -1,    66,    -1,    88,    -1,    67,
      -1,    87,    -1,    68,    -1,    69,    -1,    89,    -1,    70,
      -1,    91,    -1,    71,    -1,    72,    -1,    73,    -1,    85,
      -1,    74,    -1,    86,    -1,    75,    -1,    93,    -1,    76,
      -1,    94,    -1,    77,    -1,   110,    80,    -1,   110,    81,
      -1,   110,    68,    -1,   110,    76,    -1,   110,    67,    -1,
     110,    66,    -1,   111,    80,    -1,   111,    81,    -1,   380,
      -1,   379,    -1,   371,    -1,   373,    -1,   381,    -1,   382,
      -1,   383,    -1,   387,    -1,   103,   178,   369,    -1,   372,
     326,    -1,   372,   326,    77,   371,    -1,     3,    -1,    96,
     374,    97,    -1,    -1,   375,    -1,   376,   220,    -1,   377,
      -1,   377,   102,   376,    -1,   178,   223,   369,    -1,   223,
     378,   370,    -1,     3,    -1,   369,   112,   369,    -1,   369,
      98,    99,    -1,   380,    98,    99,    -1,   369,   109,    -1,
     369,    68,    -1,    12,    71,   384,    72,    -1,    -1,   385,
      -1,   386,    -1,   386,   102,   385,    -1,   371,    -1,   369,
      77,    39,    -1,   369,    77,   119,    -1,   103,   389,    -1,
     371,    -1,   371,   102,   389,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const unsigned short int yyrline[] =
{
       0,   405,   405,   412,   413,   413,   414,   415,   416,   417,
     418,   419,   420,   424,   425,   426,   427,   431,   432,   432,
     433,   433,   434,   435,   436,   440,   444,   445,   446,   450,
     454,   455,   459,   460,   460,   461,   462,   463,   464,   468,
     469,   469,   470,   471,   472,   473,   474,   475,   476,   477,
     478,   478,   479,   480,   481,   485,   486,   487,   488,   492,
     493,   494,   495,   499,   500,   500,   504,   508,   512,   519,
     520,   520,   521,   522,   523,   524,   525,   526,   527,   528,
     529,   530,   531,   532,   533,   537,   538,   539,   540,   547,
     548,   549,   550,   551,   552,   553,   554,   555,   556,   557,
     558,   559,   560,   561,   562,   562,   563,   564,   564,   565,
     566,   567,   568,   569,   570,   571,   572,   573,   577,   578,
     582,   583,   583,   584,   584,   585,   586,   587,   588,   589,
     590,   591,   592,   593,   594,   595,   599,   600,   601,   602,
     603,   604,   604,   605,   609,   610,   611,   612,   613,   614,
     615,   616,   617,   617,   618,   619,   620,   621,   621,   622,
     623,   624,   624,   625,   626,   627,   628,   629,   629,   630,
     631,   632,   636,   637,   638,   639,   643,   644,   644,   645,
     646,   647,   648,   649,   649,   650,   651,   652,   653,   653,
     654,   655,   656,   656,   657,   658,   659,   660,   660,   661,
     661,   662,   662,   663,   663,   664,   664,   665,   666,   667,
     668,   669,   670,   671,   675,   676,   677,   678,   678,   679,
     680,   681,   682,   683,   684,   685,   686,   686,   687,   688,
     689,   690,   690,   691,   692,   693,   694,   695,   696,   697,
     698,   698,   699,   703,   704,   704,   705,   706,   710,   711,
     712,   716,   717,   718,   719,   719,   720,   721,   722,   723,
     724,   725,   729,   733,   737,   741,   745,   746,   746,   750,
     751,   752,   752,   753,   757,   761,   762,   766,   767,   768,
     769,   770,   774,   775,   776,   777,   778,   779,   780,   780,
     781,   782,   782,   783,   783,   784,   785,   786,   787,   788,
     789,   796,   797,   797,   798,   799,   800,   801,   802,   803,
     807,   811,   815,   816,   820,   821,   821,   822,   823,   824,
     828,   829,   829,   830,   830,   834,   835,   836,   837,   841,
     848,   849,   849,   850,   851,   852,   852,   853,   854,   855,
     856,   857,   858,   859,   866,   867,   868,   869,   873,   874,
     874,   875,   876,   880,   881,   882,   883,   884,   885,   891,
     892,   893,   893,   897,   898,   898,   899,   900,   901,   902,
     903,   904,   905,   909,   910,   911,   912,   913,   914,   915,
     916,   917,   917,   918,   919,   920,   920,   921,   922,   923,
     924,   925,   926,   930,   931,   932,   933,   937,   938,   939,
     940,   941,   942,   946,   947,   947,   948,   949,   950,   951,
     952,   953,   954,   955,   956,   957,   961,   965,   966,   966,
     967,   968,   969,   970,   974,   978,   979,   980,   981,   982,
     983,   984,   985,   986,   987,   991,   992,   993,   993,   994,
     998,  1002,  1003,  1007,  1011,  1015,  1019,  1023,  1030,  1031,
    1035,  1036,  1037,  1040,  1040,  1040,  1041,  1041,  1042,  1042,
    1043,  1043,  1044,  1044,  1045,  1046,  1046,  1047,  1047,  1048,
    1049,  1050,  1050,  1051,  1051,  1052,  1052,  1053,  1053,  1054,
    1055,  1056,  1057,  1058,  1059,  1060,  1061,  1062,  1069,  1070,
    1071,  1072,  1073,  1074,  1075,  1076,  1080,  1084,  1085,  1086,
    1090,  1091,  1091,  1092,  1093,  1094,  1095,  1096,  1097,  1101,
    1105,  1106,  1110,  1114,  1118,  1119,  1119,  1120,  1121,  1122,
    1126,  1127,  1131,  1132,  1133
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
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
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
     512,     0,     0,   349,   314,   349,     0,     0,   328,     0,
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
     521,   510,   509,   511,     0,   318,   349,    25,   496,   324,
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
#define YYPACT_NINF -481
static const short int yypact[] =
{
    1253,  -481,    42,    74,    90,   102,    17,  -481,   123,  1660,
     428,    28,   554,   323,   140,   178,   562,    57,   733,  -481,
     167,  -481,  -481,  -481,  -481,   167,  -481,  -481,  -481,   379,
     190,   167,  -481,  -481,  -481,  -481,   167,  -481,  1075,  -481,
    -481,   110,  -481,   216,  -481,  1516,  -481,  -481,  -481,  -481,
    -481,   234,  -481,  -481,  -481,   199,  -481,  -481,  -481,  -481,
     252,  -481,   167,  1707,   282,  -481,  -481,  -481,   226,   306,
    -481,  -481,  -481,  -481,  -481,   837,   331,    17,  -481,  -481,
     172,   224,   283,    78,   491,  -481,   288,  -481,   382,  -481,
     256,   297,   301,  -481,   310,  -481,   358,  -481,  -481,  -481,
    -481,   271,  -481,  -481,  -481,  -481,   357,    17,  -481,  -481,
    1799,  1799,  1799,  -481,  -481,   366,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,   460,    17,   673,   464,  -481,   466,   378,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,   341,
     382,  -481,   234,  -481,   473,   225,    45,  -481,   391,   395,
      20,  -481,    78,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,   260,
     234,  -481,  -481,  -481,  -481,    42,  -481,   378,   252,   399,
    -481,  -481,   394,    78,    28,    28,  1755,  -481,  -481,    28,
     435,   105,   154,  -481,  -481,  -481,   504,    38,   163,    79,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,   375,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,    42,   409,
    -481,    78,  -481,   433,  -481,   411,  1388,   490,   484,   485,
     462,    96,   200,  -481,  -481,  -481,   437,  -481,  -481,  -481,
    -481,   423,   508,   449,  -481,   458,   138,  -481,   538,    28,
      78,   252,  -481,  -481,  -481,  -481,   569,    28,   232,  -481,
     475,   477,   489,   456,  -481,  -481,  -481,   234,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,  1568,  -481,  -481,   226,
    -481,   234,    71,  -481,  -481,   615,  -481,  -481,   287,  -481,
     707,   130,    28,  -481,   212,  -481,  -481,   378,   555,   492,
     501,    17,    78,   941,  -481,  -481,  -481,  -481,    78,   227,
    -481,   507,  -481,  -481,  -481,    50,    28,   188,    28,  -481,
     509,  -481,   495,  -481,   503,   494,   520,   525,  -481,   505,
     526,   532,   533,   588,   524,  1357,  -481,   219,   524,  -481,
      36,    28,  -481,   539,   541,  -481,   546,  -481,    31,  -481,
     579,   556,   255,    42,  -481,  -481,    69,  -481,  -481,    42,
    -481,   613,   658,   565,  -481,   581,   564,  -481,    12,   566,
    -481,    78,   568,   138,  -481,   712,   574,    17,   317,    78,
    -481,   584,   582,  -481,   824,   583,   590,  -481,   232,  1045,
    1149,    18,   598,   599,   502,   318,   483,   604,  -481,   597,
     226,  -481,  -481,   625,  -481,   603,   226,  -481,    78,   581,
     605,    54,  -481,   107,    42,  -481,  -481,   608,  -481,  -481,
    -481,  -481,    17,   524,   378,    42,   637,  -481,    42,   262,
    -481,  -481,   255,   867,   149,   252,   202,   252,   402,    28,
    -481,  -481,   617,  -481,  -481,   618,    28,  -481,    37,  -481,
      28,  -481,   173,  -481,  -481,   173,  -481,   709,  -481,  -481,
    -481,  -481,    28,   252,   688,  -481,   619,  -481,   524,   524,
     693,   651,  -481,  -481,  -481,  -481,   627,  -481,  -481,    42,
      31,  -481,   629,  -481,    78,  -481,  -481,  -481,  -481,   659,
    -481,   630,    78,  -481,   395,  -481,  -481,  -481,    56,  -481,
    -481,  -481,   420,  -481,   631,  -481,    97,  -481,   453,  -481,
    -481,   634,   377,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,   633,  -481,   699,  -481,  -481,  -481,   645,   646,   643,
    -481,  -481,   647,  1568,   108,  -481,   648,   255,   662,    84,
    -481,   649,   649,  -481,  1503,   666,  -481,   107,  -481,   663,
     252,  -481,  -481,  -481,  -481,  -481,  -481,  -481,   669,  -481,
    -481,   121,  -481,  -481,  -481,  -481,    17,   235,   713,   671,
    -481,   731,   674,   719,   675,  -481,   735,   677,  -481,  -481,
    -481,  -481,  -481,  -481,  -481,  -481,   520,  -481,  -481,   680,
      78,  -481,  -481,   755,   757,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,    42,   255,  -481,  -481,   241,    17,  -481,
      28,   684,  -481,  -481,  -481,   316,  -481,  -481,  -481,  -481,
    -481,    31,  -481,  -481,   563,   785,   226,  1516,   689,   108,
    -481,  -481,  -481,  -481,  -481,  -481,   234,   199,    31,  -481,
    -481,  -481,  -481,    39,    39,   569,  -481,  -481,   109,   184,
     249,   252,    42,    42,   262,  -481,   788,    17,  -481,   696,
    -481,    17,  -481,  -481,  -481,  -481,  -481,  -481,   255,  -481,
    -481,  -481,   700,  -481,  -481,  -481,   885,  -481,  -481,  -481,
    -481,   692,   291,  -481,   395,   216,   234,  -481,  -481,   378,
     698,   701,  -481,  -481,    47,    47,  -481,   697,   704,  -481,
    1520,   703,  -481,   109,  -481,   696,   696,   760,   706,  -481,
     745,   708,  -481,  -481,  -481,  -481,   714,  -481,    17,  -481,
    -481,   698,  -481,  -481,   378,  -481,   252,  -481,  -481,  -481,
    -481,   395,  -481,   395,   569,  -481,  -481,   569,  -481,  -481,
      17,    17,  -481,  -481,  -481,  -481,  -481,  -481,   205,   747,
     747,  -481,   749,  -481,   717,  -481,  -481,    28,  -481,  -481,
    -481,   362,  -481,  -481,   569,  -481,  -481,  -481
};

/* YYPGOTO[NTERM-NUM].  */
static const short int yypgoto[] =
{
    -481,  -481,  -481,    30,    26,   786,  -481,   732,  -269,  -481,
    -481,  -481,   567,  -481,  -481,   434,  -481,  -481,  -481,   792,
     406,  -481,  -481,  -481,   119,  -481,  -481,  -481,  -481,  -481,
    -481,   429,  -481,  -481,   821,  -481,  -481,  -481,  -481,  -481,
     370,  -481,  -481,   148,  -481,  -481,  -481,  -481,   322,  -481,
       5,  -481,  -480,  -481,   -74,  -481,    -5,  -481,    -6,  -481,
    -481,   269,  -481,  -481,   -51,  -481,  -481,   516,    89,  -469,
     187,   530,  -481,   380,   388,  -280,  -481,  -298,  -481,   387,
     390,  -481,  -481,   165,   180,  -481,  -457,  -481,   152,  -481,
    -147,  -455,   206,   115,  -333,  -481,  -481,   421,  -481,  -133,
     439,   314,  -481,  -279,  -481,   312,   160,   111,   213,  -481,
    -481,  -481,  -481,   313,  -481,  -481,  -481,   125,  -481,  -481,
    -481,  -271,  -481,   159,  -481,  -481,  -481,    99,  -481,  -481,
    -481,  -481,  -284,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,   236,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -427,  -481,  -481,  -481,  -481,  -481,  -481,  -402,   237,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,     7,   350,  -481,  -481,  -481,   496,  -481,   498,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,    25,  -481,  -481,  -481,     0,  -238,  -177,  -481,
    -481,  -481,   702,  -481,  -481,  -481,  -188,  -481,  -481,  -481,
     412,   544,  -481,  -481,   426,  -481,  -481,  -481,  -481,  -481,
    -481,   542,  -481,  -481,  -481,  -481,  -481,   668,  -481,   440,
    -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,  -481,
    -481,  -481,  -481,  -330,   136,   -91,   -27,   -43,   683,   -54,
    -155,    22,  -167,   201,  -481,  -481,   384,  -481,  -481,  -481,
    -481,  -481,  -481,  -425,  -481,   295,  -481,  -481,  -481,   422
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
     629,   103,   343,   441,   595,   500,   209,   499,     2,   501,
     350,   350,   722,   327,   123,    67,   502,     3,    80,   413,
     759,   529,   280,   470,   200,   126,    81,   122,  -291,  -121,
     471,   130,    82,   103,   331,   570,   131,   193,   193,   193,
     550,   571,   257,   503,  -121,    62,   317,    70,    88,    83,
      13,    67,   362,  -121,   101,   322,   364,  -121,   258,   259,
     260,   272,   201,     1,     8,   655,  -121,   504,    89,  -121,
     390,    14,   289,   103,   103,     1,   103,   656,   324,   657,
      14,    14,   522,   155,     2,   390,     2,    75,    14,  -288,
     584,    81,  -321,     3,     3,     3,  -121,    82,   390,   298,
       2,   530,  -104,   506,   534,  -418,    15,   666,    16,     3,
     390,   156,  -315,   113,    83,   723,   562,    16,    16,   339,
     430,    85,   566,   760,   505,    16,    13,   618,    13,  -349,
    -349,    15,   667,   272,   436,   623,   624,  -121,   437,    75,
      14,   711,    13,    89,   261,   312,    15,   363,   103,   209,
    -121,   114,   345,    14,  -349,  -349,  -349,  -321,   721,    15,
     655,   473,   332,  -501,   334,   322,    14,   -20,   474,   683,
    -349,    15,   656,   346,   657,   341,   156,    16,  -217,  -254,
    -231,    14,    15,    15,    15,   434,    85,   351,   356,  -349,
      16,  -349,   362,  -349,   684,   735,   408,    80,    15,  -349,
     333,   347,   666,    16,   498,    81,    14,  -349,  -349,  -349,
    -349,    82,   -20,  -499,   736,   497,    14,   695,    16,  -311,
    -152,   414,   348,   415,    15,   391,   109,   667,    83,   745,
     693,   108,  -381,   193,   442,    67,   355,   638,   397,   445,
     376,   124,  -386,    16,   260,   409,   105,   398,   462,   407,
     397,   162,   279,    16,   468,   210,    80,   412,   280,   398,
     441,   330,   608,   129,    81,   397,  -499,    14,   399,   314,
      82,  -321,  -311,  -161,   398,   195,   438,    15,   316,   400,
     399,   198,   401,   626,    14,   312,   446,    83,   211,   212,
     156,   400,   451,   397,   401,   399,   460,   463,  -150,   248,
      85,   686,   398,    62,    16,  -157,   400,   103,   -20,   401,
     325,   326,   103,   213,   214,   215,   472,   532,   475,   314,
    -167,    16,   315,   399,    15,   538,    14,    15,   316,   216,
    -321,   707,   256,   708,   400,    62,   110,   401,   702,   635,
     709,   412,   715,   287,   111,  -346,   112,   251,   217,   156,
     218,   517,   219,   510,   567,   397,   277,   443,   220,    85,
     444,   496,   276,    16,   398,   137,   221,   222,   223,   224,
     281,     6,   537,   105,   281,   515,     9,   640,    11,   280,
      12,   518,   272,   281,   424,   399,   425,  -335,   426,    62,
      62,   542,   757,   213,   214,   215,   400,   103,   140,   401,
     141,   -20,   142,    72,    72,   286,   103,   574,   143,   144,
     145,   146,   284,   369,   285,   547,   549,   582,   573,   557,
     558,   559,   370,   776,   561,   770,   771,   288,   598,   601,
     603,   606,   293,   296,   -20,   -20,   579,   308,   634,   310,
     397,   217,   434,   371,   312,  -348,   611,   591,   351,   398,
     613,   594,   614,   319,   372,   616,   189,   620,   397,   -20,
     -20,   -20,   619,   320,    80,  -121,   782,   398,   281,   333,
     399,    14,    81,   337,  -121,   -20,   251,   349,    82,   378,
     383,   400,   384,   386,   401,   510,   280,   280,   399,   719,
     193,   397,   391,   782,   -20,    83,   -20,   403,   -20,   400,
     398,   376,   401,   389,   -20,   402,   105,  -121,    16,  -121,
     280,  -121,   -20,   -20,   -20,   -20,   404,  -121,  -121,  -121,
    -121,   399,   424,  -335,   425,   316,   426,  -121,   654,   751,
     405,     2,   400,   438,    14,   401,   698,   277,  -321,   754,
       3,   574,   410,  -271,   679,   421,   137,   422,   139,   424,
     712,   425,   573,   426,  -335,   455,   755,   156,  -315,   423,
    -349,  -349,   477,   479,   458,   -18,    15,    85,   424,  -335,
     425,    16,   426,    13,   459,   478,   779,   482,   780,   140,
     469,   141,   476,   142,   193,  -349,  -349,  -349,    80,   143,
     144,   145,   146,   480,   481,   484,    81,    14,   116,   117,
     118,  -349,    82,   703,   485,   487,   493,   105,   119,  -435,
     705,   219,   120,   121,   488,   489,   490,   491,   509,    83,
    -349,   513,  -349,   654,  -349,   518,   510,   390,   514,    15,
    -349,   523,   525,   526,    16,   531,   528,   533,  -349,  -349,
    -349,  -349,   730,   510,   737,   740,   147,   299,   536,   300,
     156,   301,   747,   729,   287,   302,   543,   303,    14,   304,
     305,   544,  -321,   424,  -335,   425,  -335,   426,  -335,   555,
     556,   560,   563,   564,   591,   743,   744,   569,   580,   592,
      80,   156,   362,   542,   621,    80,   609,   610,    81,   625,
     622,    85,   251,    81,    82,    16,   627,   730,   103,    82,
     630,   632,   633,   -11,   644,   637,     1,   639,   729,   645,
       2,    83,   648,   775,   650,   649,    83,   651,   668,     3,
     778,     4,   -11,     5,   -11,     6,   672,     7,     8,   670,
       9,    10,    11,   678,    12,   785,   786,   676,   689,  -349,
    -349,   682,   690,   691,   693,   692,   694,   695,   696,   697,
      14,   699,    13,   700,  -321,    14,   706,   795,   713,  -321,
     717,   746,   686,   750,  -349,  -349,  -349,   748,   756,   764,
     261,   735,   758,   156,   768,   736,    14,   772,   156,   773,
    -349,   774,   787,    85,   791,   127,   271,    16,    85,   794,
     516,   128,    16,   385,   545,   749,    74,    80,   593,  -349,
     742,  -349,   653,  -349,   -11,    81,   631,   448,    15,  -349,
       1,    82,   714,    16,     2,   602,   741,  -349,  -349,  -349,
    -349,   449,   600,     3,   607,     4,   605,     5,    83,     6,
     739,     7,     8,   716,     9,    10,    11,   752,    12,   777,
     132,   133,   134,  -349,  -349,   585,   135,  -271,   568,   136,
     137,   138,   139,   671,   674,   763,    13,   725,    80,   781,
     677,   790,   769,   797,   615,   718,    81,    14,  -349,  -349,
    -349,  -321,    82,   535,   720,   486,   373,   539,   342,   596,
      14,   617,   636,   140,  -349,   141,   507,   142,   612,    83,
     156,   375,   597,   143,   144,   145,   146,   796,   701,   766,
      85,   628,     0,  -349,    16,  -349,     0,  -349,   254,     0,
       0,     0,    15,  -349,     1,     0,     0,    16,     2,     0,
       0,  -349,  -349,  -349,  -349,     0,     0,     3,    14,     4,
       0,     5,  -321,     6,     0,     7,     8,     0,     9,    10,
      11,     0,    12,     0,     0,     0,     0,  -349,  -349,     0,
     147,   156,     0,     0,     0,     0,     0,     0,     0,     0,
      13,    85,     0,     0,     0,    16,     0,     0,     0,     0,
       0,     0,  -349,  -349,  -349,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    14,     0,     0,     0,  -349,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,  -349,     0,  -349,
       0,  -349,   254,     0,     0,     0,    15,  -349,     1,     0,
       0,    16,     2,     0,     0,  -349,  -349,  -349,  -349,     0,
       0,     3,     0,     4,     0,     5,     0,     6,     0,     7,
       8,     0,     9,    10,    11,     0,    12,     0,   132,   133,
     134,  -349,  -349,     0,   135,  -271,     0,   136,   137,   138,
     139,     0,     0,     0,    13,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  -349,  -349,  -349,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    14,     0,
       0,   140,  -349,   141,     0,   142,     0,     0,     0,     0,
       0,   143,   144,   145,   146,     0,     0,     0,     0,     0,
       0,  -349,     0,  -349,     0,  -349,     0,     0,     0,   546,
      15,  -349,     1,     0,     0,    16,     2,     0,     0,  -349,
    -349,  -349,  -349,     0,     0,     3,     0,     4,     0,     5,
       0,     6,     0,     7,     8,     0,     9,    10,    11,     0,
      12,     0,     0,     0,     0,  -349,  -349,     0,   147,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    13,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -349,  -349,  -349,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    14,     0,     0,     0,  -349,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,  -349,     0,  -349,     0,  -349,
       0,     0,     0,   548,    15,  -349,     1,     0,     0,    16,
       2,     0,     0,  -349,  -349,  -349,  -349,     0,     0,     3,
       0,     4,     0,     5,     0,     6,     0,     7,     8,     0,
       9,    10,    11,     0,    12,     0,     0,     0,     0,  -349,
    -349,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    13,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -349,  -349,  -349,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    14,     0,     0,     0,
    -349,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  -349,
       0,  -349,     0,  -349,     0,     0,     0,     0,    15,  -349,
       1,     0,     0,    16,     2,     0,     0,  -349,  -349,  -349,
    -349,     0,     0,     3,     0,     4,     0,     5,     0,     6,
       0,     7,     8,     0,     9,    10,    11,     0,    12,     0,
       0,  -121,     0,  -349,  -349,     2,     0,     0,     0,     0,
       0,     0,     0,     0,     3,     0,    13,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -349,  -349,
    -349,     0,     0,     0,  -349,  -349,     0,     0,     0,     0,
      14,     0,     0,     0,  -349,     0,     0,    13,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  -349,
    -349,  -349,     0,  -349,     0,  -349,     0,  -349,     0,     0,
       0,    14,    15,  -349,     0,  -349,     0,    16,     0,     0,
       0,  -349,  -349,  -349,  -349,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -349,     0,  -349,     0,  -349,     0,
       0,     0,     0,    15,  -349,     0,     0,     0,    16,     0,
       0,     0,  -349,  -349,  -349,  -349,   132,   133,   134,     0,
       0,     0,   135,  -271,     0,   136,   137,   138,   139,   164,
       0,     0,   675,   132,   133,   134,     0,     0,     0,   135,
    -271,     0,   136,   137,   138,   139,     0,     0,     0,   767,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   140,
       0,   141,     0,   142,     0,     0,     0,     0,     0,   143,
     144,   145,   146,     0,     0,     0,   140,     0,   141,     0,
     142,   431,     0,     0,     0,     0,   143,   144,   145,   146,
     165,     0,   166,   167,   168,   169,   170,   171,   172,   173,
     174,   175,   176,   177,   178,   179,     0,     0,     0,     0,
       0,   180,   181,   182,   183,   184,   185,   186,     0,   187,
     188,     0,     0,     0,     0,     0,   147,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    16,   189,     0,     0,
       0,     0,   165,   147,   166,   167,   168,   169,   170,   171,
     172,   173,   174,   175,   176,   177,   178,   179,     0,     0,
       0,     0,     0,   180,   181,   182,   183,   184,   185,   186,
       0,   187,   188,    80,  -121,     0,     0,     0,     0,     0,
       0,    81,     0,  -121,     0,     0,     0,    82,    16,   189,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    83,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  -121,     0,  -121,     0,
    -121,     0,     0,     0,     0,     0,  -121,  -121,  -121,  -121,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    14,     0,     0,     0,  -321,     0,   202,
       0,   203,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    84,     0,     0,     0,
       0,     0,     0,     0,   -18,    15,    85,     0,     0,     0,
      16,   165,   204,   166,   167,   168,   169,   170,   171,   172,
     173,   174,   175,   176,   177,   178,   179,   202,     0,   203,
       0,     0,   180,   181,   182,   183,   184,   185,   186,     0,
     187,   188,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   205,     0,     0,   165,
     204,   166,   167,   168,   169,   170,   171,   172,   173,   174,
     175,   176,   177,   178,   179,     0,     0,     0,     0,     0,
     180,   181,   182,   183,   184,   185,   186,     0,   187,   188,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   165,   205,   166,   167,   168,   169,   170,
     171,   172,   173,   174,   175,   176,   177,   178,   179,     0,
       0,     0,     0,     0,   180,   181,   182,   183,   184,   185,
     186,     0,   187,   188,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    16,
     189
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
     328,   144,     0,     0,     0,     0,     0,     0,   122,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   332,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   194,     0,     0,     0,     0,     0,
       0,     0,   146,     0,     0,     0,     0,   352,     0,     0,
       0,     0,     0,     4,     0,     0,     0,     0,     0,   172,
     334,     0,     0,     0,     0,     6,     0,     0,     0,     0,
       0,     0,     0,    59,     0,     0,     0,     0,     0,   262,
       0,     0,   124,     0,     0,     0,     8,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     174,   126,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   128,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   148,     0,   150,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    61,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   346,     0,     0,
       0,     0,     0,     0,     0,     0,    63,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    65,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    82,     0,     0,
     212,   140,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    80,
       0,     0,   142,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   176,     0,     0,
       0,     0,     0,     0,     0,     0,    90,     0,     0,   214,
       0,     0,     0,     0,     0,   221,     0,     0,   178,     0,
       0,    84,   118,     0,   223,     0,     0,     0,     0,     0,
     216,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      86,     0,     0,     0,     0,   225,     0,     0,   120,     0,
      88,     0,     0,     0,     0,     0,   227,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      92,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   114,     0,     0,     0,    75,     0,    94,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    96,
       0,     0,     0,     0,   242,     0,     0,     0,     0,     0,
     108,     0,     0,     0,   110,     0,     0,     0,     0,     0,
       0,     0,     0,   112,   276,   244,   279,   282,   285,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    20,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   152,     0,     0,     0,     0,     0,     0,
       0,     0,   154,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   116,     0,    22,    24,     0,     0,     0,     0,
     320,   156,     0,   158,     0,   160,     0,     0,     0,   322,
       0,     0,     0,     0,   162,     0,     0,     0,   336,    26,
      28,    30,     0,     0,    98,     0,     0,   338,     0,     0,
     324,    32,     0,     0,     0,    34,   138,     0,   100,     0,
     164,   326,     0,     0,     0,     0,   168,   170,   340,     0,
       0,     0,     0,     0,    36,     0,    38,     0,    40,   342,
     348,     0,   344,     0,    42,   180,     0,     0,    44,     0,
       0,     0,    46,    48,    50,    52,     0,     0,     0,     0,
       0,   350,   182,   185,   188,     0,   191,    54,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   102,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   288,
       0,   291,     0,   294,   297,     0,     0,   104,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   106,   264,   267,
     270,     0,   273,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   196,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   232,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     246,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   198,   300,   303,   306,   309,   312,   315,     0,
       0,     0,   318,     0,     0,     0,     0,     0,     0,     0,
     204,   200,     0,     0,     0,   234,     0,     0,     0,     0,
       0,   202,   330,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    56,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   206,     0,     0,     0,     0,   236,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   208,     0,     0,     0,     0,   238,     0,
       0,     0,     0,   210,     0,     0,     0,     0,   240,     0,
       0,     0,     0,     0,     0,     0,     0,   248,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      77,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   354,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   250,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     252,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     254,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   218,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   356,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   358,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   360,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   256,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   259,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     1,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     229,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   166,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    10,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    12,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    14,     0,    67,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    16,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    18,     0,     0,     0,
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
       0
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
     510,     9,   209,   312,   459,   368,    63,   367,     7,     3,
       3,     3,     3,   190,    18,     3,    10,    16,     3,   287,
       3,    39,    32,     3,    60,    25,    11,     0,    40,     3,
      10,    31,    17,    41,   197,    11,    36,   110,   111,   112,
      52,    17,    77,    37,     3,    75,   150,     3,    84,    34,
      49,     3,     3,    12,    84,    65,   219,     3,    81,    82,
      12,    84,    62,     3,    25,   564,    12,    61,     9,     3,
      44,    73,   107,    81,    82,     3,    84,   564,   162,   564,
      73,    73,   391,     3,     7,    44,     7,   100,    73,   101,
     453,    11,    77,    16,    16,    16,     3,    17,    44,   134,
       7,   119,   101,   371,   403,    97,   105,   564,   110,    16,
      44,    96,    97,     3,    34,   106,   430,   110,   110,   203,
     297,   106,   436,   106,   118,   110,    49,   487,    49,    36,
      37,   105,   564,   156,   311,   498,   499,    96,    97,   100,
      73,   651,    49,    84,    96,    96,   105,    98,   156,   206,
      96,     3,    77,    73,    61,    62,    63,    77,   668,   105,
     659,     3,   198,    97,   199,    65,    73,   100,    10,    78,
      77,   105,   659,    98,   659,   205,    96,   110,   101,   101,
     101,    73,   105,   105,   105,   306,   106,   217,   218,    96,
     110,    98,     3,   100,   103,    41,   280,     3,   105,   106,
     100,    77,   659,   110,   367,    11,    73,   114,   115,   116,
     117,    17,   104,    71,    60,    26,    73,    42,   110,    77,
     101,    19,    98,    21,   105,   261,   256,   659,    34,   684,
      55,   256,    99,   306,   315,     3,   103,   536,    68,   320,
     248,   104,    99,   110,    12,   281,   276,    77,   332,   279,
      68,    65,    26,   110,   338,     3,     3,   287,    32,    77,
     569,   458,   469,   103,    11,    68,    71,    73,    98,     8,
      17,    77,    77,   101,    77,    71,   312,   105,    17,   109,
      98,   112,   112,   501,    73,    96,   321,    34,    36,    37,
      96,   109,   322,    68,   112,    98,   331,   333,   103,   103,
     106,    96,    77,   333,   110,   100,   109,   315,    97,   112,
      80,    81,   320,    61,    62,    63,   346,   401,   348,     8,
     101,   110,    11,    98,   105,   409,    73,   105,    17,    77,
      77,    45,    31,    47,   109,   365,    43,   112,   637,   524,
      54,   371,   656,   102,    51,   104,    53,    71,    96,    96,
      98,   386,   100,   378,   438,    68,     4,   100,   106,   106,
     103,   365,   104,   110,    77,    13,   114,   115,   116,   117,
     103,    22,   407,   403,   103,   383,    27,    30,    29,    32,
      31,   389,   405,   103,    96,    98,    98,    99,   100,   419,
     420,   414,   720,    61,    62,    63,   109,   405,    46,   112,
      48,     3,    50,     4,     5,    77,   414,   443,    56,    57,
      58,    59,    92,    68,    94,   419,   420,   452,   443,   424,
     425,   426,    77,   751,   429,   735,   736,   100,   464,   465,
     466,   467,    96,     3,    36,    37,   444,     3,   522,     3,
      68,    96,   563,    98,    96,   100,   476,   455,   478,    77,
     480,   459,   482,    10,   109,   485,   111,   493,    68,    61,
      62,    63,   492,   102,     3,     4,   767,    77,   103,   100,
      98,    73,    11,   109,    13,    77,    71,     3,    17,   100,
      77,   109,   101,    23,   112,   510,    32,    32,    98,   666,
     563,    68,   528,   794,    96,    34,    98,   104,   100,   109,
      77,   509,   112,    71,   106,    98,   536,    46,   110,    48,
      32,    50,   114,   115,   116,   117,    97,    56,    57,    58,
      59,    98,    96,    97,    98,    17,   100,     3,   564,   714,
     102,     7,   109,   569,    73,   112,   620,     4,    77,   716,
      16,   577,     3,    10,   580,   100,    13,   100,    15,    96,
     654,    98,   577,   100,   101,    30,   719,    96,    97,   100,
      36,    37,    97,    99,   102,   104,   105,   106,    96,    97,
      98,   110,   100,    49,   103,   102,   761,   102,   763,    46,
     103,    48,   103,    50,   657,    61,    62,    63,     3,    56,
      57,    58,    59,   103,    99,    99,    11,    73,    66,    67,
      68,    77,    17,   638,   102,   102,   112,   637,    76,   100,
     640,   100,    80,    81,    56,    57,    58,    59,   102,    34,
      96,    72,    98,   659,   100,   633,   651,    44,   102,   105,
     106,     3,    97,    82,   110,    99,   102,    99,   114,   115,
     116,   117,   678,   668,   680,   681,   113,     4,   104,     6,
      96,     8,   687,   678,   102,    12,   103,    14,    73,    16,
      17,   101,    77,    96,    97,    98,    99,   100,   101,   101,
     101,    97,    77,   100,   682,   683,   684,   102,   100,    72,
       3,    96,     3,   706,    26,     3,    99,    99,    11,    26,
     101,   106,    71,    11,    17,   110,    99,   733,   706,    17,
     101,    72,   102,     0,   101,   104,     3,   103,   733,    40,
       7,    34,    97,   748,   101,    99,    34,   100,   100,    16,
     756,    18,    19,    20,    21,    22,   107,    24,    25,    97,
      27,    28,    29,   100,    31,   770,   771,   101,    55,    36,
      37,   102,   101,    42,    55,   101,   101,    42,   101,    99,
      73,    26,    49,    26,    77,    73,   102,   787,     3,    77,
     101,     3,    96,   101,    61,    62,    63,    97,   100,   102,
      96,    41,   101,    96,   101,    60,    73,   101,    96,   101,
      77,    97,    65,   106,    65,    29,    84,   110,   106,   102,
     386,    29,   110,   256,   418,   706,     5,     3,   458,    96,
     682,    98,   563,   100,   101,    11,   514,   321,   105,   106,
       3,    17,   655,   110,     7,   465,   681,   114,   115,   116,
     117,   321,   464,    16,   467,    18,   466,    20,    34,    22,
     680,    24,    25,   657,    27,    28,    29,   715,    31,   754,
       3,     4,     5,    36,    37,   454,     9,    10,   439,    12,
      13,    14,    15,   569,   572,   725,    49,   674,     3,   764,
     577,   780,   733,   794,   482,   659,    11,    73,    61,    62,
      63,    77,    17,   405,   667,   361,   238,   411,   206,    42,
      73,   485,   528,    46,    77,    48,   374,    50,   478,    34,
      96,   238,    55,    56,    57,    58,    59,   791,   633,   728,
     106,   509,    -1,    96,   110,    98,    -1,   100,   101,    -1,
      -1,    -1,   105,   106,     3,    -1,    -1,   110,     7,    -1,
      -1,   114,   115,   116,   117,    -1,    -1,    16,    73,    18,
      -1,    20,    77,    22,    -1,    24,    25,    -1,    27,    28,
      29,    -1,    31,    -1,    -1,    -1,    -1,    36,    37,    -1,
     113,    96,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      49,   106,    -1,    -1,    -1,   110,    -1,    -1,    -1,    -1,
      -1,    -1,    61,    62,    63,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    73,    -1,    -1,    -1,    77,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,    -1,    98,
      -1,   100,   101,    -1,    -1,    -1,   105,   106,     3,    -1,
      -1,   110,     7,    -1,    -1,   114,   115,   116,   117,    -1,
      -1,    16,    -1,    18,    -1,    20,    -1,    22,    -1,    24,
      25,    -1,    27,    28,    29,    -1,    31,    -1,     3,     4,
       5,    36,    37,    -1,     9,    10,    -1,    12,    13,    14,
      15,    -1,    -1,    -1,    49,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    61,    62,    63,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,    -1,
      -1,    46,    77,    48,    -1,    50,    -1,    -1,    -1,    -1,
      -1,    56,    57,    58,    59,    -1,    -1,    -1,    -1,    -1,
      -1,    96,    -1,    98,    -1,   100,    -1,    -1,    -1,   104,
     105,   106,     3,    -1,    -1,   110,     7,    -1,    -1,   114,
     115,   116,   117,    -1,    -1,    16,    -1,    18,    -1,    20,
      -1,    22,    -1,    24,    25,    -1,    27,    28,    29,    -1,
      31,    -1,    -1,    -1,    -1,    36,    37,    -1,   113,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      61,    62,    63,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    73,    -1,    -1,    -1,    77,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    96,    -1,    98,    -1,   100,
      -1,    -1,    -1,   104,   105,   106,     3,    -1,    -1,   110,
       7,    -1,    -1,   114,   115,   116,   117,    -1,    -1,    16,
      -1,    18,    -1,    20,    -1,    22,    -1,    24,    25,    -1,
      27,    28,    29,    -1,    31,    -1,    -1,    -1,    -1,    36,
      37,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    61,    62,    63,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    -1,    -1,    -1,
      77,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,
      -1,    98,    -1,   100,    -1,    -1,    -1,    -1,   105,   106,
       3,    -1,    -1,   110,     7,    -1,    -1,   114,   115,   116,
     117,    -1,    -1,    16,    -1,    18,    -1,    20,    -1,    22,
      -1,    24,    25,    -1,    27,    28,    29,    -1,    31,    -1,
      -1,     3,    -1,    36,    37,     7,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    16,    -1,    49,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,    62,
      63,    -1,    -1,    -1,    36,    37,    -1,    -1,    -1,    -1,
      73,    -1,    -1,    -1,    77,    -1,    -1,    49,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,
      62,    63,    -1,    96,    -1,    98,    -1,   100,    -1,    -1,
      -1,    73,   105,   106,    -1,    77,    -1,   110,    -1,    -1,
      -1,   114,   115,   116,   117,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    96,    -1,    98,    -1,   100,    -1,
      -1,    -1,    -1,   105,   106,    -1,    -1,    -1,   110,    -1,
      -1,    -1,   114,   115,   116,   117,     3,     4,     5,    -1,
      -1,    -1,     9,    10,    -1,    12,    13,    14,    15,     3,
      -1,    -1,    19,     3,     4,     5,    -1,    -1,    -1,     9,
      10,    -1,    12,    13,    14,    15,    -1,    -1,    -1,    19,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,
      -1,    48,    -1,    50,    -1,    -1,    -1,    -1,    -1,    56,
      57,    58,    59,    -1,    -1,    -1,    46,    -1,    48,    -1,
      50,     3,    -1,    -1,    -1,    -1,    56,    57,    58,    59,
      64,    -1,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,
      -1,    85,    86,    87,    88,    89,    90,    91,    -1,    93,
      94,    -1,    -1,    -1,    -1,    -1,   113,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   110,   111,    -1,    -1,
      -1,    -1,    64,   113,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    -1,    -1,
      -1,    -1,    -1,    85,    86,    87,    88,    89,    90,    91,
      -1,    93,    94,     3,     4,    -1,    -1,    -1,    -1,    -1,
      -1,    11,    -1,    13,    -1,    -1,    -1,    17,   110,   111,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    34,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    46,    -1,    48,    -1,
      50,    -1,    -1,    -1,    -1,    -1,    56,    57,    58,    59,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    73,    -1,    -1,    -1,    77,    -1,    32,
      -1,    34,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    96,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   104,   105,   106,    -1,    -1,    -1,
     110,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    32,    -1,    34,
      -1,    -1,    85,    86,    87,    88,    89,    90,    91,    -1,
      93,    94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   109,    -1,    -1,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    -1,    -1,    -1,    -1,    -1,
      85,    86,    87,    88,    89,    90,    91,    -1,    93,    94,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    64,   109,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    79,    -1,
      -1,    -1,    -1,    -1,    85,    86,    87,    88,    89,    90,
      91,    -1,    93,    94,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   110,
     111
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const unsigned short int yystos[] =
{
       0,     3,     7,    16,    18,    20,    22,    24,    25,    27,
      28,    29,    31,    49,    73,   105,   110,   121,   122,   124,
     125,   126,   130,   131,   133,   134,   135,   139,   149,   150,
     151,   152,   153,   155,   156,   157,   170,   177,   178,   183,
     188,   189,   205,   206,   209,   211,   231,   251,   255,   258,
     270,   271,   274,   275,   277,   278,   280,   281,   282,   283,
     308,   313,   316,   318,   319,   320,   367,     3,   371,   372,
       3,   207,   151,   154,   154,   100,   176,   137,   170,   316,
       3,    11,    17,    34,    96,   106,   127,   129,   178,   188,
     292,   294,   295,   296,   297,   301,   302,   304,   305,   306,
     307,   316,   317,   371,   128,   316,   316,   132,   170,   316,
      43,    51,    53,     3,     3,   310,    66,    67,    68,    76,
      80,    81,     0,   124,   104,   123,   123,   125,   139,   103,
     123,   123,     3,     4,     5,     9,    12,    13,    14,    15,
      46,    48,    50,    56,    57,    58,    59,   113,   173,   174,
     175,   232,   240,   242,   272,     3,    96,   184,   185,   190,
     292,   316,    65,   208,     3,    64,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      85,    86,    87,    88,    89,    90,    91,    93,    94,   111,
     212,   365,   366,   367,   368,    71,   158,   210,   112,   279,
     178,   123,    32,    34,    65,   109,   321,   322,   323,   366,
       3,    36,    37,    61,    62,    63,    77,    96,    98,   100,
     106,   114,   115,   116,   117,   325,   327,   328,   333,   336,
     337,   338,   339,   340,   341,   346,   347,   351,   352,   353,
     356,   357,   358,   359,   360,   361,   362,   364,   103,   252,
     388,    71,   167,   326,   101,   124,    31,   176,   292,   292,
      12,    96,   369,   371,   373,   379,   380,   381,   382,   383,
     387,   127,   292,   298,   299,   300,   104,     4,   174,    26,
      32,   103,   293,   370,   293,   293,    77,   102,   100,   176,
     365,   365,   365,    96,   309,   311,     3,   256,   176,     4,
       6,     8,    12,    14,    16,    17,   179,   180,     3,   259,
       3,   253,    96,   219,     8,    11,    17,   174,   210,    10,
     102,   370,    65,   187,   369,    80,    81,   210,   160,   161,
     372,   219,   178,   100,   176,   191,   197,   109,   324,   369,
     318,   316,   322,   318,   326,    77,    98,    77,    98,     3,
       3,   316,   348,   349,   350,   103,   316,   329,   330,   332,
     334,   335,     3,    98,   219,   342,   343,   344,   363,    68,
      77,    98,   109,   347,   354,   368,   371,   389,   100,   276,
     168,   169,   369,    77,   101,   132,    23,   136,   138,    71,
      44,   178,   223,   374,   375,   376,   377,    68,    77,    98,
     109,   112,    98,   104,    97,   102,   128,   316,   369,   178,
       3,   241,   316,   317,    19,    21,   140,   141,   142,   143,
     146,   100,   100,   100,    96,    98,   100,   312,   314,   315,
     210,     3,   181,   182,   365,   252,   210,    97,   178,   221,
     222,   223,   184,   100,   103,   184,   176,   186,   187,   191,
     197,   316,   213,   217,   219,    30,   159,   162,   102,   103,
     176,   273,   369,   178,   193,   194,   199,   200,   369,   103,
       3,    10,   316,     3,    10,   316,   103,    97,   102,    99,
     103,    99,   102,   331,    99,   102,   331,   102,    56,    57,
      58,    59,   345,   112,   214,   215,   124,    26,   219,   363,
     214,     3,    10,    37,    61,   118,   317,   341,   355,   102,
     170,   171,   172,    72,   102,   371,   135,   176,   371,   384,
     385,   386,   223,     3,   378,    97,    82,   220,   102,    39,
     119,    99,   369,    99,   128,   299,   104,   176,   369,   297,
     303,   144,   292,   103,   101,   140,   104,   124,   104,   124,
      52,   284,   285,   286,   288,   101,   101,   312,   312,   312,
      97,   312,   252,    77,   100,   260,   252,   369,   220,   102,
      11,    17,   224,   170,   178,   233,   234,   235,   236,   371,
     100,   201,   176,   216,   214,   217,   218,   163,   164,   165,
     166,   371,    72,   160,   371,   383,    42,    55,   178,   192,
     194,   178,   193,   178,   198,   200,   178,   199,   318,    99,
      99,   316,   349,   316,   316,   330,   316,   334,   363,   316,
     178,    26,   101,   214,   214,    26,   326,    99,   389,   172,
     101,   168,    72,   102,   369,   370,   376,   104,   128,   103,
      30,   145,   147,   289,   101,    40,   287,   290,    97,    99,
     101,   100,   257,   181,   178,   189,   206,   211,   261,   262,
     263,   264,   265,   266,   267,   268,   271,   278,   100,   254,
      97,   221,   107,   225,   225,    19,   101,   233,   100,   178,
     203,   204,   102,    78,   103,   176,    96,   195,   196,    55,
     101,    42,   101,    55,   101,    42,   101,    99,   369,    26,
      26,   385,   128,   176,   148,   316,   102,    45,    47,    54,
     291,   172,   174,     3,   190,   252,   212,   101,   261,   210,
     279,   172,     3,   106,   228,   228,   237,   238,   241,   170,
     178,   243,   244,   245,   246,    41,    60,   178,   202,   204,
     178,   203,   163,   371,   371,   383,     3,   176,    97,   144,
     101,   370,   208,   269,   210,   219,   100,   197,   101,     3,
     106,   226,   229,   226,   102,   239,   373,    19,   101,   243,
     195,   195,   101,   101,    97,   176,   197,   213,   178,   370,
     370,   237,   241,   247,   248,   176,   176,    65,   227,   230,
     227,    65,   249,   250,   102,   316,   364,   247
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
#line 405 "grammar.y"
    {ast = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node); printf("ederr %p", (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node));;}
    break;

  case 3:
#line 412 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 5:
#line 413 "grammar.y"
    { printf("semicolon_opt\n"); ;}
    break;

  case 6:
#line 414 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 7:
#line 415 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 8:
#line 416 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 9:
#line 417 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 10:
#line 418 "grammar.y"
    { printf("statement (0)\n"); ;}
    break;

  case 11:
#line 419 "grammar.y"
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node)]; printf("current2 %p", (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node)); ;}
    break;

  case 12:
#line 420 "grammar.y"
    {((*yyvalp).node) = [[StatementsNode alloc] initWithCurrent:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(StatementsNode*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; printf("current2 %p\n", (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node));  ;}
    break;

  case 13:
#line 424 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 14:
#line 425 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 15:
#line 426 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 16:
#line 427 "grammar.y"
    { printf("loop_statement (0)\n"); ;}
    break;

  case 17:
#line 431 "grammar.y"
    { printf("for_statement (0)\n"); ;}
    break;

  case 19:
#line 432 "grammar.y"
    { printf("for_init_opt\n"); ;}
    break;

  case 21:
#line 433 "grammar.y"
    { printf("expression_opt\n"); ;}
    break;

  case 22:
#line 434 "grammar.y"
    { printf("for_statement (0)\n"); ;}
    break;

  case 23:
#line 435 "grammar.y"
    { printf("for_init (0)\n"); ;}
    break;

  case 24:
#line 436 "grammar.y"
    { printf("for_init (1)\n"); ;}
    break;

  case 25:
#line 440 "grammar.y"
    { printf("for_in_statement (0)\n"); ;}
    break;

  case 26:
#line 444 "grammar.y"
    { printf("while_statement (0)\n"); ;}
    break;

  case 27:
#line 445 "grammar.y"
    { printf("while_condition (0)\n"); ;}
    break;

  case 28:
#line 446 "grammar.y"
    { printf("while_condition (1)\n"); ;}
    break;

  case 29:
#line 450 "grammar.y"
    { printf("do_while_statement (0)\n"); ;}
    break;

  case 30:
#line 454 "grammar.y"
    { printf("branch_statement (0)\n"); ;}
    break;

  case 31:
#line 455 "grammar.y"
    { printf("branch_statement (0)\n"); ;}
    break;

  case 32:
#line 459 "grammar.y"
    { printf("if_statement (0)\n"); ;}
    break;

  case 34:
#line 460 "grammar.y"
    { printf("else_clause_opt\n"); ;}
    break;

  case 35:
#line 461 "grammar.y"
    { printf("if_condition (0)\n"); ;}
    break;

  case 36:
#line 462 "grammar.y"
    { printf("if_condition (1)\n"); ;}
    break;

  case 37:
#line 463 "grammar.y"
    { printf("else_clause (0)\n"); ;}
    break;

  case 38:
#line 464 "grammar.y"
    { printf("else_clause (1)\n"); ;}
    break;

  case 39:
#line 468 "grammar.y"
    { printf("switch_statement (0)\n"); ;}
    break;

  case 41:
#line 469 "grammar.y"
    { printf("switch_cases_opt\n"); ;}
    break;

  case 42:
#line 470 "grammar.y"
    { printf("switch_cases (0)\n"); ;}
    break;

  case 43:
#line 471 "grammar.y"
    { printf("switch_case (0)\n"); ;}
    break;

  case 44:
#line 472 "grammar.y"
    { printf("switch_case (1)\n"); ;}
    break;

  case 45:
#line 473 "grammar.y"
    { printf("switch_case (0)\n"); ;}
    break;

  case 46:
#line 474 "grammar.y"
    { printf("switch_case (1)\n"); ;}
    break;

  case 47:
#line 475 "grammar.y"
    { printf("case_label (0)\n"); ;}
    break;

  case 48:
#line 476 "grammar.y"
    { printf("case_item_list (0)\n"); ;}
    break;

  case 49:
#line 477 "grammar.y"
    { printf("case_item_list (1)\n"); ;}
    break;

  case 51:
#line 478 "grammar.y"
    { printf("guard_clause_opt\n"); ;}
    break;

  case 52:
#line 479 "grammar.y"
    { printf("default_label (0)\n"); ;}
    break;

  case 53:
#line 480 "grammar.y"
    { printf("guard_clause (0)\n"); ;}
    break;

  case 54:
#line 481 "grammar.y"
    { printf("guard_expression (0)\n"); ;}
    break;

  case 55:
#line 485 "grammar.y"
    { printf("labeled_statement (0)\n"); ;}
    break;

  case 56:
#line 486 "grammar.y"
    { printf("labeled_statement (1)\n"); ;}
    break;

  case 57:
#line 487 "grammar.y"
    { printf("statement_label (0)\n"); ;}
    break;

  case 58:
#line 488 "grammar.y"
    { printf("label_name (0)\n"); ;}
    break;

  case 59:
#line 492 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 60:
#line 493 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 61:
#line 494 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 62:
#line 495 "grammar.y"
    { printf("control_transfer_statement (0)\n"); ;}
    break;

  case 63:
#line 499 "grammar.y"
    { printf("break_statement (0)\n"); ;}
    break;

  case 65:
#line 500 "grammar.y"
    { printf("label_name_opt\n"); ;}
    break;

  case 66:
#line 504 "grammar.y"
    { printf("continue_statement (0)\n"); ;}
    break;

  case 67:
#line 508 "grammar.y"
    { printf("fallthrough_statement (0)\n"); ;}
    break;

  case 68:
#line 512 "grammar.y"
    { printf("return_statement (0)\n"); ;}
    break;

  case 69:
#line 519 "grammar.y"
    { printf("generic_parameter_clause (0)\n"); ;}
    break;

  case 71:
#line 520 "grammar.y"
    { printf("requirement_clause_opt\n"); ;}
    break;

  case 72:
#line 521 "grammar.y"
    { printf("generic_parameter_list (0)\n"); ;}
    break;

  case 73:
#line 522 "grammar.y"
    { printf("generic_parameter_list (1)\n"); ;}
    break;

  case 74:
#line 523 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 75:
#line 524 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 76:
#line 525 "grammar.y"
    { printf("generic_parameter (0)\n"); ;}
    break;

  case 77:
#line 526 "grammar.y"
    { printf("requirement_clause (0)\n"); ;}
    break;

  case 78:
#line 527 "grammar.y"
    { printf("requirement_list (0)\n"); ;}
    break;

  case 79:
#line 528 "grammar.y"
    { printf("requirement_list (1)\n"); ;}
    break;

  case 80:
#line 529 "grammar.y"
    { printf("requirement (0)\n"); ;}
    break;

  case 81:
#line 530 "grammar.y"
    { printf("requirement (1)\n"); ;}
    break;

  case 82:
#line 531 "grammar.y"
    { printf("conformance_requirement (0)\n"); ;}
    break;

  case 83:
#line 532 "grammar.y"
    { printf("conformance_requirement (0)\n"); ;}
    break;

  case 84:
#line 533 "grammar.y"
    { printf("same_type_requirement (0)\n"); ;}
    break;

  case 85:
#line 537 "grammar.y"
    { printf("generic_argument_clause (0)\n"); ;}
    break;

  case 86:
#line 538 "grammar.y"
    { printf("generic_argument_list (0)\n"); ;}
    break;

  case 87:
#line 539 "grammar.y"
    { printf("generic_argument_list (1)\n"); ;}
    break;

  case 88:
#line 540 "grammar.y"
    { printf("generic_argument (0)\n"); ;}
    break;

  case 89:
#line 547 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 90:
#line 548 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 91:
#line 549 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 92:
#line 550 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 93:
#line 551 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 94:
#line 552 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 95:
#line 553 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 96:
#line 554 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 97:
#line 555 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 98:
#line 556 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 99:
#line 557 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 100:
#line 558 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 101:
#line 559 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 102:
#line 560 "grammar.y"
    { printf("declaration (0)\n"); ;}
    break;

  case 103:
#line 561 "grammar.y"
    { printf("declarations (0)\n"); ;}
    break;

  case 105:
#line 562 "grammar.y"
    { printf("declarations_opt\n"); ;}
    break;

  case 106:
#line 563 "grammar.y"
    { printf("declaration_specifiers (0)\n"); ;}
    break;

  case 108:
#line 564 "grammar.y"
    { printf("declaration_specifiers_opt\n"); ;}
    break;

  case 109:
#line 565 "grammar.y"
    { printf("declaration_specifier (0)\n"); ;}
    break;

  case 110:
#line 566 "grammar.y"
    { printf("declaration_specifier (1)\n"); ;}
    break;

  case 111:
#line 567 "grammar.y"
    { printf("declaration_specifier (2)\n"); ;}
    break;

  case 112:
#line 568 "grammar.y"
    { printf("declaration_specifier (3)\n"); ;}
    break;

  case 113:
#line 569 "grammar.y"
    { printf("declaration_specifier (4)\n"); ;}
    break;

  case 114:
#line 570 "grammar.y"
    { printf("declaration_specifier (5)\n"); ;}
    break;

  case 115:
#line 571 "grammar.y"
    { printf("declaration_specifier (6)\n"); ;}
    break;

  case 116:
#line 572 "grammar.y"
    { printf("declaration_specifier (7)\n"); ;}
    break;

  case 117:
#line 573 "grammar.y"
    { printf("declaration_specifier (8)\n"); ;}
    break;

  case 118:
#line 577 "grammar.y"
    { printf("code_block (0)\n"); ;}
    break;

  case 119:
#line 578 "grammar.y"
    { printf("code_block (1)\n"); ;}
    break;

  case 120:
#line 582 "grammar.y"
    { printf("import_declaration (0)\n"); ;}
    break;

  case 122:
#line 583 "grammar.y"
    { printf("attributes_opt\n"); ;}
    break;

  case 124:
#line 584 "grammar.y"
    { printf("import_kind_opt\n"); ;}
    break;

  case 125:
#line 585 "grammar.y"
    { printf("import_kind (0)\n"); ;}
    break;

  case 126:
#line 586 "grammar.y"
    { printf("import_kind (1)\n"); ;}
    break;

  case 127:
#line 587 "grammar.y"
    { printf("import_kind (2)\n"); ;}
    break;

  case 128:
#line 588 "grammar.y"
    { printf("import_kind (3)\n"); ;}
    break;

  case 129:
#line 589 "grammar.y"
    { printf("import_kind (4)\n"); ;}
    break;

  case 130:
#line 590 "grammar.y"
    { printf("import_kind (5)\n"); ;}
    break;

  case 131:
#line 591 "grammar.y"
    { printf("import_kind (6)\n"); ;}
    break;

  case 132:
#line 592 "grammar.y"
    { printf("import_path (0)\n"); ;}
    break;

  case 133:
#line 593 "grammar.y"
    { printf("import_path (1)\n"); ;}
    break;

  case 134:
#line 594 "grammar.y"
    { printf("import_path_identifier (0)\n"); ;}
    break;

  case 135:
#line 595 "grammar.y"
    { printf("import_path_identifier (1)\n"); ;}
    break;

  case 136:
#line 599 "grammar.y"
    { printf("constant_declaration (0)\n"); ;}
    break;

  case 137:
#line 600 "grammar.y"
    { printf("pattern_initializer_list (0)\n"); ;}
    break;

  case 138:
#line 601 "grammar.y"
    { printf("pattern_initializer_list (1)\n"); ;}
    break;

  case 140:
#line 603 "grammar.y"
    { printf("pattern_initializer (0)\n"); ;}
    break;

  case 142:
#line 604 "grammar.y"
    { printf("initializer_opt\n"); ;}
    break;

  case 143:
#line 605 "grammar.y"
    { printf("initializer (0)\n"); ;}
    break;

  case 144:
#line 609 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 145:
#line 610 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 146:
#line 611 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 147:
#line 612 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 148:
#line 613 "grammar.y"
    { printf("variable_declaration (0)\n"); ;}
    break;

  case 149:
#line 614 "grammar.y"
    { printf("variable_declaration_head (0)\n"); ;}
    break;

  case 150:
#line 615 "grammar.y"
    { printf("variable_name (0)\n"); ;}
    break;

  case 151:
#line 616 "grammar.y"
    { printf("getter_setter_block (0)\n"); ;}
    break;

  case 153:
#line 617 "grammar.y"
    { printf("setter_clause_opt\n"); ;}
    break;

  case 154:
#line 618 "grammar.y"
    { printf("getter_setter_block (0)\n"); ;}
    break;

  case 155:
#line 619 "grammar.y"
    { printf("getter_clause (0)\n"); ;}
    break;

  case 156:
#line 620 "grammar.y"
    { printf("setter_clause (0)\n"); ;}
    break;

  case 158:
#line 621 "grammar.y"
    { printf("setter_name_opt\n"); ;}
    break;

  case 159:
#line 622 "grammar.y"
    { printf("setter_name (0)\n"); ;}
    break;

  case 160:
#line 623 "grammar.y"
    { printf("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 162:
#line 624 "grammar.y"
    { printf("setter_keyword_clause_opt\n"); ;}
    break;

  case 163:
#line 625 "grammar.y"
    { printf("getter_setter_keyword_block (0)\n"); ;}
    break;

  case 164:
#line 626 "grammar.y"
    { printf("getter_keyword_clause (0)\n"); ;}
    break;

  case 165:
#line 627 "grammar.y"
    { printf("setter_keyword_clause (0)\n"); ;}
    break;

  case 166:
#line 628 "grammar.y"
    { printf("willSet_didSet_block (0)\n"); ;}
    break;

  case 168:
#line 629 "grammar.y"
    { printf("didSet_clause_opt\n"); ;}
    break;

  case 169:
#line 630 "grammar.y"
    { printf("willSet_didSet_block (0)\n"); ;}
    break;

  case 170:
#line 631 "grammar.y"
    { printf("willSet_clause (0)\n"); ;}
    break;

  case 171:
#line 632 "grammar.y"
    { printf("didSet_clause (0)\n"); ;}
    break;

  case 172:
#line 636 "grammar.y"
    { printf("typealias_declaration (0)\n"); ;}
    break;

  case 173:
#line 637 "grammar.y"
    { printf("typealias_head (0)\n"); ;}
    break;

  case 174:
#line 638 "grammar.y"
    { printf("typealias_name (0)\n"); ;}
    break;

  case 175:
#line 639 "grammar.y"
    { printf("typealias_assignment (0)\n"); ;}
    break;

  case 176:
#line 643 "grammar.y"
    { printf("function_declaration (0)\n"); ;}
    break;

  case 178:
#line 644 "grammar.y"
    { printf("generic_parameter_clause_opt\n"); ;}
    break;

  case 179:
#line 645 "grammar.y"
    { printf("function_head (0)\n"); ;}
    break;

  case 180:
#line 646 "grammar.y"
    { printf("function_name (0)\n"); ;}
    break;

  case 181:
#line 647 "grammar.y"
    { printf("function_name (1)\n"); ;}
    break;

  case 182:
#line 648 "grammar.y"
    { printf("function_signature (0)\n"); ;}
    break;

  case 184:
#line 649 "grammar.y"
    { printf("function_result_opt\n"); ;}
    break;

  case 185:
#line 650 "grammar.y"
    { printf("function_result (0)\n"); ;}
    break;

  case 186:
#line 651 "grammar.y"
    { printf("function_body (0)\n"); ;}
    break;

  case 187:
#line 652 "grammar.y"
    { printf("parameter_clauses (0)\n"); ;}
    break;

  case 189:
#line 653 "grammar.y"
    { printf("parameter_clauses_opt\n"); ;}
    break;

  case 190:
#line 654 "grammar.y"
    { printf("parameter_clause (0)\n"); ;}
    break;

  case 191:
#line 655 "grammar.y"
    { printf("parameter_clause (1)\n"); ;}
    break;

  case 193:
#line 656 "grammar.y"
    { printf("tripledot_opt\n"); ;}
    break;

  case 194:
#line 657 "grammar.y"
    { printf("parameter_list (0)\n"); ;}
    break;

  case 195:
#line 658 "grammar.y"
    { printf("parameter_list (1)\n"); ;}
    break;

  case 196:
#line 659 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 198:
#line 660 "grammar.y"
    { printf("inout_opt\n"); ;}
    break;

  case 200:
#line 661 "grammar.y"
    { printf("let_opt\n"); ;}
    break;

  case 202:
#line 662 "grammar.y"
    { printf("hash_opt\n"); ;}
    break;

  case 204:
#line 663 "grammar.y"
    { printf("local_parameter_name_opt\n"); ;}
    break;

  case 206:
#line 664 "grammar.y"
    { printf("default_argument_clause_opt\n"); ;}
    break;

  case 207:
#line 665 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 208:
#line 666 "grammar.y"
    { printf("parameter (0)\n"); ;}
    break;

  case 209:
#line 667 "grammar.y"
    { printf("parameter_name (0)\n"); ;}
    break;

  case 210:
#line 668 "grammar.y"
    { printf("parameter_name (1)\n"); ;}
    break;

  case 211:
#line 669 "grammar.y"
    { printf("local_parameter_name (0)\n"); ;}
    break;

  case 212:
#line 670 "grammar.y"
    { printf("local_parameter_name (1)\n"); ;}
    break;

  case 213:
#line 671 "grammar.y"
    { printf("default_argument_clause (0)\n"); ;}
    break;

  case 214:
#line 675 "grammar.y"
    { printf("enum_declaration (0)\n"); ;}
    break;

  case 215:
#line 676 "grammar.y"
    { printf("enum_declaration (1)\n"); ;}
    break;

  case 216:
#line 677 "grammar.y"
    { printf("union_style_enum (0)\n"); ;}
    break;

  case 218:
#line 678 "grammar.y"
    { printf("union_style_enum_members_opt\n"); ;}
    break;

  case 219:
#line 679 "grammar.y"
    { printf("union_style_enum_members (0)\n"); ;}
    break;

  case 220:
#line 680 "grammar.y"
    { printf("union_style_enum_member (0)\n"); ;}
    break;

  case 221:
#line 681 "grammar.y"
    { printf("union_style_enum_member (1)\n"); ;}
    break;

  case 222:
#line 682 "grammar.y"
    { printf("union_style_enum_case_clause (0)\n"); ;}
    break;

  case 223:
#line 683 "grammar.y"
    { printf("union_style_enum_case_list (0)\n"); ;}
    break;

  case 224:
#line 684 "grammar.y"
    { printf("union_style_enum_case_list (1)\n"); ;}
    break;

  case 225:
#line 685 "grammar.y"
    { printf("union_style_enum_case (0)\n"); ;}
    break;

  case 227:
#line 686 "grammar.y"
    { printf("tuple_type_opt\n"); ;}
    break;

  case 228:
#line 687 "grammar.y"
    { printf("enum_name (0)\n"); ;}
    break;

  case 229:
#line 688 "grammar.y"
    { printf("enum_case_name (0)\n"); ;}
    break;

  case 230:
#line 689 "grammar.y"
    { printf("raw_value_style_enum (0)\n"); ;}
    break;

  case 232:
#line 690 "grammar.y"
    { printf("raw_value_style_enum_members_opt\n"); ;}
    break;

  case 233:
#line 691 "grammar.y"
    { printf("raw_value_style_enum_members (0)\n"); ;}
    break;

  case 234:
#line 692 "grammar.y"
    { printf("raw_value_style_enum_member (0)\n"); ;}
    break;

  case 235:
#line 693 "grammar.y"
    { printf("raw_value_style_enum_member (1)\n"); ;}
    break;

  case 236:
#line 694 "grammar.y"
    { printf("raw_value_style_enum_case_clause (0)\n"); ;}
    break;

  case 237:
#line 695 "grammar.y"
    { printf("raw_value_style_enum_case_list (0)\n"); ;}
    break;

  case 238:
#line 696 "grammar.y"
    { printf("raw_value_style_enum_case_list (1)\n"); ;}
    break;

  case 239:
#line 697 "grammar.y"
    { printf("raw_value_style_enum_case (0)\n"); ;}
    break;

  case 241:
#line 698 "grammar.y"
    { printf("raw_value_assignment_opt\n"); ;}
    break;

  case 242:
#line 699 "grammar.y"
    { printf("raw_value_assignment (0)\n"); ;}
    break;

  case 243:
#line 703 "grammar.y"
    { printf("struct_declaration (0)\n"); ;}
    break;

  case 245:
#line 704 "grammar.y"
    { printf("type_inheritance_clause_opt\n"); ;}
    break;

  case 246:
#line 705 "grammar.y"
    { printf("struct_name (0)\n"); ;}
    break;

  case 247:
#line 706 "grammar.y"
    { printf("struct_body (0)\n"); ;}
    break;

  case 248:
#line 710 "grammar.y"
    { printf("class_declaration (0)\n"); ;}
    break;

  case 249:
#line 711 "grammar.y"
    { printf("class_name (0)\n"); ;}
    break;

  case 250:
#line 712 "grammar.y"
    { printf("class_body (0)\n"); ;}
    break;

  case 251:
#line 716 "grammar.y"
    { printf("protocol_declaration (0)\n"); ;}
    break;

  case 252:
#line 717 "grammar.y"
    { printf("protocol_name (0)\n"); ;}
    break;

  case 253:
#line 718 "grammar.y"
    { printf("protocol_body (0)\n"); ;}
    break;

  case 255:
#line 719 "grammar.y"
    { printf("protocol_member_declarations_opt\n"); ;}
    break;

  case 256:
#line 720 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 257:
#line 721 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 258:
#line 722 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 259:
#line 723 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 260:
#line 724 "grammar.y"
    { printf("protocol_member_declaration (0)\n"); ;}
    break;

  case 261:
#line 725 "grammar.y"
    { printf("protocol_member_declarations (0)\n"); ;}
    break;

  case 262:
#line 729 "grammar.y"
    { printf("protocol_property_declaration (0)\n"); ;}
    break;

  case 263:
#line 733 "grammar.y"
    { printf("protocol_method_declaration (0)\n"); ;}
    break;

  case 264:
#line 737 "grammar.y"
    { printf("protocol_initializer_declaration (0)\n"); ;}
    break;

  case 265:
#line 741 "grammar.y"
    { printf("protocol_subscript_declaration (0)\n"); ;}
    break;

  case 266:
#line 745 "grammar.y"
    { printf("protocol_associated_type_declaration (0)\n"); ;}
    break;

  case 268:
#line 746 "grammar.y"
    { printf("typealias_assignment_opt\n"); ;}
    break;

  case 269:
#line 750 "grammar.y"
    { printf("initializer_declaration (0)\n"); ;}
    break;

  case 270:
#line 751 "grammar.y"
    { printf("initializer_head (0)\n"); ;}
    break;

  case 272:
#line 752 "grammar.y"
    { printf("convenience_opt\n"); ;}
    break;

  case 273:
#line 753 "grammar.y"
    { printf("initializer_body (0)\n"); ;}
    break;

  case 274:
#line 757 "grammar.y"
    { printf("deinitializer_declaration (0)\n"); ;}
    break;

  case 275:
#line 761 "grammar.y"
    { printf("extension_declaration (0)\n"); ;}
    break;

  case 276:
#line 762 "grammar.y"
    { printf("extension_body (0)\n"); ;}
    break;

  case 277:
#line 766 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 278:
#line 767 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 279:
#line 768 "grammar.y"
    { printf("subscript_declaration (0)\n"); ;}
    break;

  case 280:
#line 769 "grammar.y"
    { printf("subscript_head (0)\n"); ;}
    break;

  case 281:
#line 770 "grammar.y"
    { printf("subscript_result (0)\n"); ;}
    break;

  case 282:
#line 774 "grammar.y"
    { printf("operator_declaration (0)\n"); ;}
    break;

  case 283:
#line 775 "grammar.y"
    { printf("operator_declaration (1)\n"); ;}
    break;

  case 284:
#line 776 "grammar.y"
    { printf("operator_declaration (2)\n"); ;}
    break;

  case 285:
#line 777 "grammar.y"
    { printf("prefix_operator_declaration (0)\n"); ;}
    break;

  case 286:
#line 778 "grammar.y"
    { printf("postfix_operator_declaration (0)\n"); ;}
    break;

  case 287:
#line 779 "grammar.y"
    { printf("infix_operator_declaration (0)\n"); ;}
    break;

  case 289:
#line 780 "grammar.y"
    { printf("infix_operator_attributes_opt\n"); ;}
    break;

  case 290:
#line 781 "grammar.y"
    { printf("infix_operator_attributes (0)\n"); ;}
    break;

  case 292:
#line 782 "grammar.y"
    { printf("precedence_clause_opt\n"); ;}
    break;

  case 294:
#line 783 "grammar.y"
    { printf("associativity_clause_opt\n"); ;}
    break;

  case 295:
#line 784 "grammar.y"
    { printf("precedence_clause (0)\n"); ;}
    break;

  case 296:
#line 785 "grammar.y"
    { printf("precedence_level (0)\n"); ;}
    break;

  case 297:
#line 786 "grammar.y"
    { printf("associativity_clause (0)\n"); ;}
    break;

  case 298:
#line 787 "grammar.y"
    { printf("associativity (0)\n"); ;}
    break;

  case 299:
#line 788 "grammar.y"
    { printf("associativity (1)\n"); ;}
    break;

  case 300:
#line 789 "grammar.y"
    { printf("associativity (2)\n"); ;}
    break;

  case 301:
#line 796 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 303:
#line 797 "grammar.y"
    { printf("type_annotation_opt\n"); ;}
    break;

  case 304:
#line 798 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 305:
#line 799 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 306:
#line 800 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 307:
#line 801 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 308:
#line 802 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 309:
#line 803 "grammar.y"
    { printf("pattern (0)\n"); ;}
    break;

  case 310:
#line 807 "grammar.y"
    { printf("wildcard_pattern (0)\n"); ;}
    break;

  case 311:
#line 811 "grammar.y"
    { printf("identifier_pattern (0)\n"); ;}
    break;

  case 312:
#line 815 "grammar.y"
    { printf("value_binding_pattern (0)\n"); ;}
    break;

  case 313:
#line 816 "grammar.y"
    { printf("value_binding_pattern (1)\n"); ;}
    break;

  case 314:
#line 820 "grammar.y"
    { printf("tuple_pattern (0)\n"); ;}
    break;

  case 316:
#line 821 "grammar.y"
    { printf("tuple_pattern_element_list_opt\n"); ;}
    break;

  case 317:
#line 822 "grammar.y"
    { printf("tuple_pattern_element_list (0)\n"); ;}
    break;

  case 318:
#line 823 "grammar.y"
    { printf("tuple_pattern_element_list (1)\n"); ;}
    break;

  case 319:
#line 824 "grammar.y"
    { printf("tuple_pattern_element (0)\n"); ;}
    break;

  case 320:
#line 828 "grammar.y"
    { printf("enum_case_pattern (0)\n"); ;}
    break;

  case 322:
#line 829 "grammar.y"
    { printf("type_identifier_opt\n"); ;}
    break;

  case 324:
#line 830 "grammar.y"
    { printf("tuple_pattern_opt\n"); ;}
    break;

  case 325:
#line 834 "grammar.y"
    { printf("type_casting_pattern (0)\n"); ;}
    break;

  case 326:
#line 835 "grammar.y"
    { printf("type_casting_pattern (1)\n"); ;}
    break;

  case 327:
#line 836 "grammar.y"
    { printf("is_pattern (0)\n"); ;}
    break;

  case 328:
#line 837 "grammar.y"
    { printf("as_pattern (0)\n"); ;}
    break;

  case 329:
#line 841 "grammar.y"
    { printf("expression_pattern (0)\n"); ;}
    break;

  case 330:
#line 848 "grammar.y"
    { printf("attribute (0)\n"); ;}
    break;

  case 332:
#line 849 "grammar.y"
    { printf("attribute_argument_clause_opt\n"); ;}
    break;

  case 333:
#line 850 "grammar.y"
    { printf("attribute_name (0)\n"); ;}
    break;

  case 334:
#line 851 "grammar.y"
    { printf("attribute_argument_clause (0)\n"); ;}
    break;

  case 336:
#line 852 "grammar.y"
    { printf("balanced_tokens_opt\n"); ;}
    break;

  case 337:
#line 853 "grammar.y"
    { printf("attributes (0)\n"); ;}
    break;

  case 338:
#line 854 "grammar.y"
    { printf("balanced_tokens (0)\n"); ;}
    break;

  case 339:
#line 855 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 340:
#line 856 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 341:
#line 857 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 342:
#line 858 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 343:
#line 859 "grammar.y"
    { printf("balanced_token (0)\n"); ;}
    break;

  case 344:
#line 866 "grammar.y"
    {printf("expression (0)\n"); ;}
    break;

  case 345:
#line 867 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)];;}
    break;

  case 346:
#line 868 "grammar.y"
    { printf("expression_list (0)\n"); ;}
    break;

  case 347:
#line 869 "grammar.y"
    { printf("expression_list (1)\n"); ;}
    break;

  case 348:
#line 873 "grammar.y"
    {((*yyvalp).node) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str) ? [[PrefixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))] : (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node);  printf("prefix_expression\n"); ;}
    break;

  case 349:
#line 874 "grammar.y"
    {((*yyvalp).str) = NULL;}
    break;

  case 350:
#line 874 "grammar.y"
    { printf("prefix_operator_opt\n"); ;}
    break;

  case 351:
#line 875 "grammar.y"
    { printf("prefix_expression (0)\n"); ;}
    break;

  case 352:
#line 876 "grammar.y"
    { printf("in_out_expression (0)\n"); ;}
    break;

  case 353:
#line 880 "grammar.y"
    {((*yyvalp).node) = [[BinaryOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node) binaryOperator:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))]; printf("binary_expression (0)\n"); ;}
    break;

  case 354:
#line 881 "grammar.y"
    {((*yyvalp).node) = [[AssignmentOperator alloc] initWithRightOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)]; printf("binary_expression (0)\n"); ;}
    break;

  case 355:
#line 882 "grammar.y"
    {((*yyvalp).node) = [[TernaryOperator alloc] initWithTrueOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (4))].yystate.yysemantics.yysval.node) falseOperand:(((yyGLRStackItem const *)yyvsp)[YYFILL ((4) - (4))].yystate.yysemantics.yysval.node)]; printf("binary_expression (0)\n"); ;}
    break;

  case 356:
#line 883 "grammar.y"
    { printf("binary_expression (0)\n"); ;}
    break;

  case 357:
#line 884 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.node)]; ;}
    break;

  case 358:
#line 885 "grammar.y"
    {((*yyvalp).node) = [[BinaryExpression alloc] initWithExpression:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node) next:(BinaryExpression*)(((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.node)];  ;}
    break;

  case 359:
#line 891 "grammar.y"
    { printf("type_casting_operator (0)\n"); ;}
    break;

  case 360:
#line 892 "grammar.y"
    { printf("type_casting_operator (1)\n"); ;}
    break;

  case 362:
#line 893 "grammar.y"
    { printf("question_opt\n"); ;}
    break;

  case 363:
#line 897 "grammar.y"
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.str))]; printf("primary_expression (0)\n"); ;}
    break;

  case 365:
#line 898 "grammar.y"
    { printf("generic_argument_clause_opt\n"); ;}
    break;

  case 366:
#line 899 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 367:
#line 900 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 368:
#line 901 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 369:
#line 902 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 370:
#line 903 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 371:
#line 904 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 372:
#line 905 "grammar.y"
    { printf("primary_expression (0)\n"); ;}
    break;

  case 373:
#line 909 "grammar.y"
    { ((*yyvalp).node) = [[LiteralExpression alloc] init:toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.str))]; printf("Literal: %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (1))].yystate.yysemantics.yysval.str));}
    break;

  case 374:
#line 910 "grammar.y"
    { printf("literal_expression (0)\n"); ;}
    break;

  case 375:
#line 911 "grammar.y"
    { printf("literal_expression (1)\n"); ;}
    break;

  case 376:
#line 912 "grammar.y"
    { printf("literal_expression (0)\n"); ;}
    break;

  case 377:
#line 913 "grammar.y"
    { printf("literal_expression (1)\n"); ;}
    break;

  case 378:
#line 914 "grammar.y"
    { printf("literal_expression (2)\n"); ;}
    break;

  case 379:
#line 915 "grammar.y"
    { printf("literal_expression (3)\n"); ;}
    break;

  case 380:
#line 916 "grammar.y"
    { printf("array_literal (0)\n"); ;}
    break;

  case 382:
#line 917 "grammar.y"
    { printf("array_literal_items_opt\n"); ;}
    break;

  case 383:
#line 918 "grammar.y"
    { printf("array_literal_items (0)\n"); ;}
    break;

  case 384:
#line 919 "grammar.y"
    { printf("array_literal_items (1)\n"); ;}
    break;

  case 386:
#line 920 "grammar.y"
    { printf("comma_opt\n"); ;}
    break;

  case 387:
#line 921 "grammar.y"
    { printf("array_literal_item (0)\n"); ;}
    break;

  case 388:
#line 922 "grammar.y"
    { printf("dictionary_literal (0)\n"); ;}
    break;

  case 389:
#line 923 "grammar.y"
    { printf("dictionary_literal (1)\n"); ;}
    break;

  case 390:
#line 924 "grammar.y"
    { printf("dictionary_literal_items (0)\n"); ;}
    break;

  case 391:
#line 925 "grammar.y"
    { printf("dictionary_literal_items (1)\n"); ;}
    break;

  case 392:
#line 926 "grammar.y"
    { printf("dictionary_literal_item (0)\n"); ;}
    break;

  case 393:
#line 930 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 394:
#line 931 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 395:
#line 932 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 396:
#line 933 "grammar.y"
    { printf("self_expression (0)\n"); ;}
    break;

  case 397:
#line 937 "grammar.y"
    { printf("superclass_expression (0)\n"); ;}
    break;

  case 398:
#line 938 "grammar.y"
    { printf("superclass_expression (1)\n"); ;}
    break;

  case 399:
#line 939 "grammar.y"
    { printf("superclass_expression (2)\n"); ;}
    break;

  case 400:
#line 940 "grammar.y"
    { printf("superclass_method_expression (0)\n"); ;}
    break;

  case 401:
#line 941 "grammar.y"
    { printf("superclass_subscript_expression (0)\n"); ;}
    break;

  case 402:
#line 942 "grammar.y"
    { printf("superclass_initializer_expression (0)\n"); ;}
    break;

  case 403:
#line 946 "grammar.y"
    { printf("closure_expression (0)\n"); ;}
    break;

  case 405:
#line 947 "grammar.y"
    { printf("closure_signature_opt\n"); ;}
    break;

  case 406:
#line 948 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 407:
#line 949 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 408:
#line 950 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 409:
#line 951 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 410:
#line 952 "grammar.y"
    { printf("closure_signature (0)\n"); ;}
    break;

  case 411:
#line 953 "grammar.y"
    { printf("capture_list (0)\n"); ;}
    break;

  case 412:
#line 954 "grammar.y"
    { printf("capture_specifier (0)\n"); ;}
    break;

  case 413:
#line 955 "grammar.y"
    { printf("capture_specifier (1)\n"); ;}
    break;

  case 414:
#line 956 "grammar.y"
    { printf("capture_specifier (2)\n"); ;}
    break;

  case 415:
#line 957 "grammar.y"
    { printf("capture_specifier (3)\n"); ;}
    break;

  case 416:
#line 961 "grammar.y"
    { printf("implicit_member_expression (0)\n"); ;}
    break;

  case 417:
#line 965 "grammar.y"
    { printf("parenthesized_expression (0)\n"); ;}
    break;

  case 419:
#line 966 "grammar.y"
    { printf("expression_element_list_opt\n"); ;}
    break;

  case 420:
#line 967 "grammar.y"
    { printf("expression_element_list (0)\n"); ;}
    break;

  case 421:
#line 968 "grammar.y"
    { printf("expression_element_list (1)\n"); ;}
    break;

  case 422:
#line 969 "grammar.y"
    { printf("expression_element (0)\n"); ;}
    break;

  case 423:
#line 970 "grammar.y"
    { printf("expression_element (1)\n"); ;}
    break;

  case 424:
#line 974 "grammar.y"
    { printf("wildcard_expression (0)\n"); ;}
    break;

  case 425:
#line 978 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 426:
#line 979 "grammar.y"
    { ((*yyvalp).node) = [[PostfixOperator alloc] init:(((yyGLRStackItem const *)yyvsp)[YYFILL ((1) - (2))].yystate.yysemantics.yysval.node):toSwift((((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str))]; printf("postfix_expression op %s\n", (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str)); ;}
    break;

  case 427:
#line 980 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 428:
#line 981 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 429:
#line 982 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 430:
#line 983 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 431:
#line 984 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 432:
#line 985 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 433:
#line 986 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 434:
#line 987 "grammar.y"
    { printf("postfix_expression (0)\n"); ;}
    break;

  case 435:
#line 991 "grammar.y"
    { printf("function_call_expression (0)\n"); ;}
    break;

  case 436:
#line 992 "grammar.y"
    { printf("function_call_expression (0)\n"); ;}
    break;

  case 438:
#line 993 "grammar.y"
    { printf("parenthesized_expression_opt\n"); ;}
    break;

  case 439:
#line 994 "grammar.y"
    { printf("trailing_closure (0)\n"); ;}
    break;

  case 440:
#line 998 "grammar.y"
    { printf("initializer_expression (0)\n"); ;}
    break;

  case 441:
#line 1002 "grammar.y"
    { printf("explicit_member_expression (0)\n"); ;}
    break;

  case 442:
#line 1003 "grammar.y"
    { printf("explicit_member_expression (0)\n"); ;}
    break;

  case 443:
#line 1007 "grammar.y"
    { printf("postfix_self_expression (0)\n"); ;}
    break;

  case 444:
#line 1011 "grammar.y"
    { printf("dynamic_type_expression (0)\n"); ;}
    break;

  case 445:
#line 1015 "grammar.y"
    { printf("subscript_expression (0)\n"); ;}
    break;

  case 446:
#line 1019 "grammar.y"
    { printf("forced_value_expression (0)\n"); ;}
    break;

  case 447:
#line 1023 "grammar.y"
    { printf("optional_chaining_expression (0)\n"); ;}
    break;

  case 448:
#line 1030 "grammar.y"
    { printf("identifier_list (0)\n"); ;}
    break;

  case 449:
#line 1031 "grammar.y"
    { printf("identifier_list (1)\n"); ;}
    break;

  case 480:
#line 1055 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 481:
#line 1056 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 482:
#line 1057 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 483:
#line 1058 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 484:
#line 1059 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 485:
#line 1060 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 486:
#line 1061 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 487:
#line 1062 "grammar.y"
    {((*yyvalp).str) = (((yyGLRStackItem const *)yyvsp)[YYFILL ((2) - (2))].yystate.yysemantics.yysval.str);}
    break;

  case 488:
#line 1069 "grammar.y"
    { printf("type (0)\n"); ;}
    break;

  case 489:
#line 1070 "grammar.y"
    { printf("type (1)\n"); ;}
    break;

  case 490:
#line 1071 "grammar.y"
    { printf("type (2)\n"); ;}
    break;

  case 491:
#line 1072 "grammar.y"
    { printf("type (3)\n"); ;}
    break;

  case 492:
#line 1073 "grammar.y"
    { printf("type (4)\n"); ;}
    break;

  case 493:
#line 1074 "grammar.y"
    { printf("type (5)\n"); ;}
    break;

  case 494:
#line 1075 "grammar.y"
    { printf("type (6)\n"); ;}
    break;

  case 495:
#line 1076 "grammar.y"
    { printf("type (7)\n"); ;}
    break;

  case 496:
#line 1080 "grammar.y"
    { printf("type_annotation (0)\n"); ;}
    break;

  case 497:
#line 1084 "grammar.y"
    { printf("type_identifier (0)\n"); ;}
    break;

  case 498:
#line 1085 "grammar.y"
    { printf("type_identifier (1)\n"); ;}
    break;

  case 499:
#line 1086 "grammar.y"
    { printf("type_name (0)\n"); ;}
    break;

  case 500:
#line 1090 "grammar.y"
    { printf("tuple_type (0)\n"); ;}
    break;

  case 502:
#line 1091 "grammar.y"
    { printf("tuple_type_body_opt\n"); ;}
    break;

  case 503:
#line 1092 "grammar.y"
    { printf("tuple_type_body (0)\n"); ;}
    break;

  case 504:
#line 1093 "grammar.y"
    { printf("tuple_type_element_list (0)\n"); ;}
    break;

  case 505:
#line 1094 "grammar.y"
    { printf("tuple_type_element_list (1)\n"); ;}
    break;

  case 506:
#line 1095 "grammar.y"
    { printf("tuple_type_element (0)\n"); ;}
    break;

  case 507:
#line 1096 "grammar.y"
    { printf("tuple_type_element (1)\n"); ;}
    break;

  case 508:
#line 1097 "grammar.y"
    { printf("element_name (0)\n"); ;}
    break;

  case 509:
#line 1101 "grammar.y"
    { printf("function_type (0)\n"); ;}
    break;

  case 510:
#line 1105 "grammar.y"
    { printf("array_type (0)\n"); ;}
    break;

  case 511:
#line 1106 "grammar.y"
    { printf("array_type (1)\n"); ;}
    break;

  case 512:
#line 1110 "grammar.y"
    { printf("optional_type (0)\n"); ;}
    break;

  case 513:
#line 1114 "grammar.y"
    { printf("implicitly_unwrapped_optional_type (0)\n"); ;}
    break;

  case 514:
#line 1118 "grammar.y"
    { printf("protocol_composition_type (0)\n"); ;}
    break;

  case 516:
#line 1119 "grammar.y"
    { printf("protocol_identifier_list_opt\n"); ;}
    break;

  case 517:
#line 1120 "grammar.y"
    { printf("protocol_identifier_list (0)\n"); ;}
    break;

  case 518:
#line 1121 "grammar.y"
    { printf("protocol_identifier_list (1)\n"); ;}
    break;

  case 519:
#line 1122 "grammar.y"
    { printf("protocol_identifier (0)\n"); ;}
    break;

  case 520:
#line 1126 "grammar.y"
    { printf("metatype_type (0)\n"); ;}
    break;

  case 521:
#line 1127 "grammar.y"
    { printf("metatype_type (1)\n"); ;}
    break;

  case 522:
#line 1131 "grammar.y"
    { printf("type_inheritance_clause (0)\n"); ;}
    break;

  case 523:
#line 1132 "grammar.y"
    { printf("type_inheritance_list (0)\n"); ;}
    break;

  case 524:
#line 1133 "grammar.y"
    { printf("type_inheritance_list (1)\n"); ;}
    break;


/* Line 930 of glr.c.  */
#line 4626 "grammar.mm"
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


#line 1135 "grammar.y"


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
    ASTNode* bridge_yyparse(Lexer * instance) {
        lexer = instance;
        yyparse();
        return ast;
    }
}

