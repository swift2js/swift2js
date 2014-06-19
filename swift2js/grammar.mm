/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

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
     VERTICAL_BAR = 72,
     CARET = 73,
     TILDE = 74,
     DOT = 75,
     LPAR = 76,
     RPAR = 77,
     LBRACKET = 78,
     RBRACKET = 79,
     LBRACE = 80,
     RBRACE = 81,
     COMMA = 82,
     COLON = 83,
     SEMICOLON = 84,
     AT = 85,
     UNDERSCORE = 86,
     HASH = 87,
     DOLLAR = 88,
     QUESTION = 89
   };
#endif
/* Tokens.  */
#define identifier 1
#define CLASS 2
#define DEINIT 3
#define ENUM 4
#define EXTENSION 5
#define FUNC 6
#define IMPORT 7
#define INIT 8
#define LET 9
#define PROTOCOL 10
#define STATIC 11
#define STRUCT 12
#define SUBSCRIPT 13
#define TYPEALIAS 14
#define VAR 15
#define BREAK 16
#define CASE 17
#define CONTINUE 18
#define DEFAULT 19
#define DO 20
#define ELSE 21
#define FALLTHROUGH 22
#define IF 23
#define IN 24
#define FOR 25
#define RETURN 26
#define SWITCH 27
#define WHERE 28
#define WHILE 29
#define AS 30
#define DYNAMICTYPE 31
#define IS 32
#define NEW 33
#define SUPER 34
#define SELF 35
#define SELF_CLASS 36
#define TYPE 37
#define ASSOCIATIVITY 38
#define DIDSET 39
#define GET 40
#define INFIX 41
#define INOUT 42
#define LEFT 43
#define MUTATING 44
#define NONE 45
#define NONMUTATING 46
#define OPERATOR 47
#define OVERRIDE 48
#define POSTFIX 49
#define PRECEDENCE 50
#define PREFIX 51
#define RIGHT 52
#define SET 53
#define UNOWNED 54
#define UNOWNED_SAFE 55
#define UNOWNED_UNSAFE 56
#define WEAK 57
#define WILLSET 58
#define NUMBER_LITERAL 59
#define STRING_LITERAL 60
#define BOOLEAN_LITERAL 61
#define SLASH 62
#define EQUAL 63
#define MINUS 64
#define PLUS 65
#define EXCLAMATION 66
#define ASTERISK 67
#define PERCENT 68
#define LT 69
#define GT 70
#define AMPERSAND 71
#define VERTICAL_BAR 72
#define CARET 73
#define TILDE 74
#define DOT 75
#define LPAR 76
#define RPAR 77
#define LBRACKET 78
#define RBRACKET 79
#define LBRACE 80
#define RBRACE 81
#define COMMA 82
#define COLON 83
#define SEMICOLON 84
#define AT 85
#define UNDERSCORE 86
#define HASH 87
#define DOLLAR 88
#define QUESTION 89




/* Copy the first part of user declarations.  */
#line 2 "grammar.y"

    #include <iostream>
    #import "swift2js-Swift.h"
    void yyerror (const char *error);
    int  yylex ();


/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 9 "grammar.y"
{
    int       val;  /* For the lexical analyser. NUMBER tokens */
    char *    str;  /* For the lexical analyser. IDENT tokens */
}
/* Line 193 of yacc.c.  */
#line 290 "grammar.mm"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */


/* Line 216 of yacc.c.  */
#line 303 "grammar.mm"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

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

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  128
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1798

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  102
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  275
/* YYNRULES -- Number of rules.  */
#define YYNRULES  509
/* YYNRULES -- Number of states.  */
#define YYNSTATES  787

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   267

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
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
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,    92,    93,
      94,    95,    96,    97,    98,    99,   100,   101
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     6,     7,     9,    12,    15,    18,    20,
      23,    26,    27,    29,    31,    33,    35,    37,    45,    46,
      48,    49,    51,    61,    63,    65,    71,    75,    77,    79,
      84,    86,    88,    93,    94,    96,    98,   100,   103,   106,
     112,   113,   115,   118,   121,   124,   127,   130,   134,   137,
     138,   140,   145,   148,   151,   153,   156,   159,   162,   164,
     166,   168,   170,   172,   175,   176,   178,   181,   183,   186,
     191,   192,   194,   196,   200,   202,   206,   210,   213,   215,
     219,   221,   223,   227,   231,   235,   239,   241,   245,   247,
     249,   251,   253,   255,   257,   259,   261,   263,   265,   267,
     269,   271,   273,   275,   278,   279,   281,   284,   285,   287,
     289,   291,   293,   295,   297,   299,   301,   303,   305,   309,
     314,   315,   317,   318,   320,   322,   324,   326,   328,   330,
     332,   334,   336,   340,   342,   344,   349,   351,   355,   358,
     359,   361,   364,   367,   372,   377,   382,   388,   392,   394,
     399,   400,   402,   407,   411,   416,   417,   419,   423,   428,
     429,   431,   436,   439,   442,   447,   448,   450,   455,   460,
     465,   468,   471,   473,   476,   482,   483,   485,   489,   491,
     493,   496,   497,   499,   503,   505,   508,   509,   511,   514,
     519,   520,   522,   524,   528,   536,   537,   539,   540,   542,
     543,   545,   546,   548,   549,   551,   559,   562,   564,   566,
     568,   570,   573,   576,   579,   585,   586,   588,   591,   593,
     595,   599,   601,   605,   608,   609,   611,   613,   615,   623,
     624,   626,   629,   631,   633,   637,   639,   643,   646,   647,
     649,   652,   659,   660,   662,   664,   668,   675,   677,   681,
     687,   689,   693,   694,   696,   698,   700,   702,   704,   706,
     709,   714,   719,   723,   727,   731,   732,   734,   739,   743,
     744,   746,   748,   752,   757,   761,   765,   769,   773,   777,
     781,   783,   785,   787,   793,   799,   806,   807,   809,   812,
     813,   815,   816,   818,   821,   822,   825,   827,   829,   831,
     834,   835,   837,   840,   842,   845,   847,   849,   851,   853,
     855,   858,   861,   865,   866,   868,   870,   874,   876,   881,
     882,   884,   885,   887,   889,   891,   894,   898,   900,   904,
     905,   907,   909,   913,   914,   916,   919,   922,   926,   930,
     934,   935,   936,   939,   940,   942,   944,   948,   951,   952,
     954,   956,   959,   962,   965,   968,   970,   973,   975,   979,
     982,   986,   987,   989,   992,   993,   995,   997,   999,  1001,
    1003,  1005,  1007,  1009,  1011,  1013,  1015,  1017,  1019,  1021,
    1023,  1027,  1028,  1030,  1033,  1034,  1036,  1040,  1042,  1046,
    1050,  1053,  1057,  1061,  1063,  1067,  1072,  1076,  1078,  1080,
    1082,  1086,  1091,  1095,  1100,  1101,  1103,  1107,  1111,  1116,
    1121,  1124,  1129,  1131,  1133,  1135,  1137,  1140,  1144,  1145,
    1147,  1149,  1153,  1155,  1159,  1161,  1163,  1166,  1168,  1170,
    1172,  1174,  1176,  1178,  1180,  1182,  1185,  1189,  1190,  1192,
    1194,  1198,  1202,  1207,  1211,  1215,  1220,  1223,  1226,  1228,
    1232,  1234,  1236,  1238,  1241,  1242,  1244,  1246,  1248,  1250,
    1252,  1254,  1256,  1258,  1260,  1262,  1264,  1266,  1268,  1270,
    1272,  1274,  1276,  1278,  1280,  1282,  1284,  1286,  1288,  1290,
    1292,  1294,  1298,  1301,  1306,  1308,  1312,  1313,  1315,  1318,
    1320,  1324,  1328,  1332,  1334,  1338,  1342,  1346,  1349,  1352,
    1357,  1358,  1360,  1362,  1366,  1368,  1372,  1376,  1379,  1381
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     103,     0,    -1,   298,   104,    -1,    -1,    86,    -1,   152,
     104,    -1,   107,   104,    -1,   116,   104,    -1,   131,    -1,
     134,   104,    -1,   103,   106,    -1,    -1,   105,    -1,   108,
      -1,   112,    -1,   113,    -1,   115,    -1,    27,   109,    86,
     110,    86,   110,   158,    -1,    -1,   111,    -1,    -1,   298,
      -1,    27,    78,   109,    86,   110,    86,   110,    79,   158,
      -1,   170,    -1,   300,    -1,    27,   274,    26,   298,   158,
      -1,    31,   114,   158,    -1,   298,    -1,   152,    -1,    22,
     158,    31,   114,    -1,   117,    -1,   121,    -1,    25,   119,
     158,   118,    -1,    -1,   120,    -1,   298,    -1,   152,    -1,
      23,   158,    -1,    23,   117,    -1,    29,   298,    82,   122,
      83,    -1,    -1,   123,    -1,   124,   122,    -1,   125,   105,
      -1,   128,   105,    -1,   125,    86,    -1,   128,    86,    -1,
      19,   126,    85,    -1,   274,   127,    -1,    -1,   129,    -1,
     274,   127,    84,   126,    -1,    21,    85,    -1,    30,   130,
      -1,   298,    -1,   132,   107,    -1,   132,   121,    -1,   133,
      85,    -1,     3,    -1,   135,    -1,   137,    -1,   138,    -1,
     139,    -1,    18,   136,    -1,    -1,   133,    -1,    20,   136,
      -1,    24,    -1,    28,   110,    -1,    71,   142,   141,    72,
      -1,    -1,   144,    -1,   143,    -1,   143,    84,   142,    -1,
     359,    -1,   359,    85,   358,    -1,   359,    85,   370,    -1,
      30,   145,    -1,   146,    -1,   146,    84,   145,    -1,   147,
      -1,   148,    -1,   358,    85,   358,    -1,   358,    85,   370,
      -1,   358,    92,   358,    -1,    71,   150,    72,    -1,   151,
      -1,   151,    84,   150,    -1,   356,    -1,   159,    -1,   165,
      -1,   170,    -1,   187,    -1,   191,    -1,   213,    -1,   233,
      -1,   237,    -1,   240,    -1,   252,    -1,   256,    -1,   257,
      -1,   259,    -1,   262,    -1,   152,   154,    -1,    -1,   153,
      -1,   157,   156,    -1,    -1,   155,    -1,     4,    -1,    46,
      -1,    48,    -1,    50,    -1,    13,    -1,    56,    -1,    57,
      -1,    58,    -1,    59,    -1,    82,   106,    83,    -1,   160,
       9,   161,   163,    -1,    -1,   295,    -1,    -1,   162,    -1,
      16,    -1,    14,    -1,     4,    -1,     6,    -1,    12,    -1,
      17,    -1,     8,    -1,   164,    -1,   164,    77,   163,    -1,
       3,    -1,   350,    -1,   160,   156,    11,   166,    -1,   167,
      -1,   167,    84,   166,    -1,   274,   168,    -1,    -1,   169,
      -1,    65,   298,    -1,   171,   166,    -1,   171,   172,   357,
     158,    -1,   171,   172,   357,   173,    -1,   171,   172,   357,
     179,    -1,   171,   172,   357,   168,   183,    -1,   160,   156,
      17,    -1,     3,    -1,    82,   175,   174,    83,    -1,    -1,
     176,    -1,    82,   176,   175,    83,    -1,   160,    42,   158,
      -1,   160,    55,   177,   158,    -1,    -1,   178,    -1,    78,
       3,    79,    -1,    82,   181,   180,    83,    -1,    -1,   182,
      -1,    82,   182,   181,    83,    -1,   160,    42,    -1,   160,
      55,    -1,    82,   185,   184,    83,    -1,    -1,   186,    -1,
      82,   186,   185,    83,    -1,   160,    60,   177,   158,    -1,
     160,    41,   177,   158,    -1,   188,   190,    -1,    16,   189,
      -1,     3,    -1,    65,   356,    -1,   193,   194,   192,   195,
     198,    -1,    -1,   140,    -1,   160,   156,     8,    -1,     3,
      -1,   350,    -1,   199,   196,    -1,    -1,   197,    -1,    93,
     160,   356,    -1,   158,    -1,   201,   200,    -1,    -1,   199,
      -1,    78,    79,    -1,    78,   203,   202,    79,    -1,    -1,
      94,    -1,   204,    -1,   204,    84,   203,    -1,   205,   206,
     207,   210,   208,   357,   209,    -1,    -1,    44,    -1,    -1,
      11,    -1,    -1,    89,    -1,    -1,   211,    -1,    -1,   212,
      -1,   205,    17,   207,   210,   208,   357,   209,    -1,   160,
     356,    -1,     3,    -1,    88,    -1,     3,    -1,    88,    -1,
      65,   298,    -1,   160,   214,    -1,   160,   224,    -1,   222,
     192,    82,   215,    83,    -1,    -1,   216,    -1,   217,   215,
      -1,   152,    -1,   218,    -1,   160,    19,   219,    -1,   220,
      -1,   220,    84,   219,    -1,   223,   221,    -1,    -1,   360,
      -1,     3,    -1,     3,    -1,   222,   192,    85,   358,    82,
     225,    83,    -1,    -1,   226,    -1,   227,   225,    -1,   152,
      -1,   228,    -1,   160,    19,   229,    -1,   230,    -1,   230,
      84,   229,    -1,   223,   231,    -1,    -1,   232,    -1,    65,
     349,    -1,   160,    14,   235,   192,   234,   236,    -1,    -1,
     375,    -1,     3,    -1,    82,   154,    83,    -1,   160,     4,
     238,   192,   234,   239,    -1,     3,    -1,    82,   154,    83,
      -1,   160,    12,   241,   234,   242,    -1,     3,    -1,    82,
     243,    83,    -1,    -1,   245,    -1,   246,    -1,   247,    -1,
     248,    -1,   249,    -1,   250,    -1,   244,   243,    -1,   171,
     172,   357,   179,    -1,   193,   194,   192,   195,    -1,   253,
     192,   201,    -1,   260,   261,   179,    -1,   188,   234,   251,
      -1,    -1,   190,    -1,   253,   192,   201,   255,    -1,   160,
     254,    10,    -1,    -1,    95,    -1,   158,    -1,   160,     5,
     158,    -1,     7,   358,   234,   258,    -1,    82,   154,    83,
      -1,   260,   261,   158,    -1,   260,   261,   173,    -1,   260,
     261,   179,    -1,   160,    15,   201,    -1,    93,   160,   356,
      -1,   263,    -1,   264,    -1,   265,    -1,    49,    53,   350,
      82,    83,    -1,    49,    51,   350,    82,    83,    -1,    49,
      43,   350,    82,   266,    83,    -1,    -1,   267,    -1,   268,
     269,    -1,    -1,   270,    -1,    -1,   272,    -1,    52,   271,
      -1,    -1,    40,   273,    -1,    45,    -1,    54,    -1,    47,
      -1,   276,   275,    -1,    -1,   357,    -1,   277,   275,    -1,
     278,    -1,   279,   275,    -1,   283,    -1,   286,    -1,   289,
      -1,    88,    -1,     3,    -1,    17,   274,    -1,    11,   274,
      -1,    78,   280,    79,    -1,    -1,   281,    -1,   282,    -1,
     282,    84,   281,    -1,   274,    -1,   284,    77,   223,   285,
      -1,    -1,   358,    -1,    -1,   279,    -1,   287,    -1,   288,
      -1,    34,   356,    -1,   274,    32,   356,    -1,   298,    -1,
      87,   292,   291,    -1,    -1,   293,    -1,     3,    -1,    78,
     294,    79,    -1,    -1,   296,    -1,   290,   160,    -1,   297,
     294,    -1,    78,   294,    79,    -1,    80,   294,    81,    -1,
      82,   294,    83,    -1,    -1,    -1,   301,   299,    -1,    -1,
     305,    -1,   298,    -1,   298,    84,   300,    -1,   302,   337,
      -1,    -1,   354,    -1,   303,    -1,    73,     3,    -1,   353,
     301,    -1,   306,   301,    -1,   307,   301,    -1,   308,    -1,
     304,   299,    -1,    65,    -1,    91,   298,    85,    -1,    34,
     356,    -1,    32,   309,   356,    -1,    -1,    91,    -1,     3,
     311,    -1,    -1,   149,    -1,   312,    -1,   321,    -1,   322,
      -1,   326,    -1,   332,    -1,   331,    -1,   336,    -1,   349,
      -1,   313,    -1,   318,    -1,    96,    -1,    97,    -1,    98,
      -1,    99,    -1,    80,   314,    81,    -1,    -1,   315,    -1,
     317,   316,    -1,    -1,    84,    -1,   317,    84,   315,    -1,
     298,    -1,    80,   319,    81,    -1,    80,    85,    81,    -1,
     320,   316,    -1,   320,    84,   319,    -1,   298,    85,   298,
      -1,    37,    -1,    37,    77,     3,    -1,    37,    80,   298,
      81,    -1,    37,    77,    10,    -1,   323,    -1,   324,    -1,
     325,    -1,    36,    77,     3,    -1,    36,    80,   298,    81,
      -1,    36,    77,    10,    -1,    82,   327,   105,    83,    -1,
      -1,   328,    -1,   201,   196,    26,    -1,   348,   196,    26,
      -1,   329,   201,   196,    26,    -1,   329,   348,   196,    26,
      -1,   329,    26,    -1,    80,   330,   298,    81,    -1,    59,
      -1,    56,    -1,    57,    -1,    58,    -1,    77,     3,    -1,
      78,   333,    79,    -1,    -1,   334,    -1,   335,    -1,   335,
      84,   334,    -1,   298,    -1,     3,    85,   298,    -1,    88,
      -1,   310,    -1,   337,   355,    -1,   338,    -1,   341,    -1,
     342,    -1,   343,    -1,   344,    -1,   345,    -1,   346,    -1,
     347,    -1,   337,   332,    -1,   337,   339,   340,    -1,    -1,
     332,    -1,   326,    -1,   337,    77,    10,    -1,   337,    77,
      61,    -1,   337,    77,     3,   311,    -1,   337,    77,    37,
      -1,   337,    77,   100,    -1,   337,    80,   300,    81,    -1,
     337,    68,    -1,   337,    91,    -1,     3,    -1,     3,    84,
     348,    -1,    61,    -1,    62,    -1,    63,    -1,   352,   351,
      -1,    -1,   350,    -1,    64,    -1,    65,    -1,    66,    -1,
      67,    -1,    68,    -1,    69,    -1,    70,    -1,    71,    -1,
      72,    -1,    73,    -1,    74,    -1,    75,    -1,    76,    -1,
      77,    -1,   350,    -1,   350,    -1,   350,    -1,   367,    -1,
     366,    -1,   358,    -1,   360,    -1,   368,    -1,   369,    -1,
     370,    -1,   374,    -1,    85,   160,   356,    -1,   359,   311,
      -1,   359,   311,    77,   358,    -1,     3,    -1,    78,   361,
      79,    -1,    -1,   362,    -1,   363,   202,    -1,   364,    -1,
     364,    84,   363,    -1,   160,   205,   356,    -1,   205,   365,
     357,    -1,     3,    -1,   356,    93,   356,    -1,   356,    80,
      81,    -1,   367,    80,    81,    -1,   356,    91,    -1,   356,
      68,    -1,    12,    71,   371,    72,    -1,    -1,   372,    -1,
     373,    -1,   373,    84,   372,    -1,   358,    -1,   356,    77,
      39,    -1,   356,    77,   101,    -1,    85,   376,    -1,   358,
      -1,   358,    84,   376,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   111,   111,   112,   112,   113,   114,   115,   116,   117,
     118,   119,   119,   123,   124,   125,   126,   130,   131,   131,
     132,   132,   133,   134,   135,   139,   143,   144,   145,   149,
     153,   154,   158,   159,   159,   160,   161,   162,   163,   167,
     168,   168,   169,   170,   171,   172,   173,   174,   175,   176,
     176,   177,   178,   179,   180,   184,   185,   186,   187,   191,
     192,   193,   194,   198,   199,   199,   203,   207,   211,   218,
     219,   219,   220,   221,   222,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   236,   237,   238,   239,   246,
     247,   248,   249,   250,   251,   252,   253,   254,   255,   256,
     257,   258,   259,   260,   261,   261,   262,   263,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   280,   284,
     285,   285,   286,   286,   287,   288,   289,   290,   291,   292,
     293,   294,   295,   296,   297,   301,   302,   303,   304,   305,
     305,   306,   310,   311,   312,   313,   314,   315,   316,   317,
     318,   318,   319,   320,   321,   322,   322,   323,   324,   325,
     325,   326,   327,   328,   329,   330,   330,   331,   332,   333,
     337,   338,   339,   340,   344,   345,   345,   346,   347,   348,
     349,   350,   350,   351,   352,   353,   354,   354,   355,   356,
     357,   357,   358,   359,   360,   361,   361,   362,   362,   363,
     363,   364,   364,   365,   365,   366,   367,   368,   369,   370,
     371,   372,   376,   377,   378,   379,   379,   380,   381,   382,
     383,   384,   385,   386,   387,   387,   388,   389,   390,   391,
     391,   392,   393,   394,   395,   396,   397,   398,   399,   399,
     400,   404,   405,   405,   406,   407,   411,   412,   413,   417,
     418,   419,   420,   420,   421,   422,   423,   424,   425,   426,
     430,   434,   438,   442,   446,   447,   447,   451,   452,   453,
     453,   454,   458,   462,   463,   467,   468,   469,   470,   471,
     475,   476,   477,   478,   479,   480,   481,   481,   482,   483,
     483,   484,   484,   485,   486,   487,   488,   489,   490,   497,
     498,   498,   499,   500,   501,   502,   503,   504,   508,   512,
     516,   517,   521,   522,   522,   523,   524,   525,   529,   530,
     530,   531,   531,   535,   536,   537,   538,   542,   549,   550,
     550,   551,   552,   553,   553,   554,   555,   556,   557,   558,
     559,   560,   567,   568,   568,   569,   570,   574,   575,   575,
     576,   577,   581,   582,   583,   584,   585,   589,   593,   597,
     598,   599,   599,   603,   604,   604,   605,   606,   607,   608,
     609,   610,   611,   615,   616,   617,   618,   619,   620,   621,
     622,   623,   623,   624,   625,   625,   626,   627,   628,   629,
     630,   631,   632,   636,   637,   638,   639,   643,   644,   645,
     646,   647,   648,   652,   653,   653,   654,   655,   656,   657,
     658,   659,   660,   661,   662,   663,   667,   671,   672,   672,
     673,   674,   675,   676,   680,   684,   685,   686,   687,   688,
     689,   690,   691,   692,   693,   697,   698,   699,   699,   700,
     704,   708,   709,   713,   717,   721,   725,   729,   737,   738,
     739,   740,   741,   745,   746,   746,   747,   748,   749,   750,
     751,   752,   753,   754,   755,   756,   757,   758,   759,   760,
     761,   762,   763,   770,   771,   772,   773,   774,   775,   776,
     777,   781,   785,   786,   787,   791,   792,   792,   793,   794,
     795,   796,   797,   798,   802,   806,   807,   811,   815,   819,
     820,   820,   821,   822,   823,   827,   828,   832,   833,   834
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
  "\".\"", "\"(\"", "\")\"", "\"[\"", "\"]\"", "\"{\"", "\"}\"", "\",\"",
  "\":\"", "\";\"", "\"@\"", "\"_\"", "\"#\"", "\"$\"", "\"?\"", "\"==\"",
  "\"_>\"", "\"...\"", "\"convenience\"", "\"__FILE__\"", "\"__LINE__\"",
  "\"__COLUMN__\"", "\"__FUNCTION__\"", "\"dynamicType\"", "\"Protocol\"",
  "$accept", "statement", "semicolon_opt", "statements", "statements_opt",
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
  "operator_opt", "operator_character", "binary_operator",
  "prefix_operator", "postfix_operator", "type", "type_annotation",
  "type_identifier", "type_name", "tuple_type", "tuple_type_body_opt",
  "tuple_type_body", "tuple_type_element_list", "tuple_type_element",
  "element_name", "function_type", "array_type", "optional_type",
  "implicitly_unwrapped_optional_type", "protocol_composition_type",
  "protocol_identifier_list_opt", "protocol_identifier_list",
  "protocol_identifier", "metatype_type", "type_inheritance_clause",
  "type_inheritance_list", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,     1,     2,     3,     4,     5,     6,     7,
       8,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    49,    50,    51,    52,    53,    54,    55,    56,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    80,    81,    82,    83,    84,    85,    86,    87,
      88,    89,   258,   259,   260,   261,   262,   263,   264,   265,
     266,   267
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   102,   103,   104,   104,   103,   103,   103,   103,   103,
     105,   106,   106,   107,   107,   107,   107,   108,   109,   109,
     110,   110,   108,   111,   111,   112,   113,   114,   114,   115,
     116,   116,   117,   118,   118,   119,   119,   120,   120,   121,
     122,   122,   123,   124,   124,   124,   124,   125,   126,   127,
     127,   127,   128,   129,   130,   131,   131,   132,   133,   134,
     134,   134,   134,   135,   136,   136,   137,   138,   139,   140,
     141,   141,   142,   142,   143,   143,   143,   144,   145,   145,
     146,   146,   147,   147,   148,   149,   150,   150,   151,   152,
     152,   152,   152,   152,   152,   152,   152,   152,   152,   152,
     152,   152,   152,   153,   154,   154,   155,   156,   156,   157,
     157,   157,   157,   157,   157,   157,   157,   157,   158,   159,
     160,   160,   161,   161,   162,   162,   162,   162,   162,   162,
     162,   163,   163,   164,   164,   165,   166,   166,   167,   168,
     168,   169,   170,   170,   170,   170,   170,   171,   172,   173,
     174,   174,   173,   175,   176,   177,   177,   178,   179,   180,
     180,   179,   181,   182,   183,   184,   184,   183,   185,   186,
     187,   188,   189,   190,   191,   192,   192,   193,   194,   194,
     195,   196,   196,   197,   198,   199,   200,   200,   201,   201,
     202,   202,   203,   203,   204,   205,   205,   206,   206,   207,
     207,   208,   208,   209,   209,   204,   204,   210,   210,   211,
     211,   212,   213,   213,   214,   215,   215,   216,   217,   217,
     218,   219,   219,   220,   221,   221,   222,   223,   224,   225,
     225,   226,   227,   227,   228,   229,   229,   230,   231,   231,
     232,   233,   234,   234,   235,   236,   237,   238,   239,   240,
     241,   242,   243,   243,   244,   244,   244,   244,   244,   245,
     246,   247,   248,   249,   250,   251,   251,   252,   253,   254,
     254,   255,   256,   257,   258,   259,   259,   259,   260,   261,
     262,   262,   262,   263,   264,   265,   266,   266,   267,   268,
     268,   269,   269,   270,   271,   272,   273,   273,   273,   274,
     275,   275,   274,   274,   274,   274,   274,   274,   276,   277,
     278,   278,   279,   280,   280,   281,   281,   282,   283,   284,
     284,   285,   285,   286,   286,   287,   288,   289,   290,   291,
     291,   292,   293,   294,   294,   295,   296,   297,   297,   297,
     297,   297,   298,   299,   299,   300,   300,   301,   302,   302,
     301,   303,   304,   304,   304,   304,   305,   306,   307,   308,
     308,   309,   309,   310,   311,   311,   310,   310,   310,   310,
     310,   310,   310,   312,   312,   312,   312,   312,   312,   312,
     313,   314,   314,   315,   316,   316,   316,   317,   318,   318,
     319,   319,   320,   321,   321,   321,   321,   322,   322,   322,
     323,   324,   325,   326,   327,   327,   328,   328,   328,   328,
     328,   329,   330,   330,   330,   330,   331,   332,   333,   333,
     334,   334,   335,   335,   336,   337,   337,   337,   337,   337,
     337,   337,   337,   337,   337,   338,   338,   339,   339,   340,
     341,   342,   342,   343,   344,   345,   346,   347,   348,   348,
     349,   349,   349,   350,   351,   351,   352,   352,   352,   352,
     352,   352,   352,   352,   352,   352,   352,   352,   352,   352,
     353,   354,   355,   356,   356,   356,   356,   356,   356,   356,
     356,   357,   358,   358,   359,   360,   361,   361,   362,   363,
     363,   364,   364,   365,   366,   367,   367,   368,   369,   370,
     371,   371,   372,   372,   373,   374,   374,   375,   376,   376
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     2,     0,     1,     2,     2,     2,     1,     2,
       2,     0,     1,     1,     1,     1,     1,     7,     0,     1,
       0,     1,     9,     1,     1,     5,     3,     1,     1,     4,
       1,     1,     4,     0,     1,     1,     1,     2,     2,     5,
       0,     1,     2,     2,     2,     2,     2,     3,     2,     0,
       1,     4,     2,     2,     1,     2,     2,     2,     1,     1,
       1,     1,     1,     2,     0,     1,     2,     1,     2,     4,
       0,     1,     1,     3,     1,     3,     3,     2,     1,     3,
       1,     1,     3,     3,     3,     3,     1,     3,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     2,     0,     1,     2,     0,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     4,
       0,     1,     0,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     1,     4,     1,     3,     2,     0,
       1,     2,     2,     4,     4,     4,     5,     3,     1,     4,
       0,     1,     4,     3,     4,     0,     1,     3,     4,     0,
       1,     4,     2,     2,     4,     0,     1,     4,     4,     4,
       2,     2,     1,     2,     5,     0,     1,     3,     1,     1,
       2,     0,     1,     3,     1,     2,     0,     1,     2,     4,
       0,     1,     1,     3,     7,     0,     1,     0,     1,     0,
       1,     0,     1,     0,     1,     7,     2,     1,     1,     1,
       1,     2,     2,     2,     5,     0,     1,     2,     1,     1,
       3,     1,     3,     2,     0,     1,     1,     1,     7,     0,
       1,     2,     1,     1,     3,     1,     3,     2,     0,     1,
       2,     6,     0,     1,     1,     3,     6,     1,     3,     5,
       1,     3,     0,     1,     1,     1,     1,     1,     1,     2,
       4,     4,     3,     3,     3,     0,     1,     4,     3,     0,
       1,     1,     3,     4,     3,     3,     3,     3,     3,     3,
       1,     1,     1,     5,     5,     6,     0,     1,     2,     0,
       1,     0,     1,     2,     0,     2,     1,     1,     1,     2,
       0,     1,     2,     1,     2,     1,     1,     1,     1,     1,
       2,     2,     3,     0,     1,     1,     3,     1,     4,     0,
       1,     0,     1,     1,     1,     2,     3,     1,     3,     0,
       1,     1,     3,     0,     1,     2,     2,     3,     3,     3,
       0,     0,     2,     0,     1,     1,     3,     2,     0,     1,
       1,     2,     2,     2,     2,     1,     2,     1,     3,     2,
       3,     0,     1,     2,     0,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     0,     1,     2,     0,     1,     3,     1,     3,     3,
       2,     3,     3,     1,     3,     4,     3,     1,     1,     1,
       3,     4,     3,     4,     0,     1,     3,     3,     4,     4,
       2,     4,     1,     1,     1,     1,     2,     3,     0,     1,
       1,     3,     1,     3,     1,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     2,     3,     0,     1,     1,
       3,     3,     4,     3,     3,     4,     2,     2,     1,     3,
       1,     1,     1,     2,     0,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     3,     2,     4,     1,     3,     0,     1,     2,     1,
       3,     3,     3,     1,     3,     3,     3,     2,     2,     4,
       0,     1,     1,     3,     1,     3,     3,     2,     1,     3
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
     120,    58,     0,     0,    64,    64,     0,    67,   120,   348,
      20,   348,   120,     0,   456,   457,   458,   459,   460,   461,
     462,   463,   464,   465,   466,   467,   468,   469,     0,     0,
       3,    13,    14,    15,    16,     3,    30,    31,     8,     0,
       0,     3,    59,    60,    61,    62,     3,    89,   107,    90,
      91,   348,    92,     0,    93,     0,    94,    95,    96,    97,
      98,   175,    99,   100,   101,     0,   102,   280,   281,   282,
     120,   121,     3,   343,     0,   350,   471,   454,   349,   484,
     242,   364,   172,   171,    65,    63,    66,   120,     0,     0,
      36,    35,   309,   348,   348,     0,   348,   308,     0,    19,
     107,    23,     0,   300,   300,   303,   300,   305,     0,   306,
     323,   324,   307,   327,    24,   320,    68,    21,     0,     0,
      28,    27,     0,     0,     0,   351,   331,   329,     1,     4,
       6,     7,    55,    56,    57,     9,     5,   226,   109,     0,
     122,     0,   113,     0,     0,   110,   111,   112,   114,   115,
     116,   117,   270,   108,     0,   107,   212,   175,   213,     0,
     309,   348,   142,   136,     0,   139,   327,     0,   170,   178,
     465,   175,   179,     0,   176,     0,   120,     0,   335,     2,
     361,     0,   357,   348,   342,   343,   344,   348,   348,   355,
     470,   348,   364,     0,   393,   450,   451,   452,     0,   348,
     348,   404,   424,   376,   377,   378,   379,   425,   366,   374,
     375,   367,   368,   397,   398,   399,   369,   371,   370,   372,
     347,   427,   428,   429,   430,   431,   432,   433,   434,   373,
     455,   453,     0,     0,   243,     0,   365,   482,   120,    12,
       0,   120,    33,   311,   310,     0,   120,   325,   475,   476,
     474,   473,   477,   478,   479,   480,     0,   317,     0,   314,
     315,   348,   109,     0,   348,     0,   120,   299,   301,   302,
     304,     0,   348,    40,    26,     0,     0,     0,   333,   328,
     330,   247,   175,   272,   126,   127,   130,   128,   125,   124,
     129,     0,   123,   250,   242,   244,   175,   195,   278,   177,
     348,   147,   106,     0,   268,   348,     0,   348,   138,   140,
     173,     0,    70,    72,    74,     0,     0,   120,   275,   276,
     277,   362,     0,   359,     0,   356,   353,   354,   352,   363,
       0,   348,     0,   348,   416,     0,   422,     0,   419,   420,
       0,   387,     0,   382,   348,     0,   348,   448,     0,   181,
     120,   405,     0,   181,   446,   469,   348,   447,   435,     0,
     472,   426,   508,   507,   120,   273,     0,    86,    88,     0,
      10,   118,    29,     0,    32,    34,   500,   196,   195,     0,
       0,   487,   190,   489,   498,     0,     0,   497,     0,     0,
     348,   312,   348,     0,     0,   326,     0,   227,   321,   345,
     346,   348,     0,     0,    41,    40,   120,   120,   286,     0,
       0,   333,   333,   333,     0,   334,   333,   242,   133,   119,
     131,   134,     0,   242,   188,     0,   190,   192,   197,   135,
     120,     0,   137,   143,     0,   144,   145,   141,     0,   181,
     186,     0,     0,    71,     0,     0,   271,   267,   279,   107,
     120,   120,   120,   120,   360,   358,   400,   402,     0,   394,
     396,     0,   348,   417,   348,   389,   348,   380,   385,   387,
     383,     0,   388,   348,   390,     0,   413,   414,   415,   412,
     348,   120,     0,   182,     0,   410,   181,   181,     0,   364,
     440,   443,   441,   444,     0,   439,   436,     0,   120,   105,
       0,    85,     0,   483,    38,    37,   504,     0,   501,   502,
       0,   493,     0,   485,   191,   488,   120,   505,   506,   495,
     494,   496,     0,   316,   348,    25,   481,   322,   318,     0,
     348,    52,    39,    42,    45,    43,    46,    44,   294,     0,
     287,   291,   290,   284,   283,     0,     0,     0,   332,   336,
       0,     0,   120,   249,     0,   206,     0,   195,   198,   199,
     199,   218,   107,     0,   216,   120,   219,     0,   120,   146,
     184,   174,   180,   187,   185,    77,    78,    80,    81,     0,
      69,    73,    75,    76,   162,   163,     0,     0,   151,     0,
       0,     0,     0,   160,     0,     0,   401,   395,   423,   421,
     392,   348,     0,   391,   449,     0,     0,   406,   403,     0,
       0,   407,   442,   445,   509,   103,   274,    87,   499,     0,
     491,   492,   490,   348,     0,    47,   348,    48,    50,   348,
     293,   285,     0,   288,   292,   337,   338,   339,   120,   246,
     132,   107,     0,   242,     0,     0,   120,   253,   254,   255,
     256,   257,   258,   175,     0,   120,   241,   189,   193,   200,
       0,     0,     0,   214,   217,   120,     0,   120,   120,     0,
       0,     0,   153,     0,     0,   156,   155,   149,     0,   152,
     163,   158,   162,   161,   386,   411,   183,   408,   409,   503,
       0,    17,    53,    54,     0,   296,   298,   297,   295,     0,
       0,   148,     0,   265,   175,   251,   259,     0,     0,     0,
     207,   208,   201,   201,   220,   221,   224,   232,   107,     0,
     230,   120,   233,   155,   155,     0,     0,   166,     0,     0,
      79,    82,    83,    84,     0,   154,     0,   348,   248,     0,
     266,   264,     0,   262,   120,   263,   245,   209,   210,     0,
     202,     0,     0,   223,   225,     0,   228,   231,     0,     0,
     164,   167,   157,    22,    51,   260,   261,     0,   203,   203,
     222,   238,   234,   235,   169,   168,   348,   205,   204,   194,
       0,   237,   239,     0,   211,   240,   236
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,   238,   130,   239,   240,    30,    31,    98,   116,    99,
      32,    33,   119,    34,    35,    36,   374,    89,   375,    37,
     403,   404,   405,   406,   529,   627,   407,   628,   692,    38,
      39,    40,    41,    42,    85,    43,    44,    45,   174,   442,
     312,   313,   443,   575,   576,   577,   578,   236,   366,   367,
      46,   499,   500,   153,   154,   155,   672,    47,    48,   291,
     292,   419,   420,    49,   162,   163,   308,   309,    50,    51,
     164,   319,   587,   450,   451,   674,   675,   320,   592,   452,
     453,   569,   726,   667,   668,    52,    53,    83,   168,    54,
     175,    55,   171,   438,   482,   483,   571,   439,   574,   440,
     515,   426,   427,   379,   560,   660,   749,   777,   712,   750,
     778,    56,   156,   563,   564,   565,   566,   714,   715,   753,
     157,   716,   158,   719,   720,   721,   722,   772,   773,   781,
     782,    57,   233,   296,   656,    58,   282,   639,    59,   294,
     553,   645,   646,   647,   648,   649,   650,   651,   652,   741,
      60,    61,   159,   447,    62,    63,   365,    64,    65,   177,
      66,    67,    68,    69,   539,   540,   541,   633,   542,   630,
     634,   698,   165,   267,   103,   104,   105,   106,   258,   259,
     260,   107,   108,   528,   109,   110,   111,   112,    70,   279,
     127,   280,   414,    71,   415,   416,   166,   184,   114,    73,
      74,    75,   185,   186,   187,   188,   189,   322,   207,   237,
     208,   209,   342,   343,   470,   344,   210,   345,   346,   211,
     212,   213,   214,   215,   216,   350,   351,   352,   480,   217,
     218,   337,   338,   339,   219,   220,   221,   359,   496,   222,
     223,   224,   225,   226,   227,   228,   353,   229,    76,   231,
      77,   191,    78,   361,   368,   268,   115,    81,   249,   380,
     381,   382,   383,   512,   250,   251,   252,   253,   254,   507,
     508,   509,   255,   234,   363
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -521
static const yytype_int16 yypact[] =
{
     999,  -521,    42,    50,    88,    88,    43,  -521,  1073,  1282,
    1707,  1707,  1073,   123,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,  -521,    96,  -521,  -521,  -521,  -521,   110,   146,
      94,  -521,  -521,  -521,  -521,    94,  -521,  -521,  -521,   224,
     105,    94,  -521,  -521,  -521,  -521,    94,  -521,  1153,  -521,
    -521,  1461,  -521,   140,  -521,   510,  -521,  -521,  -521,  -521,
    -521,   156,  -521,  -521,  -521,   185,  -521,  -521,  -521,  -521,
     145,  -521,    94,  1511,    41,  -521,  -521,  1721,  -521,  -521,
     201,   232,  -521,  -521,  -521,  -521,  -521,   741,   278,    43,
    -521,  -521,  -521,  1486,  1486,    39,  1204,  -521,   227,  -521,
     301,  -521,   176,   235,   235,  -521,   235,  -521,   250,  -521,
    -521,  -521,  -521,   199,  -521,  -521,  -521,  -521,   260,    43,
    -521,  -521,  1721,  1721,  1721,  -521,  -521,   265,  -521,  -521,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,   342,    43,
     276,   345,  -521,   351,   284,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,  -521,  -521,   220,   301,  -521,   156,  -521,   354,
     280,   147,  -521,   283,   235,    14,  -521,    39,  -521,  -521,
    -521,   156,  -521,    42,  -521,   284,   145,   287,  -521,  -521,
     279,    39,  -521,  1707,  -521,  1511,  -521,  1707,  1707,  -521,
    -521,  1707,   232,    98,   127,  -521,  -521,  -521,   370,   538,
    1590,    77,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    1539,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,    42,   292,  -521,    39,  -521,   298,   629,  -521,
     293,  1073,   355,   347,   347,   306,     6,   -10,  -521,  -521,
    -521,   302,  -521,  -521,  -521,  -521,   297,   347,   305,  -521,
     303,  1567,  -521,   368,  1707,    39,   145,  -521,  -521,  -521,
    -521,   383,  1707,   311,  -521,   309,   310,   312,   226,  -521,
    -521,  -521,   156,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  1236,  -521,  -521,   201,  -521,   156,   189,  -521,  -521,
    1486,  -521,  -521,   106,  -521,  1486,    29,  1707,  -521,  -521,
     -10,   284,   363,   313,   314,    43,    39,   741,  -521,  -521,
    -521,  -521,    39,   -10,   316,  -521,  -521,  -521,  -521,  -521,
      85,  1707,   256,  1707,  -521,   317,  -521,   324,  -521,   320,
     328,   325,   330,  -521,  1612,   331,  1633,   329,   282,   321,
     999,  -521,    46,   321,  -521,    28,  1707,  -521,  -521,   333,
    -521,  -521,   336,  -521,    99,  -521,   323,   337,   -10,    42,
    -521,  -521,  -521,    27,  -521,  -521,    42,  -521,   385,   395,
     352,  -521,   338,   346,  -521,    15,   353,  -521,    39,   358,
    1567,  -521,  1486,   349,    43,   -10,    39,  -521,   362,   357,
    -521,  1486,   364,   359,  -521,   311,   827,   913,    16,   365,
     369,   226,   226,   226,   375,  -521,   226,   201,  -521,  -521,
     379,  -521,   376,   201,  -521,    39,   338,   381,   262,  -521,
     187,    42,  -521,  -521,   378,  -521,  -521,  -521,    43,   321,
     284,    42,   402,  -521,    42,    57,  -521,  -521,   -10,   413,
     188,   145,   229,   145,   -10,  -521,  -521,  -521,   386,  -521,
    -521,   398,  1707,  -521,  1440,  -521,  1707,  -521,  -521,  -521,
    -521,   397,  -521,  1673,  -521,   433,  -521,  -521,  -521,  -521,
    1707,   145,   458,  -521,   406,  -521,   321,   321,   464,   232,
    -521,  -521,  -521,  -521,   410,  -521,  -521,    42,    99,  -521,
     411,  -521,    39,  -521,  -521,  -521,  -521,   421,  -521,   412,
      39,  -521,   235,  -521,  -521,  -521,    -1,  -521,  -521,  -521,
     -10,  -521,   409,  -521,  1654,  -521,   -10,  -521,  -521,   415,
    1360,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,   414,
    -521,   463,  -521,  -521,  -521,   419,   423,   422,  -521,  -521,
     425,  1236,    18,  -521,   429,   -10,   436,   165,  -521,   427,
     427,  -521,   473,   434,  -521,   187,  -521,   430,   145,  -521,
    -521,  -521,  -521,  -521,  -521,  -521,   441,  -521,  -521,   177,
    -521,  -521,  -521,  -521,    43,   237,   465,   435,  -521,   484,
     445,   478,   452,  -521,   494,   454,  -521,  -521,  -521,  -521,
    -521,  1707,   325,  -521,  -521,   457,    39,  -521,  -521,   513,
     514,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,    42,
     -10,  -521,  -521,  1691,    43,  -521,  1707,  -521,  -521,  1385,
    -521,  -521,   211,  -521,  -521,  -521,  -521,  -521,    99,  -521,
    -521,   139,   540,   201,   510,   461,    18,  -521,  -521,  -521,
    -521,  -521,  -521,   156,   185,    99,  -521,  -521,  -521,  -521,
      32,    32,   383,  -521,  -521,   238,    22,   239,   145,    42,
      57,    42,  -521,   542,    43,  -521,   471,  -521,    43,  -521,
    -521,  -521,  -521,  -521,  -521,  -521,   -10,  -521,  -521,  -521,
     474,  -521,  -521,  -521,   466,  -521,  -521,  -521,  -521,   472,
     231,  -521,   235,   140,   156,  -521,  -521,   284,   475,   477,
    -521,  -521,    54,    54,  -521,   470,   480,  -521,  1170,   481,
    -521,   238,  -521,   471,   471,   515,   483,  -521,   501,   486,
    -521,  -521,  -521,  -521,   488,  -521,    43,  1486,  -521,   475,
    -521,  -521,   284,  -521,   145,  -521,  -521,  -521,  -521,   235,
    -521,   235,   383,  -521,  -521,   383,  -521,  -521,    43,    43,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,   114,   498,   498,
    -521,   505,  -521,   487,  -521,  -521,  1707,  -521,  -521,  -521,
     100,  -521,  -521,   383,  -521,  -521,  -521
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -521,   572,    20,  -177,   350,   551,  -521,   496,  -243,  -521,
    -521,  -521,   356,  -521,  -521,   221,  -521,  -521,  -521,   554,
     191,  -521,  -521,  -521,  -139,   -30,  -521,  -521,  -521,  -521,
    -521,   319,  -521,  -521,   595,  -521,  -521,  -521,  -521,  -521,
     172,  -521,  -521,   -48,  -521,  -521,  -521,  -521,   118,  -521,
       8,  -521,  -471,  -521,   -93,  -521,    -5,  -521,    -6,  -521,
    -521,    71,  -521,  -521,  -229,  -521,   318,  -521,    31,  -520,
     -17,   322,  -521,   178,   180,  -388,  -521,  -289,  -521,   174,
     182,  -521,  -521,   -33,   -29,  -521,  -515,  -521,   -66,  -521,
    -152,  -513,    -3,  -103,  -327,  -521,  -521,   202,  -521,  -142,
     217,    87,  -521,  -268,  -521,    92,   -58,  -105,     7,  -521,
    -521,  -521,  -521,   102,  -521,  -521,  -521,   -82,  -521,  -521,
    -521,  -256,  -521,   -50,  -521,  -521,  -521,  -111,  -521,  -521,
    -521,  -521,  -272,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,    30,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -511,  -521,  -521,  -521,  -521,  -521,  -521,  -505,    21,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,     4,   249,  -521,  -521,  -521,   281,  -521,   285,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,  -116,  -521,  -521,  -521,     0,   489,  -224,   111,
    -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -521,  -171,
    -521,  -521,  -521,    79,   339,    17,  -521,   213,  -521,  -521,
    -521,  -521,  -521,  -521,   360,  -521,  -521,  -521,  -521,  -521,
     467,  -521,   225,  -521,  -521,  -521,  -521,  -521,  -521,  -521,
    -521,  -521,  -521,  -521,  -521,  -521,  -322,   -96,   -49,  -521,
    -521,  -521,  -521,  -521,   -59,  -160,    12,  -150,   -28,  -521,
    -521,   192,  -521,  -521,  -521,  -521,  -521,  -521,  -420,  -521,
      91,  -521,  -521,  -521,   216
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -487
static const yytype_int16 yytable[] =
{
      72,    88,   298,   100,   306,   303,   172,   263,    91,   113,
     117,   118,   121,   102,    80,   398,    90,   436,   393,   311,
     120,   329,   422,   314,   190,   583,   488,   615,   230,   428,
     487,   489,   642,   315,     3,   710,   247,   643,   490,   644,
     101,   653,    79,   377,   192,    79,   265,   654,   400,   347,
     377,   245,     8,    82,   517,   131,  -289,   747,   384,   349,
      79,   135,   302,   723,   178,   491,   136,   385,   538,   245,
     386,   429,   485,   275,   276,   277,   432,   193,   194,   307,
     347,   387,   724,   388,   242,  -486,    28,    72,   456,   492,
     100,     1,   179,    28,   307,   457,   113,   243,   244,   125,
     257,  -252,   195,   196,   197,    28,     2,   248,   310,    87,
     510,   317,   572,   126,   274,     3,   518,   246,   198,   199,
     711,   200,   323,   201,   297,    87,   642,   101,   493,   202,
     417,   643,   494,   644,   283,   653,   190,   203,   204,   205,
     206,   654,   748,   262,   423,   550,   128,   522,    13,  -269,
      92,   554,   142,   604,   144,   297,   682,   348,    93,   609,
     610,   195,   196,   197,    94,   257,   122,   699,  -120,   680,
     316,   360,   318,   484,   123,   330,   124,  -120,   331,   248,
     129,    95,  -104,   324,   709,   145,    28,   146,   430,   147,
     134,   431,  -120,   248,     2,   148,   149,   150,   151,   336,
     341,  -120,   264,     3,   332,   167,   395,   333,   265,   377,
     486,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,   161,  -313,   173,   299,   535,
     537,   300,    28,   377,   152,    97,    13,   301,    72,   299,
     378,   121,   421,  -120,   362,     2,     6,   248,   301,   120,
     732,     9,    28,    11,     3,    12,   695,   448,   696,   459,
     396,   117,   670,   454,   394,   697,   460,  -120,   424,   671,
    -215,  -150,   399,   558,    28,    28,    28,   248,   176,   559,
     284,   624,   285,   272,   286,  -345,   232,    13,   287,   428,
     288,   425,   289,   290,   314,   545,   546,   547,   326,   327,
     549,   433,   328,   235,   411,   262,   412,   437,   413,   241,
     446,   449,  -159,   261,   142,   673,    28,    72,   612,  -155,
     266,  -229,  -165,    84,    84,    28,    28,   271,   248,   520,
     401,   458,   402,   461,   248,   758,   759,   526,   476,   477,
     478,   479,   273,   278,   469,   281,   469,   145,   293,   146,
      72,   147,   621,   269,   295,   270,   399,   148,   149,   150,
     151,   471,   297,   471,   304,  -148,   555,   305,   505,   317,
     321,   703,   498,   334,   364,   369,   371,   376,   373,   265,
     690,   503,   389,   390,   391,   301,   397,   392,   506,   525,
     117,   408,   409,   441,   410,   501,   257,   444,   511,   445,
     248,   455,   462,   463,   464,   530,    72,    72,   248,   465,
     466,   467,   472,   475,   481,   201,   137,   138,   139,   745,
     497,   502,   140,  -269,   562,   141,   142,   143,   144,   377,
     516,   513,   514,   570,   519,   524,   347,   248,   561,   521,
     161,   272,   532,   567,   586,   589,   591,   594,   543,   531,
     765,   620,   544,   579,   548,   584,   551,   582,   552,   145,
     568,   146,   598,   147,   336,   557,   600,   596,   585,   148,
     149,   150,   151,   602,   580,   606,   137,   138,   139,   597,
     605,   601,   140,  -269,   607,   141,   142,   143,   144,   608,
     611,   613,   662,   618,   616,   623,   619,   631,   635,   771,
     625,   707,   421,   632,   636,   637,   498,   638,   152,   362,
     378,   655,   665,   169,   248,   657,   659,   663,   677,   145,
     676,   146,   248,   147,   117,   669,   678,   771,   679,   148,
     149,   150,   151,   680,   629,   681,   682,   683,   685,   687,
     688,   335,   739,   701,   705,   734,   641,   686,   700,   673,
     737,   425,   742,   736,   752,   738,   723,   744,   246,   562,
     746,   724,   666,   776,   756,   743,   760,   762,   152,   761,
     780,   783,    29,   561,    14,    15,    16,    17,    18,    19,
      20,    21,    22,   170,    24,    25,    26,    27,   370,   768,
     132,   769,   256,   133,   504,   172,   533,   372,   764,   694,
      86,   469,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,   581,  -418,   248,   691,
     617,   730,   640,   117,   434,   702,   693,   595,   435,   590,
     588,   506,     1,   629,   593,   729,     2,   740,   727,   766,
     641,   704,   573,   556,   658,     3,   498,     4,   -11,     5,
     -11,     6,   661,     7,     8,   751,     9,    10,    11,   718,
      12,   725,   728,   498,   779,  -348,  -348,   664,   713,   735,
     770,   757,   786,   717,   325,   708,   706,   523,    13,   527,
     684,   579,   731,   733,   785,   474,   603,   358,   754,   599,
    -348,  -348,  -348,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,  -348,   622,  -348,
     689,  -348,   -11,   614,     0,   718,    28,  -348,     0,   495,
       0,     0,     0,     0,     0,  -348,  -348,  -348,  -348,   717,
       0,   763,     0,     0,     0,     0,     0,     0,   767,     0,
       0,   530,     0,     0,     1,     0,     0,     0,     2,     0,
       0,     0,     0,   774,   775,     0,     0,     3,     0,     4,
       0,     5,     0,     6,     0,     7,     8,     0,     9,    10,
      11,     0,    12,     0,     0,     0,   784,  -348,  -348,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      13,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,  -348,  -348,  -348,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,  -348,
       0,  -348,     0,  -348,   -11,     0,     0,     0,    28,  -348,
       1,     0,     0,     0,     2,     0,     0,  -348,  -348,  -348,
    -348,     0,     0,     3,     0,     4,     0,     5,     0,     6,
       0,     7,     8,     0,     9,    10,    11,     0,    12,     0,
       0,     0,     0,  -348,  -348,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    13,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -348,  -348,
    -348,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,  -348,     0,  -348,     0,  -348,
       0,     0,     0,   534,    28,  -348,     1,     0,     0,     0,
       2,     0,     0,  -348,  -348,  -348,  -348,     0,     0,     3,
       0,     4,     0,     5,     0,     6,     0,     7,     8,     0,
       9,    10,    11,     0,    12,     0,     0,     0,     0,  -348,
    -348,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    13,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -348,  -348,  -348,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,  -348,     0,  -348,     0,  -348,     0,     0,     0,   536,
      28,  -348,     1,     0,     0,     0,     2,     0,     0,  -348,
    -348,  -348,  -348,     0,     0,     3,     0,     4,     0,     5,
       0,     6,     0,     7,     8,     0,     9,    10,    11,     0,
      12,     0,     0,     0,     0,  -348,  -348,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    13,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
    -348,  -348,  -348,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,  -348,     0,  -348,
       2,  -348,     0,     0,     0,     0,    28,  -348,     0,     3,
       0,     0,     0,     0,     0,  -348,  -348,  -348,  -348,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,  -348,
    -348,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    13,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -348,  -348,  -348,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,  -348,     0,  -348,     0,  -348,   137,   138,   139,     0,
      28,  -348,   140,  -269,     0,   141,   142,   143,   144,  -348,
    -348,  -348,  -348,   137,   138,   139,     0,     0,     0,   140,
    -269,     0,   141,   142,   143,   144,     0,     0,     0,   755,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   145,
       0,   146,     0,   147,     0,     0,     0,    92,  -120,   148,
     149,   150,   151,     0,     0,    93,   145,  -120,   146,     0,
     147,    94,     0,     0,     0,     0,   148,   149,   150,   151,
       0,     0,     0,     0,     0,     0,     0,     0,    95,   418,
       0,     0,     0,     0,     0,     0,     0,     0,   152,     0,
    -120,     0,  -120,     0,  -120,     0,     0,     0,     0,     0,
    -120,  -120,  -120,  -120,     0,   152,     0,     0,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,   161,  -313,     0,    92,  -120,     0,     0,     0,
     -18,    28,    97,    93,     0,  -120,     0,     0,     0,    94,
      14,    15,    16,    17,    18,    19,    20,    21,    22,   170,
      24,    25,    26,    27,     0,     0,    95,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -120,     0,
    -120,     0,  -120,     0,     0,     0,     0,     0,  -120,  -120,
    -120,  -120,     0,     0,     0,     0,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      96,     0,     0,    92,     0,     0,     0,     0,   -18,    28,
      97,    93,     0,     0,     0,     0,     0,    94,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    92,     0,
     626,     0,   265,     0,    95,     0,    93,     0,     0,     0,
       0,     0,    94,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   626,     0,   265,     0,    95,
       0,     0,     0,     0,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,   161,     0,
       0,     0,     0,   335,   -49,   -49,     0,     0,    97,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,   161,   160,     0,     0,     0,     0,   -49,
       0,     0,    93,    97,     0,     0,     0,     0,    94,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    92,
       0,     0,     0,     0,     0,    95,     0,    93,     0,     0,
       0,     0,     0,    94,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,     0,     0,
      95,     0,     0,     0,     0,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,   161,
       0,     0,     0,   180,     0,   181,     0,     0,     0,    97,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,   161,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    97,    14,   182,    16,    17,    18,
      19,    20,    21,    22,   170,    24,    25,    26,    27,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   183,    14,    15,    16,    17,   354,    19,    20,
      21,    22,   170,    24,    25,    26,   355,   199,     0,   356,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     357,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,     0,     0,     0,     0,     0,
       0,     0,     0,   -20,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,     0,     0,
       0,  -381,     0,     0,     0,   340,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
       0,     0,     0,  -384,     0,     0,   468,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,     0,     0,     0,  -384,     0,     0,   473,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,     0,     0,     0,     0,   -20,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,     0,     0,     0,  -385,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,     0,
     -20,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,    14,    15,    16,    17,    18,
      19,    20,    21,    22,   170,    24,    25,    26,    27
};

static const yytype_int16 yycheck[] =
{
       0,     6,   144,     9,   164,   157,    55,   100,     8,     9,
      10,    11,    12,     9,     2,   271,     8,   306,   261,   171,
      12,   192,   294,   173,    73,   445,   353,   498,    77,   297,
     352,     3,   552,   175,    16,     3,    95,   552,    10,   552,
       9,   552,     3,    44,     3,     3,    32,   552,   272,     3,
      44,    12,    25,     3,    39,    35,    40,     3,    68,   201,
       3,    41,   155,    41,    70,    37,    46,    77,    52,    12,
      80,   300,    26,   122,   123,   124,   305,    36,    37,    65,
       3,    91,    60,    93,    89,    79,    87,    87,     3,    61,
      96,     3,    72,    87,    65,    10,    96,    93,    94,     3,
      96,    83,    61,    62,    63,    87,     7,    95,   167,    82,
     378,    82,   439,     3,   119,    16,   101,    78,    77,    78,
      88,    80,   181,    82,    78,    82,   646,    96,   100,    88,
     282,   646,   356,   646,   139,   646,   185,    96,    97,    98,
      99,   646,    88,     4,   296,   417,     0,   390,    49,    10,
       3,   423,    13,   475,    15,    78,    42,    80,    11,   486,
     487,    61,    62,    63,    17,   161,    43,   638,     3,    55,
     176,   220,   177,   350,    51,    77,    53,    12,    80,   167,
      86,    34,    83,   183,   655,    46,    87,    48,    82,    50,
      85,    85,     3,   181,     7,    56,    57,    58,    59,   199,
     200,    12,    26,    16,    77,    65,   265,    80,    32,    44,
     352,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    71,     8,   406,
     407,    11,    87,    44,    95,    88,    49,    17,   238,     8,
     246,   241,   291,    78,   232,     7,    22,   235,    17,   241,
     670,    27,    87,    29,    16,    31,    45,   316,    47,     3,
     266,   261,    85,   322,   264,    54,    10,    78,    79,    92,
      83,    83,   272,    11,    87,    87,    87,   265,    93,    17,
       4,   524,     6,    84,     8,    86,    85,    49,    12,   557,
      14,   297,    16,    17,   444,   411,   412,   413,   187,   188,
     416,   306,   191,    71,    78,     4,    80,   307,    82,    31,
     315,   317,    83,    86,    13,    78,    87,   317,   489,    82,
      85,    83,    83,     4,     5,    87,    87,    77,   316,   388,
      19,   331,    21,   333,   322,   723,   724,   396,    56,    57,
      58,    59,    82,    78,   344,     3,   346,    46,     3,    48,
     350,    50,   512,   104,     3,   106,   356,    56,    57,    58,
      59,   344,    78,   346,    10,    85,   425,    84,   373,    82,
      91,   643,   364,     3,    82,    77,    83,    71,    23,    32,
     623,   369,    80,    86,    79,    17,     3,    84,   376,   394,
     390,    82,    82,    30,    82,    72,   392,    84,     3,    85,
     388,    85,    85,    79,    84,   401,   406,   407,   396,    81,
      85,    81,    81,    84,    93,    82,     3,     4,     5,   708,
      84,    84,     9,    10,   430,    12,    13,    14,    15,    44,
      84,    79,    94,   438,    81,    86,     3,   425,   430,    81,
      78,    84,    83,   431,   450,   451,   452,   453,    83,    85,
     739,   510,    83,   441,    79,    42,    77,   445,    82,    46,
      82,    48,   462,    50,   464,    84,   466,    81,    55,    56,
      57,    58,    59,   473,    72,   481,     3,     4,     5,    81,
     480,    84,     9,    10,    26,    12,    13,    14,    15,    83,
      26,    81,    19,    72,    83,    86,    84,    83,    79,   755,
      85,   653,   551,    40,    81,    83,   498,    82,    95,   497,
     516,    82,    82,     3,   502,    79,    89,    83,    83,    46,
      55,    48,   510,    50,   524,    84,    42,   783,    83,    56,
      57,    58,    59,    55,   530,    83,    42,    83,    81,    26,
      26,     3,   702,     3,    83,     3,   552,   606,   641,    78,
      84,   557,   704,    79,    84,    83,    41,    82,    78,   565,
      83,    60,   568,    65,    83,   707,    83,    79,    95,    83,
      65,    84,     0,   565,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,   238,   749,
      39,   751,    96,    39,   373,   644,   405,   241,   737,   629,
       5,   601,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,   444,    79,   606,   624,
     502,   669,   551,   623,   306,   642,   626,   453,   306,   451,
     450,   619,     3,   629,   452,   668,     7,   703,   667,   742,
     646,   644,   440,   426,   557,    16,   638,    18,    19,    20,
      21,    22,   560,    24,    25,   713,    27,    28,    29,   665,
      31,   667,   668,   655,   769,    36,    37,   565,   661,   674,
     752,   721,   783,   665,   185,   654,   646,   392,    49,   398,
     601,   669,   670,   671,   780,   346,   473,   220,   716,   464,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,   516,    80,
     619,    82,    83,   497,    -1,   721,    87,    88,    -1,   359,
      -1,    -1,    -1,    -1,    -1,    96,    97,    98,    99,   721,
      -1,   736,    -1,    -1,    -1,    -1,    -1,    -1,   744,    -1,
      -1,   737,    -1,    -1,     3,    -1,    -1,    -1,     7,    -1,
      -1,    -1,    -1,   758,   759,    -1,    -1,    16,    -1,    18,
      -1,    20,    -1,    22,    -1,    24,    25,    -1,    27,    28,
      29,    -1,    31,    -1,    -1,    -1,   776,    36,    37,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      -1,    80,    -1,    82,    83,    -1,    -1,    -1,    87,    88,
       3,    -1,    -1,    -1,     7,    -1,    -1,    96,    97,    98,
      99,    -1,    -1,    16,    -1,    18,    -1,    20,    -1,    22,
      -1,    24,    25,    -1,    27,    28,    29,    -1,    31,    -1,
      -1,    -1,    -1,    36,    37,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    49,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    -1,    80,    -1,    82,
      -1,    -1,    -1,    86,    87,    88,     3,    -1,    -1,    -1,
       7,    -1,    -1,    96,    97,    98,    99,    -1,    -1,    16,
      -1,    18,    -1,    20,    -1,    22,    -1,    24,    25,    -1,
      27,    28,    29,    -1,    31,    -1,    -1,    -1,    -1,    36,
      37,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    -1,    80,    -1,    82,    -1,    -1,    -1,    86,
      87,    88,     3,    -1,    -1,    -1,     7,    -1,    -1,    96,
      97,    98,    99,    -1,    -1,    16,    -1,    18,    -1,    20,
      -1,    22,    -1,    24,    25,    -1,    27,    28,    29,    -1,
      31,    -1,    -1,    -1,    -1,    36,    37,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    -1,    80,
       7,    82,    -1,    -1,    -1,    -1,    87,    88,    -1,    16,
      -1,    -1,    -1,    -1,    -1,    96,    97,    98,    99,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    36,
      37,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    -1,    80,    -1,    82,     3,     4,     5,    -1,
      87,    88,     9,    10,    -1,    12,    13,    14,    15,    96,
      97,    98,    99,     3,     4,     5,    -1,    -1,    -1,     9,
      10,    -1,    12,    13,    14,    15,    -1,    -1,    -1,    19,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,
      -1,    48,    -1,    50,    -1,    -1,    -1,     3,     4,    56,
      57,    58,    59,    -1,    -1,    11,    46,    13,    48,    -1,
      50,    17,    -1,    -1,    -1,    -1,    56,    57,    58,    59,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    34,     3,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    95,    -1,
      46,    -1,    48,    -1,    50,    -1,    -1,    -1,    -1,    -1,
      56,    57,    58,    59,    -1,    95,    -1,    -1,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    -1,     3,     4,    -1,    -1,    -1,
      86,    87,    88,    11,    -1,    13,    -1,    -1,    -1,    17,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    -1,    -1,    34,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    46,    -1,
      48,    -1,    50,    -1,    -1,    -1,    -1,    -1,    56,    57,
      58,    59,    -1,    -1,    -1,    -1,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    -1,    -1,     3,    -1,    -1,    -1,    -1,    86,    87,
      88,    11,    -1,    -1,    -1,    -1,    -1,    17,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,    -1,
      30,    -1,    32,    -1,    34,    -1,    11,    -1,    -1,    -1,
      -1,    -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    30,    -1,    32,    -1,    34,
      -1,    -1,    -1,    -1,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    -1,
      -1,    -1,    -1,     3,    84,    85,    -1,    -1,    88,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,     3,    -1,    -1,    -1,    -1,    84,
      -1,    -1,    11,    88,    -1,    -1,    -1,    -1,    17,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,
      -1,    -1,    -1,    -1,    -1,    34,    -1,    11,    -1,    -1,
      -1,    -1,    -1,    17,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    -1,    -1,
      34,    -1,    -1,    -1,    -1,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      -1,    -1,    -1,    32,    -1,    34,    -1,    -1,    -1,    88,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    88,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    91,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    -1,    80,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      91,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    86,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    -1,    -1,
      -1,    81,    -1,    -1,    -1,    85,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      -1,    -1,    -1,    81,    -1,    -1,    84,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    -1,    -1,    -1,    81,    -1,    -1,    84,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    -1,    -1,    -1,    -1,    82,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    -1,    -1,    -1,    81,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    -1,
      79,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     3,     7,    16,    18,    20,    22,    24,    25,    27,
      28,    29,    31,    49,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    87,   103,
     107,   108,   112,   113,   115,   116,   117,   121,   131,   132,
     133,   134,   135,   137,   138,   139,   152,   159,   160,   165,
     170,   171,   187,   188,   191,   193,   213,   233,   237,   240,
     252,   253,   256,   257,   259,   260,   262,   263,   264,   265,
     290,   295,   298,   301,   302,   303,   350,   352,   354,     3,
     358,   359,     3,   189,   133,   136,   136,    82,   158,   119,
     152,   298,     3,    11,    17,    34,    78,    88,   109,   111,
     160,   170,   274,   276,   277,   278,   279,   283,   284,   286,
     287,   288,   289,   298,   300,   358,   110,   298,   298,   114,
     152,   298,    43,    51,    53,     3,     3,   292,     0,    86,
     104,   104,   107,   121,    85,   104,   104,     3,     4,     5,
       9,    12,    13,    14,    15,    46,    48,    50,    56,    57,
      58,    59,    95,   155,   156,   157,   214,   222,   224,   254,
       3,    78,   166,   167,   172,   274,   298,    65,   190,     3,
      73,   194,   350,    71,   140,   192,    93,   261,   160,   104,
      32,    34,    65,    91,   299,   304,   305,   306,   307,   308,
     350,   353,     3,    36,    37,    61,    62,    63,    77,    78,
      80,    82,    88,    96,    97,    98,    99,   310,   312,   313,
     318,   321,   322,   323,   324,   325,   326,   331,   332,   336,
     337,   338,   341,   342,   343,   344,   345,   346,   347,   349,
     350,   351,    85,   234,   375,    71,   149,   311,   103,   105,
     106,    31,   158,   274,   274,    12,    78,   356,   358,   360,
     366,   367,   368,   369,   370,   374,   109,   274,   280,   281,
     282,    86,     4,   156,    26,    32,    85,   275,   357,   275,
     275,    77,    84,    82,   158,   350,   350,   350,    78,   291,
     293,     3,   238,   158,     4,     6,     8,    12,    14,    16,
      17,   161,   162,     3,   241,     3,   235,    78,   201,     8,
      11,    17,   156,   192,    10,    84,   357,    65,   168,   169,
     356,   192,   142,   143,   359,   201,   160,    82,   158,   173,
     179,    91,   309,   356,   298,   299,   301,   301,   301,   311,
      77,    80,    77,    80,     3,     3,   298,   333,   334,   335,
      85,   298,   314,   315,   317,   319,   320,     3,    80,   201,
     327,   328,   329,   348,    68,    77,    80,    91,   332,   339,
     350,   355,   358,   376,    82,   258,   150,   151,   356,    77,
     106,    83,   114,    23,   118,   120,    71,    44,   160,   205,
     361,   362,   363,   364,    68,    77,    80,    91,    93,    80,
      86,    79,    84,   110,   298,   356,   160,     3,   223,   298,
     300,    19,    21,   122,   123,   124,   125,   128,    82,    82,
      82,    78,    80,    82,   294,   296,   297,   192,     3,   163,
     164,   350,   234,   192,    79,   160,   203,   204,   205,   166,
      82,    85,   166,   158,   168,   173,   179,   298,   195,   199,
     201,    30,   141,   144,    84,    85,   158,   255,   356,   160,
     175,   176,   181,   182,   356,    85,     3,    10,   298,     3,
      10,   298,    85,    79,    84,    81,    85,    81,    84,   298,
     316,   317,    81,    84,   316,    84,    56,    57,    58,    59,
     330,    93,   196,   197,   105,    26,   201,   348,   196,     3,
      10,    37,    61,   100,   300,   326,   340,    84,   152,   153,
     154,    72,    84,   358,   117,   158,   358,   371,   372,   373,
     205,     3,   365,    79,    94,   202,    84,    39,   101,    81,
     356,    81,   110,   281,    86,   158,   356,   279,   285,   126,
     274,    85,    83,   122,    86,   105,    86,   105,    52,   266,
     267,   268,   270,    83,    83,   294,   294,   294,    79,   294,
     234,    77,    82,   242,   234,   356,   202,    84,    11,    17,
     206,   152,   160,   215,   216,   217,   218,   358,    82,   183,
     158,   198,   196,   199,   200,   145,   146,   147,   148,   358,
      72,   142,   358,   370,    42,    55,   160,   174,   176,   160,
     175,   160,   180,   182,   160,   181,    81,    81,   298,   334,
     298,    84,   298,   319,   348,   298,   160,    26,    83,   196,
     196,    26,   311,    81,   376,   154,    83,   150,    72,    84,
     356,   357,   363,    86,   110,    85,    30,   127,   129,   274,
     271,    83,    40,   269,   272,    79,    81,    83,    82,   239,
     163,   160,   171,   188,   193,   243,   244,   245,   246,   247,
     248,   249,   250,   253,   260,    82,   236,    79,   203,    89,
     207,   207,    19,    83,   215,    82,   160,   185,   186,    84,
      85,    92,   158,    78,   177,   178,    55,    83,    42,    83,
      55,    83,    42,    83,   315,    81,   356,    26,    26,   372,
     110,   158,   130,   298,   127,    45,    47,    54,   273,   154,
     156,     3,   172,   234,   194,    83,   243,   192,   261,   154,
       3,    88,   210,   210,   219,   220,   223,   152,   160,   225,
     226,   227,   228,    41,    60,   160,   184,   186,   160,   185,
     145,   358,   370,   358,     3,   158,    79,    84,    83,   357,
     190,   251,   192,   201,    82,   179,    83,     3,    88,   208,
     211,   208,    84,   221,   360,    19,    83,   225,   177,   177,
      83,    83,    79,   158,   126,   179,   195,   160,   357,   357,
     219,   223,   229,   230,   158,   158,    65,   209,   212,   209,
      65,   231,   232,    84,   298,   349,   229
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
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

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
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
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
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
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
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

      yyarg[0] = yytname[yytype];
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
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
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
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
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


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */



/* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
  
  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;


	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),

		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);

#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to look-ahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
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

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 111 "grammar.y"
    { ;}
    break;

  case 4:
#line 112 "grammar.y"
    { ;}
    break;

  case 5:
#line 113 "grammar.y"
    { ;}
    break;

  case 6:
#line 114 "grammar.y"
    { ;}
    break;

  case 7:
#line 115 "grammar.y"
    { ;}
    break;

  case 8:
#line 116 "grammar.y"
    { ;}
    break;

  case 9:
#line 117 "grammar.y"
    { ;}
    break;

  case 10:
#line 118 "grammar.y"
    { ;}
    break;

  case 12:
#line 119 "grammar.y"
    { ;}
    break;

  case 13:
#line 123 "grammar.y"
    { ;}
    break;

  case 14:
#line 124 "grammar.y"
    { ;}
    break;

  case 15:
#line 125 "grammar.y"
    { ;}
    break;

  case 16:
#line 126 "grammar.y"
    { ;}
    break;

  case 17:
#line 130 "grammar.y"
    { ;}
    break;

  case 19:
#line 131 "grammar.y"
    { ;}
    break;

  case 21:
#line 132 "grammar.y"
    { ;}
    break;

  case 22:
#line 133 "grammar.y"
    { ;}
    break;

  case 23:
#line 134 "grammar.y"
    { ;}
    break;

  case 24:
#line 135 "grammar.y"
    { ;}
    break;

  case 25:
#line 139 "grammar.y"
    { ;}
    break;

  case 26:
#line 143 "grammar.y"
    { ;}
    break;

  case 27:
#line 144 "grammar.y"
    { ;}
    break;

  case 28:
#line 145 "grammar.y"
    { ;}
    break;

  case 29:
#line 149 "grammar.y"
    { ;}
    break;

  case 30:
#line 153 "grammar.y"
    { ;}
    break;

  case 31:
#line 154 "grammar.y"
    { ;}
    break;

  case 32:
#line 158 "grammar.y"
    { ;}
    break;

  case 34:
#line 159 "grammar.y"
    { ;}
    break;

  case 35:
#line 160 "grammar.y"
    { ;}
    break;

  case 36:
#line 161 "grammar.y"
    { ;}
    break;

  case 37:
#line 162 "grammar.y"
    { ;}
    break;

  case 38:
#line 163 "grammar.y"
    { ;}
    break;

  case 39:
#line 167 "grammar.y"
    { ;}
    break;

  case 41:
#line 168 "grammar.y"
    { ;}
    break;

  case 42:
#line 169 "grammar.y"
    { ;}
    break;

  case 43:
#line 170 "grammar.y"
    { ;}
    break;

  case 44:
#line 171 "grammar.y"
    { ;}
    break;

  case 45:
#line 172 "grammar.y"
    { ;}
    break;

  case 46:
#line 173 "grammar.y"
    { ;}
    break;

  case 47:
#line 174 "grammar.y"
    { ;}
    break;

  case 48:
#line 175 "grammar.y"
    { ;}
    break;

  case 50:
#line 176 "grammar.y"
    { ;}
    break;

  case 51:
#line 177 "grammar.y"
    { ;}
    break;

  case 52:
#line 178 "grammar.y"
    { ;}
    break;

  case 53:
#line 179 "grammar.y"
    { ;}
    break;

  case 54:
#line 180 "grammar.y"
    { ;}
    break;

  case 55:
#line 184 "grammar.y"
    { ;}
    break;

  case 56:
#line 185 "grammar.y"
    { ;}
    break;

  case 57:
#line 186 "grammar.y"
    { ;}
    break;

  case 58:
#line 187 "grammar.y"
    { ;}
    break;

  case 59:
#line 191 "grammar.y"
    { ;}
    break;

  case 60:
#line 192 "grammar.y"
    { ;}
    break;

  case 61:
#line 193 "grammar.y"
    { ;}
    break;

  case 62:
#line 194 "grammar.y"
    { ;}
    break;

  case 63:
#line 198 "grammar.y"
    { ;}
    break;

  case 65:
#line 199 "grammar.y"
    { ;}
    break;

  case 66:
#line 203 "grammar.y"
    { ;}
    break;

  case 67:
#line 207 "grammar.y"
    { ;}
    break;

  case 68:
#line 211 "grammar.y"
    { ;}
    break;

  case 69:
#line 218 "grammar.y"
    { ;}
    break;

  case 71:
#line 219 "grammar.y"
    { ;}
    break;

  case 72:
#line 220 "grammar.y"
    { ;}
    break;

  case 73:
#line 221 "grammar.y"
    { ;}
    break;

  case 74:
#line 222 "grammar.y"
    { ;}
    break;

  case 75:
#line 223 "grammar.y"
    { ;}
    break;

  case 76:
#line 224 "grammar.y"
    { ;}
    break;

  case 77:
#line 225 "grammar.y"
    { ;}
    break;

  case 78:
#line 226 "grammar.y"
    { ;}
    break;

  case 79:
#line 227 "grammar.y"
    { ;}
    break;

  case 80:
#line 228 "grammar.y"
    { ;}
    break;

  case 81:
#line 229 "grammar.y"
    { ;}
    break;

  case 82:
#line 230 "grammar.y"
    { ;}
    break;

  case 83:
#line 231 "grammar.y"
    { ;}
    break;

  case 84:
#line 232 "grammar.y"
    { ;}
    break;

  case 85:
#line 236 "grammar.y"
    { ;}
    break;

  case 86:
#line 237 "grammar.y"
    { ;}
    break;

  case 87:
#line 238 "grammar.y"
    { ;}
    break;

  case 88:
#line 239 "grammar.y"
    { ;}
    break;

  case 89:
#line 246 "grammar.y"
    { ;}
    break;

  case 90:
#line 247 "grammar.y"
    { ;}
    break;

  case 91:
#line 248 "grammar.y"
    { ;}
    break;

  case 92:
#line 249 "grammar.y"
    { ;}
    break;

  case 93:
#line 250 "grammar.y"
    { ;}
    break;

  case 94:
#line 251 "grammar.y"
    { ;}
    break;

  case 95:
#line 252 "grammar.y"
    { ;}
    break;

  case 96:
#line 253 "grammar.y"
    { ;}
    break;

  case 97:
#line 254 "grammar.y"
    { ;}
    break;

  case 98:
#line 255 "grammar.y"
    { ;}
    break;

  case 99:
#line 256 "grammar.y"
    { ;}
    break;

  case 100:
#line 257 "grammar.y"
    { ;}
    break;

  case 101:
#line 258 "grammar.y"
    { ;}
    break;

  case 102:
#line 259 "grammar.y"
    { ;}
    break;

  case 103:
#line 260 "grammar.y"
    { ;}
    break;

  case 105:
#line 261 "grammar.y"
    { ;}
    break;

  case 106:
#line 262 "grammar.y"
    { ;}
    break;

  case 108:
#line 263 "grammar.y"
    { ;}
    break;

  case 109:
#line 264 "grammar.y"
    { ;}
    break;

  case 110:
#line 265 "grammar.y"
    { ;}
    break;

  case 111:
#line 266 "grammar.y"
    { ;}
    break;

  case 112:
#line 267 "grammar.y"
    { ;}
    break;

  case 113:
#line 268 "grammar.y"
    { ;}
    break;

  case 114:
#line 269 "grammar.y"
    { ;}
    break;

  case 115:
#line 270 "grammar.y"
    { ;}
    break;

  case 116:
#line 271 "grammar.y"
    { ;}
    break;

  case 117:
#line 272 "grammar.y"
    { ;}
    break;

  case 118:
#line 280 "grammar.y"
    { ;}
    break;

  case 119:
#line 284 "grammar.y"
    { ;}
    break;

  case 121:
#line 285 "grammar.y"
    { ;}
    break;

  case 123:
#line 286 "grammar.y"
    { ;}
    break;

  case 124:
#line 287 "grammar.y"
    { ;}
    break;

  case 125:
#line 288 "grammar.y"
    { ;}
    break;

  case 126:
#line 289 "grammar.y"
    { ;}
    break;

  case 127:
#line 290 "grammar.y"
    { ;}
    break;

  case 128:
#line 291 "grammar.y"
    { ;}
    break;

  case 129:
#line 292 "grammar.y"
    { ;}
    break;

  case 130:
#line 293 "grammar.y"
    { ;}
    break;

  case 131:
#line 294 "grammar.y"
    { ;}
    break;

  case 132:
#line 295 "grammar.y"
    { ;}
    break;

  case 133:
#line 296 "grammar.y"
    { ;}
    break;

  case 134:
#line 297 "grammar.y"
    { ;}
    break;

  case 135:
#line 301 "grammar.y"
    { ;}
    break;

  case 136:
#line 302 "grammar.y"
    { ;}
    break;

  case 137:
#line 303 "grammar.y"
    { ;}
    break;

  case 138:
#line 304 "grammar.y"
    { ;}
    break;

  case 140:
#line 305 "grammar.y"
    { ;}
    break;

  case 141:
#line 306 "grammar.y"
    { ;}
    break;

  case 142:
#line 310 "grammar.y"
    { ;}
    break;

  case 143:
#line 311 "grammar.y"
    { ;}
    break;

  case 144:
#line 312 "grammar.y"
    { ;}
    break;

  case 145:
#line 313 "grammar.y"
    { ;}
    break;

  case 146:
#line 314 "grammar.y"
    { ;}
    break;

  case 147:
#line 315 "grammar.y"
    { ;}
    break;

  case 148:
#line 316 "grammar.y"
    { ;}
    break;

  case 149:
#line 317 "grammar.y"
    { ;}
    break;

  case 151:
#line 318 "grammar.y"
    { ;}
    break;

  case 152:
#line 319 "grammar.y"
    { ;}
    break;

  case 153:
#line 320 "grammar.y"
    { ;}
    break;

  case 154:
#line 321 "grammar.y"
    { ;}
    break;

  case 156:
#line 322 "grammar.y"
    { ;}
    break;

  case 157:
#line 323 "grammar.y"
    { ;}
    break;

  case 158:
#line 324 "grammar.y"
    { ;}
    break;

  case 160:
#line 325 "grammar.y"
    { ;}
    break;

  case 161:
#line 326 "grammar.y"
    { ;}
    break;

  case 162:
#line 327 "grammar.y"
    { ;}
    break;

  case 163:
#line 328 "grammar.y"
    { ;}
    break;

  case 164:
#line 329 "grammar.y"
    { ;}
    break;

  case 166:
#line 330 "grammar.y"
    { ;}
    break;

  case 167:
#line 331 "grammar.y"
    { ;}
    break;

  case 168:
#line 332 "grammar.y"
    { ;}
    break;

  case 169:
#line 333 "grammar.y"
    { ;}
    break;

  case 170:
#line 337 "grammar.y"
    { ;}
    break;

  case 171:
#line 338 "grammar.y"
    { ;}
    break;

  case 172:
#line 339 "grammar.y"
    { ;}
    break;

  case 173:
#line 340 "grammar.y"
    { ;}
    break;

  case 174:
#line 344 "grammar.y"
    { ;}
    break;

  case 176:
#line 345 "grammar.y"
    { ;}
    break;

  case 177:
#line 346 "grammar.y"
    { ;}
    break;

  case 178:
#line 347 "grammar.y"
    { ;}
    break;

  case 179:
#line 348 "grammar.y"
    { ;}
    break;

  case 180:
#line 349 "grammar.y"
    { ;}
    break;

  case 182:
#line 350 "grammar.y"
    { ;}
    break;

  case 183:
#line 351 "grammar.y"
    { ;}
    break;

  case 184:
#line 352 "grammar.y"
    { ;}
    break;

  case 185:
#line 353 "grammar.y"
    { ;}
    break;

  case 187:
#line 354 "grammar.y"
    { ;}
    break;

  case 188:
#line 355 "grammar.y"
    { ;}
    break;

  case 189:
#line 356 "grammar.y"
    { ;}
    break;

  case 191:
#line 357 "grammar.y"
    { ;}
    break;

  case 192:
#line 358 "grammar.y"
    { ;}
    break;

  case 193:
#line 359 "grammar.y"
    { ;}
    break;

  case 194:
#line 360 "grammar.y"
    { ;}
    break;

  case 196:
#line 361 "grammar.y"
    { ;}
    break;

  case 198:
#line 362 "grammar.y"
    { ;}
    break;

  case 200:
#line 363 "grammar.y"
    { ;}
    break;

  case 202:
#line 364 "grammar.y"
    { ;}
    break;

  case 204:
#line 365 "grammar.y"
    { ;}
    break;

  case 205:
#line 366 "grammar.y"
    { ;}
    break;

  case 206:
#line 367 "grammar.y"
    { ;}
    break;

  case 207:
#line 368 "grammar.y"
    { ;}
    break;

  case 208:
#line 369 "grammar.y"
    { ;}
    break;

  case 209:
#line 370 "grammar.y"
    { ;}
    break;

  case 210:
#line 371 "grammar.y"
    { ;}
    break;

  case 211:
#line 372 "grammar.y"
    { ;}
    break;

  case 212:
#line 376 "grammar.y"
    { ;}
    break;

  case 213:
#line 377 "grammar.y"
    { ;}
    break;

  case 214:
#line 378 "grammar.y"
    { ;}
    break;

  case 216:
#line 379 "grammar.y"
    { ;}
    break;

  case 217:
#line 380 "grammar.y"
    { ;}
    break;

  case 218:
#line 381 "grammar.y"
    { ;}
    break;

  case 219:
#line 382 "grammar.y"
    { ;}
    break;

  case 220:
#line 383 "grammar.y"
    { ;}
    break;

  case 221:
#line 384 "grammar.y"
    { ;}
    break;

  case 222:
#line 385 "grammar.y"
    { ;}
    break;

  case 223:
#line 386 "grammar.y"
    { ;}
    break;

  case 225:
#line 387 "grammar.y"
    { ;}
    break;

  case 226:
#line 388 "grammar.y"
    { ;}
    break;

  case 227:
#line 389 "grammar.y"
    { ;}
    break;

  case 228:
#line 390 "grammar.y"
    { ;}
    break;

  case 230:
#line 391 "grammar.y"
    { ;}
    break;

  case 231:
#line 392 "grammar.y"
    { ;}
    break;

  case 232:
#line 393 "grammar.y"
    { ;}
    break;

  case 233:
#line 394 "grammar.y"
    { ;}
    break;

  case 234:
#line 395 "grammar.y"
    { ;}
    break;

  case 235:
#line 396 "grammar.y"
    { ;}
    break;

  case 236:
#line 397 "grammar.y"
    { ;}
    break;

  case 237:
#line 398 "grammar.y"
    { ;}
    break;

  case 239:
#line 399 "grammar.y"
    { ;}
    break;

  case 240:
#line 400 "grammar.y"
    { ;}
    break;

  case 241:
#line 404 "grammar.y"
    { ;}
    break;

  case 243:
#line 405 "grammar.y"
    { ;}
    break;

  case 244:
#line 406 "grammar.y"
    { ;}
    break;

  case 245:
#line 407 "grammar.y"
    { ;}
    break;

  case 246:
#line 411 "grammar.y"
    { ;}
    break;

  case 247:
#line 412 "grammar.y"
    { ;}
    break;

  case 248:
#line 413 "grammar.y"
    { ;}
    break;

  case 249:
#line 417 "grammar.y"
    { ;}
    break;

  case 250:
#line 418 "grammar.y"
    { ;}
    break;

  case 251:
#line 419 "grammar.y"
    { ;}
    break;

  case 253:
#line 420 "grammar.y"
    { ;}
    break;

  case 254:
#line 421 "grammar.y"
    { ;}
    break;

  case 255:
#line 422 "grammar.y"
    { ;}
    break;

  case 256:
#line 423 "grammar.y"
    { ;}
    break;

  case 257:
#line 424 "grammar.y"
    { ;}
    break;

  case 258:
#line 425 "grammar.y"
    { ;}
    break;

  case 259:
#line 426 "grammar.y"
    { ;}
    break;

  case 260:
#line 430 "grammar.y"
    { ;}
    break;

  case 261:
#line 434 "grammar.y"
    { ;}
    break;

  case 262:
#line 438 "grammar.y"
    { ;}
    break;

  case 263:
#line 442 "grammar.y"
    { ;}
    break;

  case 264:
#line 446 "grammar.y"
    { ;}
    break;

  case 266:
#line 447 "grammar.y"
    { ;}
    break;

  case 267:
#line 451 "grammar.y"
    { ;}
    break;

  case 268:
#line 452 "grammar.y"
    { ;}
    break;

  case 270:
#line 453 "grammar.y"
    { ;}
    break;

  case 271:
#line 454 "grammar.y"
    { ;}
    break;

  case 272:
#line 458 "grammar.y"
    { ;}
    break;

  case 273:
#line 462 "grammar.y"
    { ;}
    break;

  case 274:
#line 463 "grammar.y"
    { ;}
    break;

  case 275:
#line 467 "grammar.y"
    { ;}
    break;

  case 276:
#line 468 "grammar.y"
    { ;}
    break;

  case 277:
#line 469 "grammar.y"
    { ;}
    break;

  case 278:
#line 470 "grammar.y"
    { ;}
    break;

  case 279:
#line 471 "grammar.y"
    { ;}
    break;

  case 280:
#line 475 "grammar.y"
    { ;}
    break;

  case 281:
#line 476 "grammar.y"
    { ;}
    break;

  case 282:
#line 477 "grammar.y"
    { ;}
    break;

  case 283:
#line 478 "grammar.y"
    { ;}
    break;

  case 284:
#line 479 "grammar.y"
    { ;}
    break;

  case 285:
#line 480 "grammar.y"
    { ;}
    break;

  case 287:
#line 481 "grammar.y"
    { ;}
    break;

  case 288:
#line 482 "grammar.y"
    { ;}
    break;

  case 290:
#line 483 "grammar.y"
    { ;}
    break;

  case 292:
#line 484 "grammar.y"
    { ;}
    break;

  case 293:
#line 485 "grammar.y"
    { ;}
    break;

  case 294:
#line 486 "grammar.y"
    { ;}
    break;

  case 295:
#line 487 "grammar.y"
    { ;}
    break;

  case 296:
#line 488 "grammar.y"
    { ;}
    break;

  case 297:
#line 489 "grammar.y"
    { ;}
    break;

  case 298:
#line 490 "grammar.y"
    { ;}
    break;

  case 299:
#line 497 "grammar.y"
    { ;}
    break;

  case 301:
#line 498 "grammar.y"
    { ;}
    break;

  case 302:
#line 499 "grammar.y"
    { ;}
    break;

  case 303:
#line 500 "grammar.y"
    { ;}
    break;

  case 304:
#line 501 "grammar.y"
    { ;}
    break;

  case 305:
#line 502 "grammar.y"
    { ;}
    break;

  case 306:
#line 503 "grammar.y"
    { ;}
    break;

  case 307:
#line 504 "grammar.y"
    { ;}
    break;

  case 308:
#line 508 "grammar.y"
    { ;}
    break;

  case 309:
#line 512 "grammar.y"
    { ;}
    break;

  case 310:
#line 516 "grammar.y"
    { ;}
    break;

  case 311:
#line 517 "grammar.y"
    { ;}
    break;

  case 312:
#line 521 "grammar.y"
    { ;}
    break;

  case 314:
#line 522 "grammar.y"
    { ;}
    break;

  case 315:
#line 523 "grammar.y"
    { ;}
    break;

  case 316:
#line 524 "grammar.y"
    { ;}
    break;

  case 317:
#line 525 "grammar.y"
    { ;}
    break;

  case 318:
#line 529 "grammar.y"
    { ;}
    break;

  case 320:
#line 530 "grammar.y"
    { ;}
    break;

  case 322:
#line 531 "grammar.y"
    { ;}
    break;

  case 323:
#line 535 "grammar.y"
    { ;}
    break;

  case 324:
#line 536 "grammar.y"
    { ;}
    break;

  case 325:
#line 537 "grammar.y"
    { ;}
    break;

  case 326:
#line 538 "grammar.y"
    { ;}
    break;

  case 327:
#line 542 "grammar.y"
    { ;}
    break;

  case 328:
#line 549 "grammar.y"
    { ;}
    break;

  case 330:
#line 550 "grammar.y"
    { ;}
    break;

  case 331:
#line 551 "grammar.y"
    { ;}
    break;

  case 332:
#line 552 "grammar.y"
    { ;}
    break;

  case 334:
#line 553 "grammar.y"
    { ;}
    break;

  case 335:
#line 554 "grammar.y"
    { ;}
    break;

  case 336:
#line 555 "grammar.y"
    { ;}
    break;

  case 337:
#line 556 "grammar.y"
    { ;}
    break;

  case 338:
#line 557 "grammar.y"
    { ;}
    break;

  case 339:
#line 558 "grammar.y"
    { ;}
    break;

  case 340:
#line 559 "grammar.y"
    { ;}
    break;

  case 341:
#line 560 "grammar.y"
    { ;}
    break;

  case 342:
#line 567 "grammar.y"
    { ;}
    break;

  case 344:
#line 568 "grammar.y"
    { ;}
    break;

  case 345:
#line 569 "grammar.y"
    { ;}
    break;

  case 346:
#line 570 "grammar.y"
    { ;}
    break;

  case 347:
#line 574 "grammar.y"
    { ;}
    break;

  case 349:
#line 575 "grammar.y"
    { ;}
    break;

  case 350:
#line 576 "grammar.y"
    { ;}
    break;

  case 351:
#line 577 "grammar.y"
    { ;}
    break;

  case 352:
#line 581 "grammar.y"
    { ;}
    break;

  case 353:
#line 582 "grammar.y"
    { ;}
    break;

  case 354:
#line 583 "grammar.y"
    { ;}
    break;

  case 355:
#line 584 "grammar.y"
    { ;}
    break;

  case 356:
#line 585 "grammar.y"
    { ;}
    break;

  case 357:
#line 589 "grammar.y"
    { ;}
    break;

  case 358:
#line 593 "grammar.y"
    { ;}
    break;

  case 359:
#line 597 "grammar.y"
    { ;}
    break;

  case 360:
#line 598 "grammar.y"
    { ;}
    break;

  case 362:
#line 599 "grammar.y"
    { ;}
    break;

  case 363:
#line 603 "grammar.y"
    { ;}
    break;

  case 365:
#line 604 "grammar.y"
    { ;}
    break;

  case 366:
#line 605 "grammar.y"
    { ;}
    break;

  case 367:
#line 606 "grammar.y"
    { ;}
    break;

  case 368:
#line 607 "grammar.y"
    { ;}
    break;

  case 369:
#line 608 "grammar.y"
    { ;}
    break;

  case 370:
#line 609 "grammar.y"
    { ;}
    break;

  case 371:
#line 610 "grammar.y"
    { ;}
    break;

  case 372:
#line 611 "grammar.y"
    { ;}
    break;

  case 373:
#line 615 "grammar.y"
    { ;}
    break;

  case 374:
#line 616 "grammar.y"
    { ;}
    break;

  case 375:
#line 617 "grammar.y"
    { ;}
    break;

  case 376:
#line 618 "grammar.y"
    { ;}
    break;

  case 377:
#line 619 "grammar.y"
    { ;}
    break;

  case 378:
#line 620 "grammar.y"
    { ;}
    break;

  case 379:
#line 621 "grammar.y"
    { ;}
    break;

  case 380:
#line 622 "grammar.y"
    { ;}
    break;

  case 382:
#line 623 "grammar.y"
    { ;}
    break;

  case 383:
#line 624 "grammar.y"
    { ;}
    break;

  case 385:
#line 625 "grammar.y"
    { ;}
    break;

  case 386:
#line 626 "grammar.y"
    { ;}
    break;

  case 387:
#line 627 "grammar.y"
    { ;}
    break;

  case 388:
#line 628 "grammar.y"
    { ;}
    break;

  case 389:
#line 629 "grammar.y"
    { ;}
    break;

  case 390:
#line 630 "grammar.y"
    { ;}
    break;

  case 391:
#line 631 "grammar.y"
    { ;}
    break;

  case 392:
#line 632 "grammar.y"
    { ;}
    break;

  case 393:
#line 636 "grammar.y"
    { ;}
    break;

  case 394:
#line 637 "grammar.y"
    { ;}
    break;

  case 395:
#line 638 "grammar.y"
    { ;}
    break;

  case 396:
#line 639 "grammar.y"
    { ;}
    break;

  case 397:
#line 643 "grammar.y"
    { ;}
    break;

  case 398:
#line 644 "grammar.y"
    { ;}
    break;

  case 399:
#line 645 "grammar.y"
    { ;}
    break;

  case 400:
#line 646 "grammar.y"
    { ;}
    break;

  case 401:
#line 647 "grammar.y"
    { ;}
    break;

  case 402:
#line 648 "grammar.y"
    { ;}
    break;

  case 403:
#line 652 "grammar.y"
    { ;}
    break;

  case 405:
#line 653 "grammar.y"
    { ;}
    break;

  case 406:
#line 654 "grammar.y"
    { ;}
    break;

  case 407:
#line 655 "grammar.y"
    { ;}
    break;

  case 408:
#line 656 "grammar.y"
    { ;}
    break;

  case 409:
#line 657 "grammar.y"
    { ;}
    break;

  case 410:
#line 658 "grammar.y"
    { ;}
    break;

  case 411:
#line 659 "grammar.y"
    { ;}
    break;

  case 412:
#line 660 "grammar.y"
    { ;}
    break;

  case 413:
#line 661 "grammar.y"
    { ;}
    break;

  case 414:
#line 662 "grammar.y"
    { ;}
    break;

  case 415:
#line 663 "grammar.y"
    { ;}
    break;

  case 416:
#line 667 "grammar.y"
    { ;}
    break;

  case 417:
#line 671 "grammar.y"
    { ;}
    break;

  case 419:
#line 672 "grammar.y"
    { ;}
    break;

  case 420:
#line 673 "grammar.y"
    { ;}
    break;

  case 421:
#line 674 "grammar.y"
    { ;}
    break;

  case 422:
#line 675 "grammar.y"
    { ;}
    break;

  case 423:
#line 676 "grammar.y"
    { ;}
    break;

  case 424:
#line 680 "grammar.y"
    { ;}
    break;

  case 425:
#line 684 "grammar.y"
    { ;}
    break;

  case 426:
#line 685 "grammar.y"
    { ;}
    break;

  case 427:
#line 686 "grammar.y"
    { ;}
    break;

  case 428:
#line 687 "grammar.y"
    { ;}
    break;

  case 429:
#line 688 "grammar.y"
    { ;}
    break;

  case 430:
#line 689 "grammar.y"
    { ;}
    break;

  case 431:
#line 690 "grammar.y"
    { ;}
    break;

  case 432:
#line 691 "grammar.y"
    { ;}
    break;

  case 433:
#line 692 "grammar.y"
    { ;}
    break;

  case 434:
#line 693 "grammar.y"
    { ;}
    break;

  case 435:
#line 697 "grammar.y"
    { ;}
    break;

  case 436:
#line 698 "grammar.y"
    { ;}
    break;

  case 438:
#line 699 "grammar.y"
    { ;}
    break;

  case 439:
#line 700 "grammar.y"
    { ;}
    break;

  case 440:
#line 704 "grammar.y"
    { ;}
    break;

  case 441:
#line 708 "grammar.y"
    { ;}
    break;

  case 442:
#line 709 "grammar.y"
    { ;}
    break;

  case 443:
#line 713 "grammar.y"
    { ;}
    break;

  case 444:
#line 717 "grammar.y"
    { ;}
    break;

  case 445:
#line 721 "grammar.y"
    { ;}
    break;

  case 446:
#line 725 "grammar.y"
    { ;}
    break;

  case 447:
#line 729 "grammar.y"
    { ;}
    break;

  case 448:
#line 737 "grammar.y"
    { ;}
    break;

  case 449:
#line 738 "grammar.y"
    { ;}
    break;

  case 450:
#line 739 "grammar.y"
    {;}
    break;

  case 451:
#line 740 "grammar.y"
    {;}
    break;

  case 452:
#line 741 "grammar.y"
    {;}
    break;

  case 453:
#line 745 "grammar.y"
    { ;}
    break;

  case 455:
#line 746 "grammar.y"
    { ;}
    break;

  case 456:
#line 747 "grammar.y"
    { ;}
    break;

  case 457:
#line 748 "grammar.y"
    { ;}
    break;

  case 458:
#line 749 "grammar.y"
    { ;}
    break;

  case 459:
#line 750 "grammar.y"
    { ;}
    break;

  case 460:
#line 751 "grammar.y"
    { ;}
    break;

  case 461:
#line 752 "grammar.y"
    { ;}
    break;

  case 462:
#line 753 "grammar.y"
    { ;}
    break;

  case 463:
#line 754 "grammar.y"
    { ;}
    break;

  case 464:
#line 755 "grammar.y"
    { ;}
    break;

  case 465:
#line 756 "grammar.y"
    { ;}
    break;

  case 466:
#line 757 "grammar.y"
    { ;}
    break;

  case 467:
#line 758 "grammar.y"
    { ;}
    break;

  case 468:
#line 759 "grammar.y"
    { ;}
    break;

  case 469:
#line 760 "grammar.y"
    { ;}
    break;

  case 470:
#line 761 "grammar.y"
    { ;}
    break;

  case 471:
#line 762 "grammar.y"
    { ;}
    break;

  case 472:
#line 763 "grammar.y"
    { ;}
    break;

  case 473:
#line 770 "grammar.y"
    { ;}
    break;

  case 474:
#line 771 "grammar.y"
    { ;}
    break;

  case 475:
#line 772 "grammar.y"
    { ;}
    break;

  case 476:
#line 773 "grammar.y"
    { ;}
    break;

  case 477:
#line 774 "grammar.y"
    { ;}
    break;

  case 478:
#line 775 "grammar.y"
    { ;}
    break;

  case 479:
#line 776 "grammar.y"
    { ;}
    break;

  case 480:
#line 777 "grammar.y"
    { ;}
    break;

  case 481:
#line 781 "grammar.y"
    { ;}
    break;

  case 482:
#line 785 "grammar.y"
    { ;}
    break;

  case 483:
#line 786 "grammar.y"
    { ;}
    break;

  case 484:
#line 787 "grammar.y"
    { ;}
    break;

  case 485:
#line 791 "grammar.y"
    { ;}
    break;

  case 487:
#line 792 "grammar.y"
    { ;}
    break;

  case 488:
#line 793 "grammar.y"
    { ;}
    break;

  case 489:
#line 794 "grammar.y"
    { ;}
    break;

  case 490:
#line 795 "grammar.y"
    { ;}
    break;

  case 491:
#line 796 "grammar.y"
    { ;}
    break;

  case 492:
#line 797 "grammar.y"
    { ;}
    break;

  case 493:
#line 798 "grammar.y"
    { ;}
    break;

  case 494:
#line 802 "grammar.y"
    { ;}
    break;

  case 495:
#line 806 "grammar.y"
    { ;}
    break;

  case 496:
#line 807 "grammar.y"
    { ;}
    break;

  case 497:
#line 811 "grammar.y"
    { ;}
    break;

  case 498:
#line 815 "grammar.y"
    { ;}
    break;

  case 499:
#line 819 "grammar.y"
    { ;}
    break;

  case 501:
#line 820 "grammar.y"
    { ;}
    break;

  case 502:
#line 821 "grammar.y"
    { ;}
    break;

  case 503:
#line 822 "grammar.y"
    { ;}
    break;

  case 504:
#line 823 "grammar.y"
    { ;}
    break;

  case 505:
#line 827 "grammar.y"
    { ;}
    break;

  case 506:
#line 828 "grammar.y"
    { ;}
    break;

  case 507:
#line 832 "grammar.y"
    { ;}
    break;

  case 508:
#line 833 "grammar.y"
    { ;}
    break;

  case 509:
#line 834 "grammar.y"
    { ;}
    break;


/* Line 1267 of yacc.c.  */
#line 4850 "grammar.mm"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;


  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 836 "grammar.y"


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
