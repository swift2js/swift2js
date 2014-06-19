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
#line 1 "grammar.y"

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
# define YYERROR_VERBOSE 1
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 10 "grammar.y"
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
#define YYFINAL  130
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1791

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  102
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  276
/* YYNRULES -- Number of rules.  */
#define YYNRULES  510
/* YYNRULES -- Number of states.  */
#define YYNSTATES  784

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
     360,   361,   363,   366,   369,   374,   379,   384,   390,   394,
     396,   401,   402,   404,   409,   413,   418,   419,   421,   425,
     430,   431,   433,   438,   441,   444,   449,   450,   452,   457,
     462,   467,   470,   473,   475,   478,   484,   485,   487,   491,
     493,   495,   498,   499,   501,   505,   507,   510,   511,   513,
     516,   521,   522,   524,   526,   530,   538,   539,   541,   542,
     544,   545,   547,   548,   550,   551,   553,   561,   564,   566,
     568,   570,   572,   575,   578,   581,   587,   588,   590,   593,
     595,   597,   601,   603,   607,   610,   611,   613,   615,   617,
     625,   626,   628,   631,   633,   635,   639,   641,   645,   648,
     649,   651,   654,   661,   662,   664,   666,   670,   677,   679,
     683,   689,   691,   695,   696,   698,   700,   702,   704,   706,
     708,   711,   716,   721,   725,   729,   733,   734,   736,   741,
     745,   746,   748,   750,   754,   759,   763,   767,   771,   775,
     779,   783,   785,   787,   789,   795,   801,   808,   809,   811,
     814,   815,   817,   818,   820,   823,   824,   827,   829,   831,
     833,   836,   837,   839,   842,   844,   847,   849,   851,   853,
     855,   857,   860,   863,   867,   868,   870,   872,   876,   878,
     883,   884,   886,   887,   889,   891,   893,   896,   900,   902,
     906,   907,   909,   911,   915,   916,   918,   921,   924,   928,
     932,   936,   937,   938,   941,   942,   944,   946,   950,   953,
     954,   956,   958,   961,   964,   967,   970,   972,   975,   977,
     981,   984,   988,   989,   991,   994,   995,   997,   999,  1001,
    1003,  1005,  1007,  1009,  1011,  1013,  1015,  1017,  1019,  1021,
    1023,  1025,  1029,  1030,  1032,  1035,  1039,  1040,  1042,  1044,
    1048,  1052,  1055,  1059,  1063,  1065,  1069,  1074,  1078,  1080,
    1082,  1084,  1088,  1093,  1097,  1102,  1103,  1105,  1109,  1113,
    1118,  1123,  1126,  1131,  1133,  1135,  1137,  1139,  1142,  1146,
    1147,  1149,  1151,  1155,  1157,  1161,  1163,  1165,  1168,  1170,
    1172,  1174,  1176,  1178,  1180,  1182,  1184,  1187,  1191,  1192,
    1194,  1196,  1200,  1204,  1209,  1213,  1217,  1222,  1225,  1228,
    1230,  1234,  1236,  1238,  1240,  1243,  1244,  1246,  1248,  1250,
    1252,  1254,  1256,  1258,  1260,  1262,  1264,  1266,  1268,  1270,
    1272,  1274,  1276,  1278,  1280,  1282,  1284,  1286,  1288,  1290,
    1292,  1294,  1296,  1300,  1303,  1308,  1310,  1314,  1315,  1317,
    1320,  1322,  1326,  1330,  1334,  1336,  1340,  1344,  1348,  1351,
    1354,  1359,  1360,  1362,  1364,  1368,  1370,  1374,  1378,  1381,
    1383
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     103,     0,    -1,   106,    -1,   299,   105,    -1,    -1,    86,
      -1,   153,   105,    -1,   108,   105,    -1,   117,   105,    -1,
     132,    -1,   135,   105,    -1,   104,   107,    -1,    -1,   106,
      -1,   109,    -1,   113,    -1,   114,    -1,   116,    -1,    27,
     110,    86,   111,    86,   111,   159,    -1,    -1,   112,    -1,
      -1,   299,    -1,    27,    78,   110,    86,   111,    86,   111,
      79,   159,    -1,   171,    -1,   301,    -1,    27,   275,    26,
     299,   159,    -1,    31,   115,   159,    -1,   299,    -1,   153,
      -1,    22,   159,    31,   115,    -1,   118,    -1,   122,    -1,
      25,   120,   159,   119,    -1,    -1,   121,    -1,   299,    -1,
     153,    -1,    23,   159,    -1,    23,   118,    -1,    29,   299,
      82,   123,    83,    -1,    -1,   124,    -1,   125,   123,    -1,
     126,   106,    -1,   129,   106,    -1,   126,    86,    -1,   129,
      86,    -1,    19,   127,    85,    -1,   275,   128,    -1,   275,
     128,    84,   127,    -1,    -1,   130,    -1,    21,    85,    -1,
      30,   131,    -1,   299,    -1,   133,   108,    -1,   133,   122,
      -1,   134,    85,    -1,     3,    -1,   136,    -1,   138,    -1,
     139,    -1,   140,    -1,    18,   137,    -1,    -1,   134,    -1,
      20,   137,    -1,    24,    -1,    28,   111,    -1,    71,   143,
     142,    72,    -1,    -1,   145,    -1,   144,    -1,   144,    84,
     143,    -1,   360,    -1,   360,    85,   359,    -1,   360,    85,
     371,    -1,    30,   146,    -1,   147,    -1,   147,    84,   146,
      -1,   148,    -1,   149,    -1,   359,    85,   359,    -1,   359,
      85,   371,    -1,   359,    92,   359,    -1,    71,   151,    72,
      -1,   152,    -1,   152,    84,   151,    -1,   357,    -1,   160,
      -1,   166,    -1,   171,    -1,   188,    -1,   192,    -1,   214,
      -1,   234,    -1,   238,    -1,   241,    -1,   253,    -1,   257,
      -1,   258,    -1,   260,    -1,   263,    -1,   153,   155,    -1,
      -1,   154,    -1,   158,   157,    -1,    -1,   156,    -1,     4,
      -1,    46,    -1,    48,    -1,    50,    -1,    13,    -1,    56,
      -1,    57,    -1,    58,    -1,    59,    -1,    82,   107,    83,
      -1,   161,     9,   162,   164,    -1,    -1,   296,    -1,    -1,
     163,    -1,    16,    -1,    14,    -1,     4,    -1,     6,    -1,
      12,    -1,    17,    -1,     8,    -1,   165,    -1,   165,    77,
     164,    -1,     3,    -1,   351,    -1,   161,   157,    11,   167,
      -1,   168,    -1,   168,    84,   167,    -1,   275,   169,    -1,
      -1,   170,    -1,    65,   299,    -1,   172,   167,    -1,   172,
     173,   358,   159,    -1,   172,   173,   358,   174,    -1,   172,
     173,   358,   180,    -1,   172,   173,   358,   169,   184,    -1,
     161,   157,    17,    -1,     3,    -1,    82,   176,   175,    83,
      -1,    -1,   177,    -1,    82,   177,   176,    83,    -1,   161,
      42,   159,    -1,   161,    55,   178,   159,    -1,    -1,   179,
      -1,    78,     3,    79,    -1,    82,   182,   181,    83,    -1,
      -1,   183,    -1,    82,   183,   182,    83,    -1,   161,    42,
      -1,   161,    55,    -1,    82,   186,   185,    83,    -1,    -1,
     187,    -1,    82,   187,   186,    83,    -1,   161,    60,   178,
     159,    -1,   161,    41,   178,   159,    -1,   189,   191,    -1,
      16,   190,    -1,     3,    -1,    65,   357,    -1,   194,   195,
     193,   196,   199,    -1,    -1,   141,    -1,   161,   157,     8,
      -1,     3,    -1,   351,    -1,   200,   197,    -1,    -1,   198,
      -1,    93,   161,   357,    -1,   159,    -1,   202,   201,    -1,
      -1,   200,    -1,    78,    79,    -1,    78,   204,   203,    79,
      -1,    -1,    94,    -1,   205,    -1,   205,    84,   204,    -1,
     206,   207,   208,   211,   209,   358,   210,    -1,    -1,    44,
      -1,    -1,    11,    -1,    -1,    89,    -1,    -1,   212,    -1,
      -1,   213,    -1,   206,    17,   208,   211,   209,   358,   210,
      -1,   161,   357,    -1,     3,    -1,    88,    -1,     3,    -1,
      88,    -1,    65,   299,    -1,   161,   215,    -1,   161,   225,
      -1,   223,   193,    82,   216,    83,    -1,    -1,   217,    -1,
     218,   216,    -1,   153,    -1,   219,    -1,   161,    19,   220,
      -1,   221,    -1,   221,    84,   220,    -1,   224,   222,    -1,
      -1,   361,    -1,     3,    -1,     3,    -1,   223,   193,    85,
     359,    82,   226,    83,    -1,    -1,   227,    -1,   228,   226,
      -1,   153,    -1,   229,    -1,   161,    19,   230,    -1,   231,
      -1,   231,    84,   230,    -1,   224,   232,    -1,    -1,   233,
      -1,    65,   350,    -1,   161,    14,   236,   193,   235,   237,
      -1,    -1,   376,    -1,     3,    -1,    82,   155,    83,    -1,
     161,     4,   239,   193,   235,   240,    -1,     3,    -1,    82,
     155,    83,    -1,   161,    12,   242,   235,   243,    -1,     3,
      -1,    82,   244,    83,    -1,    -1,   246,    -1,   247,    -1,
     248,    -1,   249,    -1,   250,    -1,   251,    -1,   245,   244,
      -1,   172,   173,   358,   180,    -1,   194,   195,   193,   196,
      -1,   254,   193,   202,    -1,   261,   262,   180,    -1,   189,
     235,   252,    -1,    -1,   191,    -1,   254,   193,   202,   256,
      -1,   161,   255,    10,    -1,    -1,    95,    -1,   159,    -1,
     161,     5,   159,    -1,     7,   359,   235,   259,    -1,    82,
     155,    83,    -1,   261,   262,   159,    -1,   261,   262,   174,
      -1,   261,   262,   180,    -1,   161,    15,   202,    -1,    93,
     161,   357,    -1,   264,    -1,   265,    -1,   266,    -1,    49,
      53,   351,    82,    83,    -1,    49,    51,   351,    82,    83,
      -1,    49,    43,   351,    82,   267,    83,    -1,    -1,   268,
      -1,   269,   270,    -1,    -1,   271,    -1,    -1,   273,    -1,
      52,   272,    -1,    -1,    40,   274,    -1,    45,    -1,    54,
      -1,    47,    -1,   277,   276,    -1,    -1,   358,    -1,   278,
     276,    -1,   279,    -1,   280,   276,    -1,   284,    -1,   287,
      -1,   290,    -1,    88,    -1,     3,    -1,    17,   275,    -1,
      11,   275,    -1,    78,   281,    79,    -1,    -1,   282,    -1,
     283,    -1,   283,    84,   282,    -1,   275,    -1,   285,    77,
     224,   286,    -1,    -1,   359,    -1,    -1,   280,    -1,   288,
      -1,   289,    -1,    34,   357,    -1,   275,    32,   357,    -1,
     299,    -1,    87,   293,   292,    -1,    -1,   294,    -1,     3,
      -1,    78,   295,    79,    -1,    -1,   297,    -1,   291,   161,
      -1,   298,   295,    -1,    78,   295,    79,    -1,    80,   295,
      81,    -1,    82,   295,    83,    -1,    -1,    -1,   302,   300,
      -1,    -1,   306,    -1,   299,    -1,   299,    84,   301,    -1,
     303,   338,    -1,    -1,   355,    -1,   304,    -1,    73,     3,
      -1,   354,   302,    -1,   307,   302,    -1,   308,   302,    -1,
     309,    -1,   305,   300,    -1,    65,    -1,    91,   299,    85,
      -1,    34,   357,    -1,    32,   310,   357,    -1,    -1,    91,
      -1,     3,   312,    -1,    -1,   150,    -1,   313,    -1,   322,
      -1,   323,    -1,   327,    -1,   333,    -1,   332,    -1,   337,
      -1,   350,    -1,   314,    -1,   319,    -1,    96,    -1,    97,
      -1,    98,    -1,    99,    -1,    80,   315,    81,    -1,    -1,
     316,    -1,   318,   317,    -1,   318,    84,   316,    -1,    -1,
      84,    -1,   299,    -1,    80,   320,    81,    -1,    80,    85,
      81,    -1,   321,   317,    -1,   321,    84,   320,    -1,   299,
      85,   299,    -1,    37,    -1,    37,    77,     3,    -1,    37,
      80,   299,    81,    -1,    37,    77,    10,    -1,   324,    -1,
     325,    -1,   326,    -1,    36,    77,     3,    -1,    36,    80,
     299,    81,    -1,    36,    77,    10,    -1,    82,   328,   106,
      83,    -1,    -1,   329,    -1,   202,   197,    26,    -1,   349,
     197,    26,    -1,   330,   202,   197,    26,    -1,   330,   349,
     197,    26,    -1,   330,    26,    -1,    80,   331,   299,    81,
      -1,    59,    -1,    56,    -1,    57,    -1,    58,    -1,    77,
       3,    -1,    78,   334,    79,    -1,    -1,   335,    -1,   336,
      -1,   336,    84,   335,    -1,   299,    -1,     3,    85,   299,
      -1,    88,    -1,   311,    -1,   338,   356,    -1,   339,    -1,
     342,    -1,   343,    -1,   344,    -1,   345,    -1,   346,    -1,
     347,    -1,   348,    -1,   338,   333,    -1,   338,   340,   341,
      -1,    -1,   333,    -1,   327,    -1,   338,    77,    10,    -1,
     338,    77,    61,    -1,   338,    77,     3,   312,    -1,   338,
      77,    37,    -1,   338,    77,   100,    -1,   338,    80,   301,
      81,    -1,   338,    68,    -1,   338,    91,    -1,     3,    -1,
       3,    84,   349,    -1,    61,    -1,    63,    -1,    62,    -1,
     353,   352,    -1,    -1,   351,    -1,    64,    -1,    65,    -1,
      66,    -1,    67,    -1,    68,    -1,    69,    -1,    70,    -1,
      71,    -1,    72,    -1,    73,    -1,    74,    -1,    75,    -1,
      76,    -1,    77,    -1,   351,    -1,   351,    -1,   351,    -1,
     368,    -1,   367,    -1,   359,    -1,   361,    -1,   369,    -1,
     370,    -1,   371,    -1,   375,    -1,    85,   161,   357,    -1,
     360,   312,    -1,   360,   312,    77,   359,    -1,     3,    -1,
      78,   362,    79,    -1,    -1,   363,    -1,   364,   203,    -1,
     365,    -1,   365,    84,   364,    -1,   161,   206,   357,    -1,
     206,   366,   358,    -1,     3,    -1,   357,    93,   357,    -1,
     357,    80,    81,    -1,   368,    80,    81,    -1,   357,    91,
      -1,   357,    68,    -1,    12,    71,   372,    72,    -1,    -1,
     373,    -1,   374,    -1,   374,    84,   373,    -1,   359,    -1,
     357,    77,    39,    -1,   357,    77,   101,    -1,    85,   377,
      -1,   359,    -1,   359,    84,   377,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   109,   109,   113,   114,   114,   115,   116,   117,   118,
     119,   120,   121,   121,   125,   126,   127,   128,   132,   133,
     133,   134,   134,   135,   136,   137,   141,   145,   146,   147,
     151,   155,   156,   160,   161,   161,   162,   163,   164,   165,
     169,   170,   170,   171,   172,   173,   174,   175,   176,   177,
     178,   179,   179,   180,   181,   182,   186,   187,   188,   189,
     193,   194,   195,   196,   200,   201,   201,   205,   209,   213,
     220,   221,   221,   222,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   238,   239,   240,   241,
     248,   249,   250,   251,   252,   253,   254,   255,   256,   257,
     258,   259,   260,   261,   262,   263,   263,   264,   265,   265,
     266,   267,   268,   269,   270,   271,   272,   273,   274,   282,
     286,   287,   287,   288,   288,   289,   290,   291,   292,   293,
     294,   295,   296,   297,   298,   299,   303,   304,   305,   306,
     307,   307,   308,   312,   313,   314,   315,   316,   317,   318,
     319,   320,   320,   321,   322,   323,   324,   324,   325,   326,
     327,   327,   328,   329,   330,   331,   332,   332,   333,   334,
     335,   339,   340,   341,   342,   346,   347,   347,   348,   349,
     350,   351,   352,   352,   353,   354,   355,   356,   356,   357,
     358,   359,   359,   360,   361,   362,   363,   363,   364,   364,
     365,   365,   366,   366,   367,   367,   368,   369,   370,   371,
     372,   373,   374,   378,   379,   380,   381,   381,   382,   383,
     384,   385,   386,   387,   388,   389,   389,   390,   391,   392,
     393,   393,   394,   395,   396,   397,   398,   399,   400,   401,
     401,   402,   406,   407,   407,   408,   409,   413,   414,   415,
     419,   420,   421,   422,   422,   423,   424,   425,   426,   427,
     428,   432,   436,   440,   444,   448,   449,   449,   453,   454,
     455,   455,   456,   460,   464,   465,   469,   470,   471,   472,
     473,   477,   478,   479,   480,   481,   482,   483,   483,   484,
     485,   485,   486,   486,   487,   488,   489,   490,   491,   492,
     499,   500,   500,   501,   502,   503,   504,   505,   506,   510,
     514,   518,   519,   523,   524,   524,   525,   526,   527,   531,
     532,   532,   533,   533,   537,   538,   539,   540,   544,   551,
     552,   552,   553,   554,   555,   555,   556,   557,   558,   559,
     560,   561,   562,   569,   570,   570,   571,   572,   576,   577,
     577,   578,   579,   583,   584,   585,   586,   587,   591,   595,
     599,   600,   601,   601,   605,   606,   606,   607,   608,   609,
     610,   611,   612,   613,   617,   618,   619,   620,   621,   622,
     623,   624,   625,   625,   626,   627,   628,   628,   629,   630,
     631,   632,   633,   634,   638,   639,   640,   641,   645,   646,
     647,   648,   649,   650,   654,   655,   655,   656,   657,   658,
     659,   660,   661,   662,   663,   664,   665,   669,   673,   674,
     674,   675,   676,   677,   678,   682,   686,   687,   688,   689,
     690,   691,   692,   693,   694,   695,   699,   700,   701,   701,
     702,   706,   710,   711,   715,   719,   723,   727,   731,   737,
     738,   742,   743,   744,   749,   750,   750,   751,   752,   753,
     754,   755,   756,   757,   758,   759,   760,   761,   762,   763,
     764,   765,   766,   767,   774,   775,   776,   777,   778,   779,
     780,   781,   785,   789,   790,   791,   795,   796,   796,   797,
     798,   799,   800,   801,   802,   806,   810,   811,   815,   819,
     823,   824,   824,   825,   826,   827,   831,   832,   836,   837,
     838
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
       0,   102,   103,   104,   105,   105,   104,   104,   104,   104,
     104,   106,   107,   107,   108,   108,   108,   108,   109,   110,
     110,   111,   111,   109,   112,   112,   113,   114,   115,   115,
     116,   117,   117,   118,   119,   119,   120,   120,   121,   121,
     122,   123,   123,   124,   125,   125,   125,   125,   126,   127,
     127,   128,   128,   129,   130,   131,   132,   132,   133,   134,
     135,   135,   135,   135,   136,   137,   137,   138,   139,   140,
     141,   142,   142,   143,   143,   144,   144,   144,   145,   146,
     146,   147,   147,   148,   148,   149,   150,   151,   151,   152,
     153,   153,   153,   153,   153,   153,   153,   153,   153,   153,
     153,   153,   153,   153,   154,   155,   155,   156,   157,   157,
     158,   158,   158,   158,   158,   158,   158,   158,   158,   159,
     160,   161,   161,   162,   162,   163,   163,   163,   163,   163,
     163,   163,   164,   164,   165,   165,   166,   167,   167,   168,
     169,   169,   170,   171,   171,   171,   171,   171,   172,   173,
     174,   175,   175,   174,   176,   177,   178,   178,   179,   180,
     181,   181,   180,   182,   183,   184,   185,   185,   184,   186,
     187,   188,   189,   190,   191,   192,   193,   193,   194,   195,
     195,   196,   197,   197,   198,   199,   200,   201,   201,   202,
     202,   203,   203,   204,   204,   205,   206,   206,   207,   207,
     208,   208,   209,   209,   210,   210,   205,   205,   211,   211,
     212,   212,   213,   214,   214,   215,   216,   216,   217,   218,
     218,   219,   220,   220,   221,   222,   222,   223,   224,   225,
     226,   226,   227,   228,   228,   229,   230,   230,   231,   232,
     232,   233,   234,   235,   235,   236,   237,   238,   239,   240,
     241,   242,   243,   244,   244,   245,   245,   245,   245,   245,
     246,   247,   248,   249,   250,   251,   252,   252,   253,   254,
     255,   255,   256,   257,   258,   259,   260,   260,   260,   261,
     262,   263,   263,   263,   264,   265,   266,   267,   267,   268,
     269,   269,   270,   270,   271,   272,   273,   274,   274,   274,
     275,   276,   276,   275,   275,   275,   275,   275,   275,   277,
     278,   279,   279,   280,   281,   281,   282,   282,   283,   284,
     285,   285,   286,   286,   287,   287,   288,   289,   290,   291,
     292,   292,   293,   294,   295,   295,   296,   297,   298,   298,
     298,   298,   298,   299,   300,   300,   301,   301,   302,   303,
     303,   302,   304,   305,   305,   305,   305,   306,   307,   308,
     309,   309,   310,   310,   311,   312,   312,   311,   311,   311,
     311,   311,   311,   311,   313,   313,   313,   313,   313,   313,
     313,   314,   315,   315,   316,   316,   317,   317,   318,   319,
     319,   320,   320,   321,   322,   322,   322,   322,   323,   323,
     323,   324,   325,   326,   327,   328,   328,   329,   329,   329,
     329,   329,   330,   331,   331,   331,   331,   332,   333,   334,
     334,   335,   335,   336,   336,   337,   338,   338,   338,   338,
     338,   338,   338,   338,   338,   338,   339,   339,   340,   340,
     341,   342,   343,   343,   344,   345,   346,   347,   348,   349,
     349,   350,   350,   350,   351,   352,   352,   353,   353,   353,
     353,   353,   353,   353,   353,   353,   353,   353,   353,   353,
     353,   354,   355,   356,   357,   357,   357,   357,   357,   357,
     357,   357,   358,   359,   359,   360,   361,   362,   362,   363,
     364,   364,   365,   365,   366,   367,   368,   368,   369,   370,
     371,   372,   372,   373,   373,   374,   375,   375,   376,   377,
     377
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
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
       0,     1,     2,     2,     4,     4,     4,     5,     3,     1,
       4,     0,     1,     4,     3,     4,     0,     1,     3,     4,
       0,     1,     4,     2,     2,     4,     0,     1,     4,     4,
       4,     2,     2,     1,     2,     5,     0,     1,     3,     1,
       1,     2,     0,     1,     3,     1,     2,     0,     1,     2,
       4,     0,     1,     1,     3,     7,     0,     1,     0,     1,
       0,     1,     0,     1,     0,     1,     7,     2,     1,     1,
       1,     1,     2,     2,     2,     5,     0,     1,     2,     1,
       1,     3,     1,     3,     2,     0,     1,     1,     1,     7,
       0,     1,     2,     1,     1,     3,     1,     3,     2,     0,
       1,     2,     6,     0,     1,     1,     3,     6,     1,     3,
       5,     1,     3,     0,     1,     1,     1,     1,     1,     1,
       2,     4,     4,     3,     3,     3,     0,     1,     4,     3,
       0,     1,     1,     3,     4,     3,     3,     3,     3,     3,
       3,     1,     1,     1,     5,     5,     6,     0,     1,     2,
       0,     1,     0,     1,     2,     0,     2,     1,     1,     1,
       2,     0,     1,     2,     1,     2,     1,     1,     1,     1,
       1,     2,     2,     3,     0,     1,     1,     3,     1,     4,
       0,     1,     0,     1,     1,     1,     2,     3,     1,     3,
       0,     1,     1,     3,     0,     1,     2,     2,     3,     3,
       3,     0,     0,     2,     0,     1,     1,     3,     2,     0,
       1,     1,     2,     2,     2,     2,     1,     2,     1,     3,
       2,     3,     0,     1,     2,     0,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     3,     0,     1,     2,     3,     0,     1,     1,     3,
       3,     2,     3,     3,     1,     3,     4,     3,     1,     1,
       1,     3,     4,     3,     4,     0,     1,     3,     3,     4,
       4,     2,     4,     1,     1,     1,     1,     2,     3,     0,
       1,     1,     3,     1,     3,     1,     1,     2,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     3,     0,     1,
       1,     3,     3,     4,     3,     3,     4,     2,     2,     1,
       3,     1,     1,     1,     2,     0,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     2,     4,     1,     3,     0,     1,     2,
       1,     3,     3,     3,     1,     3,     3,     3,     2,     2,
       4,     0,     1,     1,     3,     1,     3,     3,     2,     1,
       3
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
     121,    59,     0,     0,    65,    65,     0,    68,   121,   349,
      21,   349,   121,     0,   457,   458,   459,   460,   461,   462,
     463,   464,   465,   466,   467,   468,   469,   470,     0,     0,
     121,     2,     4,    14,    15,    16,    17,     4,    31,    32,
       9,     0,     0,     4,    60,    61,    62,    63,     4,    90,
     108,    91,    92,   349,    93,     0,    94,     0,    95,    96,
      97,    98,    99,   176,   100,   101,   102,     0,   103,   281,
     282,   283,   121,   122,     4,   344,     0,   351,   472,   455,
     350,   485,   243,   365,   173,   172,    66,    64,    67,   121,
       0,     0,    37,    36,   310,   349,   349,     0,   349,   309,
       0,    20,   108,    24,     0,   301,   301,   304,   301,   306,
       0,   307,   324,   325,   308,   328,    25,   321,    69,    22,
       0,     0,    29,    28,     0,     0,     0,   352,   332,   330,
       1,    13,    11,     5,     7,     8,    56,    57,    58,    10,
       6,   227,   110,     0,   123,     0,   114,     0,     0,   111,
     112,   113,   115,   116,   117,   118,   271,   109,     0,   108,
     213,   176,   214,     0,   310,   349,   143,   137,     0,   140,
     328,     0,   171,   179,   466,   176,   180,     0,   177,     0,
     121,     0,   336,     3,   362,     0,   358,   349,   343,   344,
     345,   349,   349,   356,   471,   349,   365,     0,   394,   451,
     453,   452,     0,   349,   349,   405,   425,   377,   378,   379,
     380,   426,   367,   375,   376,   368,   369,   398,   399,   400,
     370,   372,   371,   373,   348,   428,   429,   430,   431,   432,
     433,   434,   435,   374,   456,   454,     0,     0,   244,     0,
     366,   483,     0,   121,    34,   312,   311,     0,   121,   326,
     476,   477,   475,   474,   478,   479,   480,   481,     0,   318,
       0,   315,   316,   349,   110,     0,   349,     0,   121,   300,
     302,   303,   305,     0,   349,    41,    27,     0,     0,     0,
     334,   329,   331,   248,   176,   273,   127,   128,   131,   129,
     126,   125,   130,     0,   124,   251,   243,   245,   176,   196,
     279,   178,   349,   148,   107,     0,   269,   349,     0,   349,
     139,   141,   174,     0,    71,    73,    75,     0,     0,   121,
     276,   277,   278,   363,     0,   360,     0,   357,   354,   355,
     353,   364,     0,   349,     0,   349,   417,     0,   423,     0,
     420,   421,     0,   388,     0,   383,   386,     0,   386,   449,
       0,   182,   121,   406,     0,   182,   447,   470,   349,   448,
     436,     0,   473,   427,   509,   508,   121,   274,     0,    87,
      89,     0,   119,    30,     0,    33,    35,   501,   197,   196,
       0,     0,   488,   191,   490,   499,     0,     0,   498,     0,
       0,   349,   313,   349,     0,     0,   327,     0,   228,   322,
     346,   347,   349,     0,     0,    42,    41,   121,   121,   287,
       0,     0,   334,   334,   334,     0,   335,   334,   243,   134,
     120,   132,   135,     0,   243,   189,     0,   191,   193,   198,
     136,   121,     0,   138,   144,     0,   145,   146,   142,     0,
     182,   187,     0,     0,    72,     0,     0,   272,   268,   280,
     108,   121,   121,   121,   121,   361,   359,   401,   403,     0,
     395,   397,     0,   349,   418,   349,   390,   349,   381,   349,
     384,   389,   349,   391,     0,   414,   415,   416,   413,   349,
     121,     0,   183,     0,   411,   182,   182,     0,   365,   441,
     444,   442,   445,     0,   440,   437,     0,   121,   106,     0,
      86,     0,   484,    39,    38,   505,     0,   502,   503,     0,
     494,     0,   486,   192,   489,   121,   506,   507,   496,   495,
     497,     0,   317,   349,    26,   482,   323,   319,     0,    51,
      53,    40,    43,    46,    44,    47,    45,   295,     0,   288,
     292,   291,   285,   284,     0,     0,     0,   333,   337,     0,
       0,   121,   250,     0,   207,     0,   196,   199,   200,   200,
     219,   108,     0,   217,   121,   220,     0,   121,   147,   185,
     175,   181,   188,   186,    78,    79,    81,    82,     0,    70,
      74,    76,    77,   163,   164,     0,     0,   152,     0,     0,
       0,     0,   161,     0,     0,   402,   396,   424,   422,   393,
     388,   385,     0,   392,   450,     0,     0,   407,   404,     0,
       0,   408,   443,   446,   510,   104,   275,    88,   500,     0,
     492,   493,   491,   349,     0,    48,   349,    49,    52,   294,
     286,     0,   289,   293,   338,   339,   340,   121,   247,   133,
     108,     0,   243,     0,     0,   121,   254,   255,   256,   257,
     258,   259,   176,     0,   121,   242,   190,   194,   201,     0,
       0,     0,   215,   218,   121,     0,   121,   121,     0,     0,
       0,   154,     0,     0,   157,   156,   150,     0,   153,   164,
     159,   163,   162,   412,   184,   409,   410,   504,     0,    18,
      54,    55,   349,   297,   299,   298,   296,     0,     0,   149,
       0,   266,   176,   252,   260,     0,     0,     0,   208,   209,
     202,   202,   221,   222,   225,   233,   108,     0,   231,   121,
     234,   156,   156,     0,     0,   167,     0,     0,    80,    83,
      84,    85,     0,   155,     0,    50,   249,     0,   267,   265,
       0,   263,   121,   264,   246,   210,   211,     0,   203,     0,
       0,   224,   226,     0,   229,   232,     0,     0,   165,   168,
     158,    23,   261,   262,     0,   204,   204,   223,   239,   235,
     236,   170,   169,   349,   206,   205,   195,     0,   238,   240,
       0,   212,   241,   237
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    29,    30,   134,   131,   242,    32,    33,   100,   118,
     101,    34,    35,   121,    36,    37,    38,   375,    91,   376,
      39,   404,   405,   406,   407,   528,   627,   408,   628,   690,
      40,    41,    42,    43,    44,    87,    45,    46,    47,   178,
     443,   314,   315,   444,   574,   575,   576,   577,   240,   368,
     369,    48,   498,   499,   157,   158,   159,   671,    49,    50,
     293,   294,   420,   421,    51,   166,   167,   310,   311,    52,
      53,   168,   321,   586,   451,   452,   673,   674,   322,   591,
     453,   454,   568,   724,   666,   667,    54,    55,    85,   172,
      56,   179,    57,   175,   439,   481,   482,   570,   440,   573,
     441,   514,   427,   428,   380,   559,   659,   747,   774,   710,
     748,   775,    58,   160,   562,   563,   564,   565,   712,   713,
     751,   161,   714,   162,   717,   718,   719,   720,   769,   770,
     778,   779,    59,   237,   298,   655,    60,   284,   638,    61,
     296,   552,   644,   645,   646,   647,   648,   649,   650,   651,
     739,    62,    63,   163,   448,    64,    65,   367,    66,    67,
     181,    68,    69,    70,    71,   538,   539,   540,   632,   541,
     629,   633,   696,   169,   269,   105,   106,   107,   108,   260,
     261,   262,   109,   110,   527,   111,   112,   113,   114,    72,
     281,   129,   282,   415,    73,   416,   417,   170,   188,   116,
      75,    76,    77,   189,   190,   191,   192,   193,   324,   211,
     241,   212,   213,   344,   345,   470,   346,   214,   347,   348,
     215,   216,   217,   218,   219,   220,   352,   353,   354,   479,
     221,   222,   339,   340,   341,   223,   224,   225,   361,   495,
     226,   227,   228,   229,   230,   231,   232,   355,   233,    78,
     235,    79,   195,    80,   363,   370,   270,   250,    83,   251,
     381,   382,   383,   384,   511,   252,   253,   254,   255,   256,
     506,   507,   508,   257,   238,   365
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -518
static const yytype_int16 yypact[] =
{
    1063,  -518,    56,    61,    77,    77,     6,  -518,  1137,  1346,
    1700,  1700,  1137,   176,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,    90,  -518,  -518,  -518,  -518,   104,   124,
     719,  -518,   127,  -518,  -518,  -518,  -518,   127,  -518,  -518,
    -518,   218,    85,   127,  -518,  -518,  -518,  -518,   127,  -518,
    1217,  -518,  -518,  1450,  -518,   170,  -518,   416,  -518,  -518,
    -518,  -518,  -518,   119,  -518,  -518,  -518,   151,  -518,  -518,
    -518,  -518,   163,  -518,   127,  1546,   103,  -518,  -518,  1714,
    -518,  -518,   205,   213,  -518,  -518,  -518,  -518,  -518,   805,
     265,     6,  -518,  -518,  -518,  1475,  1475,    43,  1268,  -518,
     214,  -518,   303,  -518,    53,   219,   219,  -518,   219,  -518,
     234,  -518,  -518,  -518,  -518,   172,  -518,  -518,  -518,  -518,
     232,     6,  -518,  -518,  1714,  1714,  1714,  -518,  -518,   240,
    -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,   321,     6,   275,   341,  -518,   342,   268,  -518,
    -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,   101,   303,
    -518,   119,  -518,   338,   270,  1372,  -518,   272,   219,    17,
    -518,    43,  -518,  -518,  -518,   119,  -518,    56,  -518,   268,
     163,   281,  -518,  -518,   259,    43,  -518,  1700,  -518,  1546,
    -518,  1700,  1700,  -518,  -518,  1700,   213,   221,   225,  -518,
    -518,  -518,   354,   607,  1625,    47,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  -518,  1574,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  -518,  -518,  -518,    56,   282,  -518,    43,
    -518,   290,   283,  1137,   345,   340,   340,   299,     8,   116,
    -518,  -518,  -518,   293,  -518,  -518,  -518,  -518,   291,   340,
     296,  -518,   292,  1602,  -518,   363,  1700,    43,   163,  -518,
    -518,  -518,  -518,   378,  1700,   289,  -518,   300,   301,   302,
     173,  -518,  -518,  -518,   119,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  1500,  -518,  -518,   205,  -518,   119,    71,
    -518,  -518,  1475,  -518,  -518,    63,  -518,  1475,    29,  1700,
    -518,  -518,   116,   268,   355,   304,   307,     6,    43,   805,
    -518,  -518,  -518,  -518,    43,   116,   308,  -518,  -518,  -518,
    -518,  -518,   195,  1700,   207,  1700,  -518,   309,  -518,   310,
    -518,   312,   305,   313,   316,  -518,   315,   322,   318,   320,
     264,   294,  1063,  -518,    65,   294,  -518,    35,  1700,  -518,
    -518,   323,  -518,  -518,   326,  -518,    68,  -518,   334,   327,
     116,    56,  -518,  -518,    19,  -518,  -518,    56,  -518,   368,
     411,   336,  -518,   324,   332,  -518,     9,   339,  -518,    43,
     343,  1602,  -518,  1475,   335,     6,   116,    43,  -518,   344,
     347,  -518,  1475,   348,   349,  -518,   289,   891,   977,    13,
     352,   356,   173,   173,   173,   359,  -518,   173,   205,  -518,
    -518,   346,  -518,   358,   205,  -518,    43,   324,   357,   171,
    -518,    74,    56,  -518,  -518,   360,  -518,  -518,  -518,     6,
     294,   268,    56,   371,  -518,    56,    48,  -518,  -518,   116,
     590,   125,   163,   135,   163,   116,  -518,  -518,  -518,   369,
    -518,  -518,   370,  1700,  -518,  1526,  -518,  1700,  -518,  1666,
    -518,  -518,  1666,  -518,   424,  -518,  -518,  -518,  -518,  1700,
     163,   402,  -518,   366,  -518,   294,   294,   426,   213,  -518,
    -518,  -518,  -518,   372,  -518,  -518,    56,    68,  -518,   374,
    -518,    43,  -518,  -518,  -518,  -518,   382,  -518,   375,    43,
    -518,   219,  -518,  -518,  -518,    10,  -518,  -518,  -518,   116,
    -518,   376,  -518,  1647,  -518,   116,  -518,  -518,   373,   306,
    -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,   377,  -518,
     415,  -518,  -518,  -518,   385,   380,   388,  -518,  -518,   386,
    1500,    84,  -518,   391,   116,   396,   150,  -518,   387,   387,
    -518,   211,   394,  -518,    74,  -518,   414,   163,  -518,  -518,
    -518,  -518,  -518,  -518,  -518,   413,  -518,  -518,   149,  -518,
    -518,  -518,  -518,     6,   198,   423,   417,  -518,   457,   418,
     448,   421,  -518,   463,   425,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,   313,  -518,  -518,   429,    43,  -518,  -518,   480,
     481,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,    56,
     116,  -518,  -518,  1684,     6,  -518,  1700,   427,  -518,  -518,
    -518,   109,  -518,  -518,  -518,  -518,  -518,    68,  -518,  -518,
     284,   509,   205,   416,   430,    84,  -518,  -518,  -518,  -518,
    -518,  -518,   119,   151,    68,  -518,  -518,  -518,  -518,    38,
      38,   378,  -518,  -518,   190,    16,   199,   163,    56,    48,
      56,  -518,   511,     6,  -518,   437,  -518,     6,  -518,  -518,
    -518,  -518,  -518,  -518,   116,  -518,  -518,  -518,   438,  -518,
    -518,  -518,  1475,  -518,  -518,  -518,  -518,   433,   160,  -518,
     219,   170,   119,  -518,  -518,   268,   436,   439,  -518,  -518,
      44,    44,  -518,   435,   446,  -518,  1234,   442,  -518,   190,
    -518,   437,   437,   485,   444,  -518,   468,   447,  -518,  -518,
    -518,  -518,   450,  -518,     6,  -518,  -518,   436,  -518,  -518,
     268,  -518,   163,  -518,  -518,  -518,  -518,   219,  -518,   219,
     378,  -518,  -518,   378,  -518,  -518,     6,     6,  -518,  -518,
    -518,  -518,  -518,  -518,   131,   466,   466,  -518,   467,  -518,
     449,  -518,  -518,  1700,  -518,  -518,  -518,   266,  -518,  -518,
     378,  -518,  -518,  -518
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -518,  -518,  -518,    30,    22,   505,   496,  -518,   440,  -245,
    -518,  -518,  -518,   297,  -518,  -518,   165,  -518,  -518,  -518,
     500,   136,  -518,  -518,  -518,  -149,  -518,  -518,  -518,  -518,
    -518,  -518,   174,  -518,  -518,   541,  -518,  -518,  -518,  -518,
    -518,   102,  -518,  -518,  -119,  -518,  -518,  -518,  -518,    50,
    -518,     5,  -518,  -462,  -518,   -96,  -518,    -5,  -518,    -6,
    -518,  -518,     2,  -518,  -518,  -246,  -518,   245,  -518,    31,
    -517,   -87,   247,  -518,   105,   108,  -457,  -518,  -293,  -518,
     106,   110,  -518,  -518,  -111,  -102,  -518,  -514,  -518,  -136,
    -518,  -154,  -512,   -77,  -172,  -326,  -518,  -518,   126,  -518,
    -143,   143,    15,  -518,  -271,  -518,    14,  -139,  -192,   -85,
    -518,  -518,  -518,  -518,    12,  -518,  -518,  -518,  -171,  -518,
    -518,  -518,  -259,  -518,  -142,  -518,  -518,  -518,  -202,  -518,
    -518,  -518,  -518,  -277,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,   -65,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -509,  -518,  -518,  -518,  -518,  -518,  -518,  -508,
     -71,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,     7,   231,  -518,  -518,  -518,   182,  -518,
     191,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  -181,  -518,  -518,  -518,     0,   397,  -216,
      80,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,  -518,
    -173,  -518,  -518,  -518,   118,   241,  -518,  -518,   120,  -518,
    -518,  -518,  -518,  -518,  -518,   229,  -518,  -518,  -518,  -518,
    -518,   367,  -518,   132,  -518,  -518,  -518,  -518,  -518,  -518,
    -518,  -518,  -518,  -518,  -518,  -518,  -518,  -322,  -179,   -55,
    -518,  -518,  -518,  -518,  -518,   -72,  -164,    24,  -150,  -118,
    -518,  -518,    86,  -518,  -518,  -518,  -518,  -518,  -518,  -415,
    -518,   -13,  -518,  -518,  -518,   111
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -488
static const yytype_int16 yytable[] =
{
      74,    90,   176,   102,   308,   300,   265,   305,    93,   115,
     119,   120,   123,    92,   399,   437,   104,   122,   394,   423,
     194,   313,    31,   331,   234,   249,    82,   316,   429,   487,
      74,   582,   486,   117,   641,   615,   317,   642,   488,   643,
     103,   708,   652,   653,     8,   489,    81,   745,   516,   267,
     349,    81,   378,  -290,   378,   247,   430,   721,   401,    81,
     247,   433,   351,   304,    84,   537,   182,   135,   349,   277,
     278,   279,   490,   139,  -121,     2,   722,   117,   140,   266,
       1,     2,   309,  -121,     3,   267,   244,  -487,    89,    74,
       3,   484,   102,   127,   309,    28,   491,    28,   115,   312,
       3,    89,   245,   246,   183,   259,   196,   128,   509,   301,
     517,   319,   302,   325,   571,   378,   276,    13,   303,   117,
     117,   248,   117,    13,   130,   299,   709,   350,   641,   103,
     418,   642,   746,   643,   194,   492,   652,   653,   285,   197,
     198,   549,   493,   299,   424,   431,   521,   553,   432,  -121,
     425,  -105,   604,  -121,   693,    28,   694,  -216,    28,   609,
     610,    28,  -121,   695,   199,   200,   201,  -253,   301,   362,
     138,    28,   259,   681,   318,   697,   320,   303,    86,    86,
     202,   203,   557,   204,   385,   205,   679,   326,   558,   117,
     177,   206,   707,   386,   378,   396,   387,     2,   457,   207,
     208,   209,   210,   338,   343,   458,     3,   388,  -151,   389,
     460,   485,    28,   133,   141,   142,   143,   461,  -160,   124,
     144,  -270,    28,   145,   146,   147,   148,   125,  -121,   126,
     661,   544,   545,   546,   669,   171,   548,    28,   422,    13,
       6,   670,   379,   123,   180,     9,   449,    11,   122,    12,
      28,   412,   455,   413,   730,   414,   274,   149,  -346,   150,
     364,   151,   397,   119,   756,   757,   395,   152,   153,   154,
     155,   328,   329,  -230,   400,   330,   672,    28,   624,   286,
    -156,   287,  -166,   288,   239,   429,    28,   289,   264,   290,
     236,   291,   292,   426,  -270,   316,   243,   146,   332,   148,
     263,   333,   334,   434,   268,   335,   156,   264,   402,   438,
     403,   273,   447,   450,   275,   612,   146,   519,   280,    74,
     475,   476,   477,   478,   283,   525,   117,   199,   200,   201,
     149,   117,   150,   459,   151,   462,   626,   271,   267,   272,
     152,   153,   154,   155,   295,   297,   299,   621,   306,   149,
     323,   150,    74,   151,   554,  -149,   307,   336,   400,   152,
     153,   154,   155,   319,   366,   701,   372,   371,   374,   504,
     377,   497,   267,   390,   483,   392,   393,   391,   688,   156,
     303,   398,   409,   410,   411,   442,   466,   480,   445,   464,
     524,   119,   446,   456,   463,   502,   465,   468,   467,   469,
     259,   505,   472,   471,   474,   205,   500,    74,    74,   529,
     496,   501,   378,   743,   510,   512,   515,   117,   513,   173,
     518,   523,   165,   550,   520,   561,   117,   349,   607,   534,
     536,   274,   531,   530,   569,   542,   560,   620,   547,   543,
     551,   556,   567,   579,   762,   585,   588,   590,   593,   608,
     595,   596,   611,   613,   618,   631,   566,   616,   625,   619,
     630,   635,   623,   597,   634,   338,   578,   599,   637,   600,
     581,   636,   602,   654,   606,   656,   658,   662,   675,   605,
      14,    15,    16,    17,    18,    19,    20,    21,    22,   174,
      24,    25,    26,    27,   768,   422,   664,   668,   705,   677,
     676,   678,   497,   679,   680,   681,   685,   686,   682,   379,
     683,   692,   699,   703,   732,   672,   736,   734,   742,   750,
     364,   768,   744,   119,   248,   754,   721,   758,   722,   760,
     759,   773,   777,   780,   684,   132,   737,   136,   258,   503,
     373,   137,   532,   735,   698,   640,    88,   580,   740,   728,
     426,   617,   639,   435,   700,   436,   727,   589,   561,   587,
     594,   665,   741,   592,   725,   738,   702,   572,   763,   560,
     555,   657,   749,   660,   776,   711,   663,   755,   783,   767,
     704,   526,   706,   765,   522,   766,   327,   601,   176,   473,
     494,   360,   603,   141,   142,   143,   752,   598,   782,   144,
    -270,   622,   145,   146,   147,   148,   687,   614,     0,     0,
     337,     0,     0,     0,     0,     0,     0,     0,     0,   689,
       0,     0,     0,   119,     0,     0,   691,     0,     0,     0,
       0,     0,   583,     0,     0,     0,   149,     0,   150,   640,
     151,     0,   497,   505,     0,   584,   152,   153,   154,   155,
       0,     0,     0,     0,     0,     0,     0,     0,   716,   497,
     723,   726,     0,     0,     0,     0,     0,     0,   733,   715,
       0,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,   156,  -419,     0,     0,     0,
       0,     0,   578,   729,   731,     0,     0,     0,     0,   529,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   716,     0,     0,   117,     0,     0,   -12,
       0,     0,     1,     0,   715,     0,     2,     0,     0,   761,
       0,     0,     0,     0,     0,     3,   764,     4,   -12,     5,
     -12,     6,     0,     7,     8,     0,     9,    10,    11,     0,
      12,   771,   772,     0,     0,  -349,  -349,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    13,     0,
       0,     0,     0,   781,     0,     0,     0,     0,     0,     0,
    -349,  -349,  -349,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,  -349,     0,  -349,
       0,  -349,   -12,     0,     0,     0,    28,  -349,     1,     0,
       0,     0,     2,     0,     0,  -349,  -349,  -349,  -349,     0,
       0,     3,     0,     4,     0,     5,     0,     6,     0,     7,
       8,     0,     9,    10,    11,     0,    12,     0,     0,     0,
       0,  -349,  -349,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    13,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,  -349,  -349,  -349,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,  -349,     0,  -349,     0,  -349,   -12,     0,
       0,     0,    28,  -349,     1,     0,     0,     0,     2,     0,
       0,  -349,  -349,  -349,  -349,     0,     0,     3,     0,     4,
       0,     5,     0,     6,     0,     7,     8,     0,     9,    10,
      11,     0,    12,     0,     0,     0,     0,  -349,  -349,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      13,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,  -349,  -349,  -349,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,  -349,
       0,  -349,     0,  -349,     0,     0,     0,   533,    28,  -349,
       1,     0,     0,     0,     2,     0,     0,  -349,  -349,  -349,
    -349,     0,     0,     3,     0,     4,     0,     5,     0,     6,
       0,     7,     8,     0,     9,    10,    11,     0,    12,     0,
       0,     0,     0,  -349,  -349,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    13,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -349,  -349,
    -349,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,  -349,     0,  -349,     0,  -349,
       0,     0,     0,   535,    28,  -349,     1,     0,     0,     0,
       2,     0,     0,  -349,  -349,  -349,  -349,     0,     0,     3,
       0,     4,     0,     5,     0,     6,     0,     7,     8,     0,
       9,    10,    11,     0,    12,     0,     0,     0,     0,  -349,
    -349,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    13,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,  -349,  -349,  -349,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,  -349,     0,  -349,     2,  -349,     0,     0,     0,     0,
      28,  -349,     0,     3,     0,     0,     0,     0,     0,  -349,
    -349,  -349,  -349,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,  -349,  -349,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    13,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,  -349,  -349,
    -349,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,  -349,     0,  -349,     0,  -349,
     141,   142,   143,     0,    28,  -349,   144,  -270,     0,   145,
     146,   147,   148,  -349,  -349,  -349,  -349,   141,   142,   143,
       0,     0,     0,   144,  -270,     0,   145,   146,   147,   148,
       0,     0,     0,   753,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   149,     0,   150,     0,   151,     0,     0,
       0,    94,  -121,   152,   153,   154,   155,     0,     0,    95,
     149,  -121,   150,     0,   151,    96,     0,     0,     0,     0,
     152,   153,   154,   155,     0,     0,     0,     0,     0,     0,
       0,     0,    97,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   156,     0,  -121,     0,  -121,     0,  -121,     0,
       0,     0,     0,     0,  -121,  -121,  -121,  -121,     0,   156,
       0,     0,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,   165,  -314,     0,    94,
    -121,     0,     0,     0,   -19,    28,    99,    95,     0,  -121,
       0,     0,     0,    96,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    94,     0,     0,     0,     0,
      97,     0,     0,    95,     0,     0,     0,     0,     0,    96,
       0,     0,  -121,     0,  -121,     0,  -121,     0,     0,     0,
       0,     0,  -121,  -121,  -121,  -121,    97,     0,     0,     0,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,    98,     0,     0,     0,     0,     0,
       0,     0,   -19,    28,    99,     0,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
     165,  -314,     0,   164,     0,     0,     0,     0,     0,     0,
      99,    95,     0,     0,     0,     0,     0,    96,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    94,     0,
       0,     0,     0,     0,    97,     0,    95,     0,     0,     0,
       0,     0,    96,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   419,     0,     0,     0,     0,     0,    97,
       0,     0,     0,     0,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,   165,   337,
       0,     0,     0,     0,     0,     0,     0,     0,    99,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,   165,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    99,    14,    15,    16,    17,    18,    19,
      20,    21,    22,   174,    24,    25,    26,    27,   184,     0,
     185,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,     0,     0,     0,     0,     0,     0,
      14,   186,    16,    17,    18,    19,    20,    21,    22,   174,
      24,    25,    26,    27,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   187,    14,    15,
      16,    17,   356,    19,    20,    21,    22,   174,    24,    25,
      26,   357,   203,     0,   358,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   359,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
       0,     0,     0,     0,     0,     0,     0,     0,   -21,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,     0,     0,     0,  -382,     0,     0,     0,
     342,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,     0,     0,     0,     0,   -21,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,     0,     0,     0,  -387,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,     0,   -21,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,    14,    15,
      16,    17,    18,    19,    20,    21,    22,   174,    24,    25,
      26,    27
};

static const yytype_int16 yycheck[] =
{
       0,     6,    57,     9,   168,   148,   102,   161,     8,     9,
      10,    11,    12,     8,   273,   308,     9,    12,   263,   296,
      75,   175,     0,   196,    79,    97,     2,   177,   299,   355,
      30,   446,   354,     9,   551,   497,   179,   551,     3,   551,
       9,     3,   551,   551,    25,    10,     3,     3,    39,    32,
       3,     3,    44,    40,    44,    12,   302,    41,   274,     3,
      12,   307,   205,   159,     3,    52,    72,    37,     3,   124,
     125,   126,    37,    43,     3,     7,    60,    53,    48,    26,
       3,     7,    65,    12,    16,    32,    91,    79,    82,    89,
      16,    26,    98,     3,    65,    87,    61,    87,    98,   171,
      16,    82,    95,    96,    74,    98,     3,     3,   379,     8,
     101,    82,    11,   185,   440,    44,   121,    49,    17,    95,
      96,    78,    98,    49,     0,    78,    88,    80,   645,    98,
     284,   645,    88,   645,   189,   100,   645,   645,   143,    36,
      37,   418,   358,    78,   298,    82,   391,   424,    85,    78,
      79,    83,   474,     3,    45,    87,    47,    83,    87,   485,
     486,    87,    12,    54,    61,    62,    63,    83,     8,   224,
      85,    87,   165,    42,   180,   637,   181,    17,     4,     5,
      77,    78,    11,    80,    68,    82,    55,   187,    17,   165,
      71,    88,   654,    77,    44,   267,    80,     7,     3,    96,
      97,    98,    99,   203,   204,    10,    16,    91,    83,    93,
       3,   354,    87,    86,     3,     4,     5,    10,    83,    43,
       9,    10,    87,    12,    13,    14,    15,    51,    78,    53,
      19,   412,   413,   414,    85,    65,   417,    87,   293,    49,
      22,    92,   248,   243,    93,    27,   318,    29,   243,    31,
      87,    78,   324,    80,   669,    82,    84,    46,    86,    48,
     236,    50,   268,   263,   721,   722,   266,    56,    57,    58,
      59,   191,   192,    83,   274,   195,    78,    87,   523,     4,
      82,     6,    83,     8,    71,   556,    87,    12,     4,    14,
      85,    16,    17,   299,    10,   445,    31,    13,    77,    15,
      86,    80,    77,   308,    85,    80,    95,     4,    19,   309,
      21,    77,   317,   319,    82,   488,    13,   389,    78,   319,
      56,    57,    58,    59,     3,   397,   302,    61,    62,    63,
      46,   307,    48,   333,    50,   335,    30,   106,    32,   108,
      56,    57,    58,    59,     3,     3,    78,   511,    10,    46,
      91,    48,   352,    50,   426,    85,    84,     3,   358,    56,
      57,    58,    59,    82,    82,   642,    83,    77,    23,   374,
      71,   366,    32,    80,   352,    79,    84,    86,   623,    95,
      17,     3,    82,    82,    82,    30,    81,    93,    84,    79,
     395,   391,    85,    85,    85,   371,    84,    81,    85,    84,
     393,   377,    84,    81,    84,    82,    72,   407,   408,   402,
      84,    84,    44,   706,     3,    79,    84,   393,    94,     3,
      81,    86,    78,    77,    81,   431,   402,     3,    26,   407,
     408,    84,    83,    85,   439,    83,   431,   509,    79,    83,
      82,    84,    82,    72,   737,   451,   452,   453,   454,    83,
      81,    81,    26,    81,    72,    40,   432,    83,    85,    84,
      83,    81,    86,   463,    79,   465,   442,   467,    82,   469,
     446,    83,   472,    82,   480,    79,    89,    83,    55,   479,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,   753,   550,    82,    84,   652,    42,
      83,    83,   497,    55,    83,    42,    26,    26,    83,   515,
      81,    84,     3,    83,     3,    78,    83,    79,    82,    84,
     496,   780,    83,   523,    78,    83,    41,    83,    60,    79,
      83,    65,    65,    84,   606,    30,   700,    41,    98,   374,
     243,    41,   406,   692,   640,   551,     5,   445,   702,   668,
     556,   501,   550,   308,   641,   308,   667,   452,   564,   451,
     454,   567,   705,   453,   666,   701,   643,   441,   740,   564,
     427,   556,   711,   559,   766,   660,   564,   719,   780,   750,
     645,   399,   653,   747,   393,   749,   189,   469,   643,   348,
     361,   224,   472,     3,     4,     5,   714,   465,   777,     9,
      10,   515,    12,    13,    14,    15,   619,   496,    -1,    -1,
       3,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   624,
      -1,    -1,    -1,   623,    -1,    -1,   626,    -1,    -1,    -1,
      -1,    -1,    42,    -1,    -1,    -1,    46,    -1,    48,   645,
      50,    -1,   637,   619,    -1,    55,    56,    57,    58,    59,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   664,   654,
     666,   667,    -1,    -1,    -1,    -1,    -1,    -1,   673,   664,
      -1,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    95,    79,    -1,    -1,    -1,
      -1,    -1,   668,   669,   670,    -1,    -1,    -1,    -1,   692,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   719,    -1,    -1,   692,    -1,    -1,     0,
      -1,    -1,     3,    -1,   719,    -1,     7,    -1,    -1,   734,
      -1,    -1,    -1,    -1,    -1,    16,   742,    18,    19,    20,
      21,    22,    -1,    24,    25,    -1,    27,    28,    29,    -1,
      31,   756,   757,    -1,    -1,    36,    37,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,    -1,
      -1,    -1,    -1,   773,    -1,    -1,    -1,    -1,    -1,    -1,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    -1,    80,
      -1,    82,    83,    -1,    -1,    -1,    87,    88,     3,    -1,
      -1,    -1,     7,    -1,    -1,    96,    97,    98,    99,    -1,
      -1,    16,    -1,    18,    -1,    20,    -1,    22,    -1,    24,
      25,    -1,    27,    28,    29,    -1,    31,    -1,    -1,    -1,
      -1,    36,    37,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    49,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    -1,    80,    -1,    82,    83,    -1,
      -1,    -1,    87,    88,     3,    -1,    -1,    -1,     7,    -1,
      -1,    96,    97,    98,    99,    -1,    -1,    16,    -1,    18,
      -1,    20,    -1,    22,    -1,    24,    25,    -1,    27,    28,
      29,    -1,    31,    -1,    -1,    -1,    -1,    36,    37,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      49,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      -1,    80,    -1,    82,    -1,    -1,    -1,    86,    87,    88,
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
      77,    78,    -1,    80,     7,    82,    -1,    -1,    -1,    -1,
      87,    88,    -1,    16,    -1,    -1,    -1,    -1,    -1,    96,
      97,    98,    99,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    36,    37,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    49,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    -1,    80,    -1,    82,
       3,     4,     5,    -1,    87,    88,     9,    10,    -1,    12,
      13,    14,    15,    96,    97,    98,    99,     3,     4,     5,
      -1,    -1,    -1,     9,    10,    -1,    12,    13,    14,    15,
      -1,    -1,    -1,    19,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    46,    -1,    48,    -1,    50,    -1,    -1,
      -1,     3,     4,    56,    57,    58,    59,    -1,    -1,    11,
      46,    13,    48,    -1,    50,    17,    -1,    -1,    -1,    -1,
      56,    57,    58,    59,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    34,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    95,    -1,    46,    -1,    48,    -1,    50,    -1,
      -1,    -1,    -1,    -1,    56,    57,    58,    59,    -1,    95,
      -1,    -1,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    -1,     3,
       4,    -1,    -1,    -1,    86,    87,    88,    11,    -1,    13,
      -1,    -1,    -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     3,    -1,    -1,    -1,    -1,
      34,    -1,    -1,    11,    -1,    -1,    -1,    -1,    -1,    17,
      -1,    -1,    46,    -1,    48,    -1,    50,    -1,    -1,    -1,
      -1,    -1,    56,    57,    58,    59,    34,    -1,    -1,    -1,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    86,    87,    88,    -1,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    79,    -1,     3,    -1,    -1,    -1,    -1,    -1,    -1,
      88,    11,    -1,    -1,    -1,    -1,    -1,    17,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,    -1,
      -1,    -1,    -1,    -1,    34,    -1,    11,    -1,    -1,    -1,
      -1,    -1,    17,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     3,    -1,    -1,    -1,    -1,    -1,    34,
      -1,    -1,    -1,    -1,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,     3,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    88,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    88,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    32,    -1,
      34,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    -1,    -1,    -1,    -1,    -1,    -1,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    91,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    -1,    80,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    91,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    86,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    -1,    -1,    -1,    81,    -1,    -1,    -1,
      85,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    -1,    -1,    -1,    -1,    82,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    -1,    -1,    -1,    81,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    -1,    79,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     3,     7,    16,    18,    20,    22,    24,    25,    27,
      28,    29,    31,    49,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    87,   103,
     104,   106,   108,   109,   113,   114,   116,   117,   118,   122,
     132,   133,   134,   135,   136,   138,   139,   140,   153,   160,
     161,   166,   171,   172,   188,   189,   192,   194,   214,   234,
     238,   241,   253,   254,   257,   258,   260,   261,   263,   264,
     265,   266,   291,   296,   299,   302,   303,   304,   351,   353,
     355,     3,   359,   360,     3,   190,   134,   137,   137,    82,
     159,   120,   153,   299,     3,    11,    17,    34,    78,    88,
     110,   112,   161,   171,   275,   277,   278,   279,   280,   284,
     285,   287,   288,   289,   290,   299,   301,   359,   111,   299,
     299,   115,   153,   299,    43,    51,    53,     3,     3,   293,
       0,   106,   107,    86,   105,   105,   108,   122,    85,   105,
     105,     3,     4,     5,     9,    12,    13,    14,    15,    46,
      48,    50,    56,    57,    58,    59,    95,   156,   157,   158,
     215,   223,   225,   255,     3,    78,   167,   168,   173,   275,
     299,    65,   191,     3,    73,   195,   351,    71,   141,   193,
      93,   262,   161,   105,    32,    34,    65,    91,   300,   305,
     306,   307,   308,   309,   351,   354,     3,    36,    37,    61,
      62,    63,    77,    78,    80,    82,    88,    96,    97,    98,
      99,   311,   313,   314,   319,   322,   323,   324,   325,   326,
     327,   332,   333,   337,   338,   339,   342,   343,   344,   345,
     346,   347,   348,   350,   351,   352,    85,   235,   376,    71,
     150,   312,   107,    31,   159,   275,   275,    12,    78,   357,
     359,   361,   367,   368,   369,   370,   371,   375,   110,   275,
     281,   282,   283,    86,     4,   157,    26,    32,    85,   276,
     358,   276,   276,    77,    84,    82,   159,   351,   351,   351,
      78,   292,   294,     3,   239,   159,     4,     6,     8,    12,
      14,    16,    17,   162,   163,     3,   242,     3,   236,    78,
     202,     8,    11,    17,   157,   193,    10,    84,   358,    65,
     169,   170,   357,   193,   143,   144,   360,   202,   161,    82,
     159,   174,   180,    91,   310,   357,   299,   300,   302,   302,
     302,   312,    77,    80,    77,    80,     3,     3,   299,   334,
     335,   336,    85,   299,   315,   316,   318,   320,   321,     3,
      80,   202,   328,   329,   330,   349,    68,    77,    80,    91,
     333,   340,   351,   356,   359,   377,    82,   259,   151,   152,
     357,    77,    83,   115,    23,   119,   121,    71,    44,   161,
     206,   362,   363,   364,   365,    68,    77,    80,    91,    93,
      80,    86,    79,    84,   111,   299,   357,   161,     3,   224,
     299,   301,    19,    21,   123,   124,   125,   126,   129,    82,
      82,    82,    78,    80,    82,   295,   297,   298,   193,     3,
     164,   165,   351,   235,   193,    79,   161,   204,   205,   206,
     167,    82,    85,   167,   159,   169,   174,   180,   299,   196,
     200,   202,    30,   142,   145,    84,    85,   159,   256,   357,
     161,   176,   177,   182,   183,   357,    85,     3,    10,   299,
       3,    10,   299,    85,    79,    84,    81,    85,    81,    84,
     317,    81,    84,   317,    84,    56,    57,    58,    59,   331,
      93,   197,   198,   106,    26,   202,   349,   197,     3,    10,
      37,    61,   100,   301,   327,   341,    84,   153,   154,   155,
      72,    84,   359,   118,   159,   359,   372,   373,   374,   206,
       3,   366,    79,    94,   203,    84,    39,   101,    81,   357,
      81,   111,   282,    86,   159,   357,   280,   286,   127,   275,
      85,    83,   123,    86,   106,    86,   106,    52,   267,   268,
     269,   271,    83,    83,   295,   295,   295,    79,   295,   235,
      77,    82,   243,   235,   357,   203,    84,    11,    17,   207,
     153,   161,   216,   217,   218,   219,   359,    82,   184,   159,
     199,   197,   200,   201,   146,   147,   148,   149,   359,    72,
     143,   359,   371,    42,    55,   161,   175,   177,   161,   176,
     161,   181,   183,   161,   182,    81,    81,   299,   335,   299,
     299,   316,   299,   320,   349,   299,   161,    26,    83,   197,
     197,    26,   312,    81,   377,   155,    83,   151,    72,    84,
     357,   358,   364,    86,   111,    85,    30,   128,   130,   272,
      83,    40,   270,   273,    79,    81,    83,    82,   240,   164,
     161,   172,   189,   194,   244,   245,   246,   247,   248,   249,
     250,   251,   254,   261,    82,   237,    79,   204,    89,   208,
     208,    19,    83,   216,    82,   161,   186,   187,    84,    85,
      92,   159,    78,   178,   179,    55,    83,    42,    83,    55,
      83,    42,    83,    81,   357,    26,    26,   373,   111,   159,
     131,   299,    84,    45,    47,    54,   274,   155,   157,     3,
     173,   235,   195,    83,   244,   193,   262,   155,     3,    88,
     211,   211,   220,   221,   224,   153,   161,   226,   227,   228,
     229,    41,    60,   161,   185,   187,   161,   186,   146,   359,
     371,   359,     3,   159,    79,   127,    83,   358,   191,   252,
     193,   202,    82,   180,    83,     3,    88,   209,   212,   209,
      84,   222,   361,    19,    83,   226,   178,   178,    83,    83,
      79,   159,   180,   196,   161,   358,   358,   220,   224,   230,
     231,   159,   159,    65,   210,   213,   210,    65,   232,   233,
      84,   299,   350,   230
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
        case 3:
#line 113 "grammar.y"
    { ;}
    break;

  case 5:
#line 114 "grammar.y"
    { ;}
    break;

  case 6:
#line 115 "grammar.y"
    { ;}
    break;

  case 7:
#line 116 "grammar.y"
    { ;}
    break;

  case 8:
#line 117 "grammar.y"
    { ;}
    break;

  case 9:
#line 118 "grammar.y"
    { ;}
    break;

  case 10:
#line 119 "grammar.y"
    { ;}
    break;

  case 11:
#line 120 "grammar.y"
    { ;}
    break;

  case 13:
#line 121 "grammar.y"
    { ;}
    break;

  case 14:
#line 125 "grammar.y"
    { ;}
    break;

  case 15:
#line 126 "grammar.y"
    { ;}
    break;

  case 16:
#line 127 "grammar.y"
    { ;}
    break;

  case 17:
#line 128 "grammar.y"
    { ;}
    break;

  case 18:
#line 132 "grammar.y"
    { ;}
    break;

  case 20:
#line 133 "grammar.y"
    { ;}
    break;

  case 22:
#line 134 "grammar.y"
    { ;}
    break;

  case 23:
#line 135 "grammar.y"
    { ;}
    break;

  case 24:
#line 136 "grammar.y"
    { ;}
    break;

  case 25:
#line 137 "grammar.y"
    { ;}
    break;

  case 26:
#line 141 "grammar.y"
    { ;}
    break;

  case 27:
#line 145 "grammar.y"
    { ;}
    break;

  case 28:
#line 146 "grammar.y"
    { ;}
    break;

  case 29:
#line 147 "grammar.y"
    { ;}
    break;

  case 30:
#line 151 "grammar.y"
    { ;}
    break;

  case 31:
#line 155 "grammar.y"
    { ;}
    break;

  case 32:
#line 156 "grammar.y"
    { ;}
    break;

  case 33:
#line 160 "grammar.y"
    { ;}
    break;

  case 35:
#line 161 "grammar.y"
    { ;}
    break;

  case 36:
#line 162 "grammar.y"
    { ;}
    break;

  case 37:
#line 163 "grammar.y"
    { ;}
    break;

  case 38:
#line 164 "grammar.y"
    { ;}
    break;

  case 39:
#line 165 "grammar.y"
    { ;}
    break;

  case 40:
#line 169 "grammar.y"
    { ;}
    break;

  case 42:
#line 170 "grammar.y"
    { ;}
    break;

  case 43:
#line 171 "grammar.y"
    { ;}
    break;

  case 44:
#line 172 "grammar.y"
    { ;}
    break;

  case 45:
#line 173 "grammar.y"
    { ;}
    break;

  case 46:
#line 174 "grammar.y"
    { ;}
    break;

  case 47:
#line 175 "grammar.y"
    { ;}
    break;

  case 48:
#line 176 "grammar.y"
    { ;}
    break;

  case 49:
#line 177 "grammar.y"
    { ;}
    break;

  case 50:
#line 178 "grammar.y"
    { ;}
    break;

  case 52:
#line 179 "grammar.y"
    { ;}
    break;

  case 53:
#line 180 "grammar.y"
    { ;}
    break;

  case 54:
#line 181 "grammar.y"
    { ;}
    break;

  case 55:
#line 182 "grammar.y"
    { ;}
    break;

  case 56:
#line 186 "grammar.y"
    { ;}
    break;

  case 57:
#line 187 "grammar.y"
    { ;}
    break;

  case 58:
#line 188 "grammar.y"
    { ;}
    break;

  case 59:
#line 189 "grammar.y"
    { ;}
    break;

  case 60:
#line 193 "grammar.y"
    { ;}
    break;

  case 61:
#line 194 "grammar.y"
    { ;}
    break;

  case 62:
#line 195 "grammar.y"
    { ;}
    break;

  case 63:
#line 196 "grammar.y"
    { ;}
    break;

  case 64:
#line 200 "grammar.y"
    { ;}
    break;

  case 66:
#line 201 "grammar.y"
    { ;}
    break;

  case 67:
#line 205 "grammar.y"
    { ;}
    break;

  case 68:
#line 209 "grammar.y"
    { ;}
    break;

  case 69:
#line 213 "grammar.y"
    { ;}
    break;

  case 70:
#line 220 "grammar.y"
    { ;}
    break;

  case 72:
#line 221 "grammar.y"
    { ;}
    break;

  case 73:
#line 222 "grammar.y"
    { ;}
    break;

  case 74:
#line 223 "grammar.y"
    { ;}
    break;

  case 75:
#line 224 "grammar.y"
    { ;}
    break;

  case 76:
#line 225 "grammar.y"
    { ;}
    break;

  case 77:
#line 226 "grammar.y"
    { ;}
    break;

  case 78:
#line 227 "grammar.y"
    { ;}
    break;

  case 79:
#line 228 "grammar.y"
    { ;}
    break;

  case 80:
#line 229 "grammar.y"
    { ;}
    break;

  case 81:
#line 230 "grammar.y"
    { ;}
    break;

  case 82:
#line 231 "grammar.y"
    { ;}
    break;

  case 83:
#line 232 "grammar.y"
    { ;}
    break;

  case 84:
#line 233 "grammar.y"
    { ;}
    break;

  case 85:
#line 234 "grammar.y"
    { ;}
    break;

  case 86:
#line 238 "grammar.y"
    { ;}
    break;

  case 87:
#line 239 "grammar.y"
    { ;}
    break;

  case 88:
#line 240 "grammar.y"
    { ;}
    break;

  case 89:
#line 241 "grammar.y"
    { ;}
    break;

  case 90:
#line 248 "grammar.y"
    { ;}
    break;

  case 91:
#line 249 "grammar.y"
    { ;}
    break;

  case 92:
#line 250 "grammar.y"
    { ;}
    break;

  case 93:
#line 251 "grammar.y"
    { ;}
    break;

  case 94:
#line 252 "grammar.y"
    { ;}
    break;

  case 95:
#line 253 "grammar.y"
    { ;}
    break;

  case 96:
#line 254 "grammar.y"
    { ;}
    break;

  case 97:
#line 255 "grammar.y"
    { ;}
    break;

  case 98:
#line 256 "grammar.y"
    { ;}
    break;

  case 99:
#line 257 "grammar.y"
    { ;}
    break;

  case 100:
#line 258 "grammar.y"
    { ;}
    break;

  case 101:
#line 259 "grammar.y"
    { ;}
    break;

  case 102:
#line 260 "grammar.y"
    { ;}
    break;

  case 103:
#line 261 "grammar.y"
    { ;}
    break;

  case 104:
#line 262 "grammar.y"
    { ;}
    break;

  case 106:
#line 263 "grammar.y"
    { ;}
    break;

  case 107:
#line 264 "grammar.y"
    { ;}
    break;

  case 109:
#line 265 "grammar.y"
    { ;}
    break;

  case 110:
#line 266 "grammar.y"
    { ;}
    break;

  case 111:
#line 267 "grammar.y"
    { ;}
    break;

  case 112:
#line 268 "grammar.y"
    { ;}
    break;

  case 113:
#line 269 "grammar.y"
    { ;}
    break;

  case 114:
#line 270 "grammar.y"
    { ;}
    break;

  case 115:
#line 271 "grammar.y"
    { ;}
    break;

  case 116:
#line 272 "grammar.y"
    { ;}
    break;

  case 117:
#line 273 "grammar.y"
    { ;}
    break;

  case 118:
#line 274 "grammar.y"
    { ;}
    break;

  case 119:
#line 282 "grammar.y"
    { ;}
    break;

  case 120:
#line 286 "grammar.y"
    { ;}
    break;

  case 122:
#line 287 "grammar.y"
    { ;}
    break;

  case 124:
#line 288 "grammar.y"
    { ;}
    break;

  case 125:
#line 289 "grammar.y"
    { ;}
    break;

  case 126:
#line 290 "grammar.y"
    { ;}
    break;

  case 127:
#line 291 "grammar.y"
    { ;}
    break;

  case 128:
#line 292 "grammar.y"
    { ;}
    break;

  case 129:
#line 293 "grammar.y"
    { ;}
    break;

  case 130:
#line 294 "grammar.y"
    { ;}
    break;

  case 131:
#line 295 "grammar.y"
    { ;}
    break;

  case 132:
#line 296 "grammar.y"
    { ;}
    break;

  case 133:
#line 297 "grammar.y"
    { ;}
    break;

  case 134:
#line 298 "grammar.y"
    { ;}
    break;

  case 135:
#line 299 "grammar.y"
    { ;}
    break;

  case 136:
#line 303 "grammar.y"
    { ;}
    break;

  case 137:
#line 304 "grammar.y"
    { ;}
    break;

  case 138:
#line 305 "grammar.y"
    { ;}
    break;

  case 139:
#line 306 "grammar.y"
    { ;}
    break;

  case 141:
#line 307 "grammar.y"
    { ;}
    break;

  case 142:
#line 308 "grammar.y"
    { ;}
    break;

  case 143:
#line 312 "grammar.y"
    { ;}
    break;

  case 144:
#line 313 "grammar.y"
    { ;}
    break;

  case 145:
#line 314 "grammar.y"
    { ;}
    break;

  case 146:
#line 315 "grammar.y"
    { ;}
    break;

  case 147:
#line 316 "grammar.y"
    { ;}
    break;

  case 148:
#line 317 "grammar.y"
    { ;}
    break;

  case 149:
#line 318 "grammar.y"
    { ;}
    break;

  case 150:
#line 319 "grammar.y"
    { ;}
    break;

  case 152:
#line 320 "grammar.y"
    { ;}
    break;

  case 153:
#line 321 "grammar.y"
    { ;}
    break;

  case 154:
#line 322 "grammar.y"
    { ;}
    break;

  case 155:
#line 323 "grammar.y"
    { ;}
    break;

  case 157:
#line 324 "grammar.y"
    { ;}
    break;

  case 158:
#line 325 "grammar.y"
    { ;}
    break;

  case 159:
#line 326 "grammar.y"
    { ;}
    break;

  case 161:
#line 327 "grammar.y"
    { ;}
    break;

  case 162:
#line 328 "grammar.y"
    { ;}
    break;

  case 163:
#line 329 "grammar.y"
    { ;}
    break;

  case 164:
#line 330 "grammar.y"
    { ;}
    break;

  case 165:
#line 331 "grammar.y"
    { ;}
    break;

  case 167:
#line 332 "grammar.y"
    { ;}
    break;

  case 168:
#line 333 "grammar.y"
    { ;}
    break;

  case 169:
#line 334 "grammar.y"
    { ;}
    break;

  case 170:
#line 335 "grammar.y"
    { ;}
    break;

  case 171:
#line 339 "grammar.y"
    { ;}
    break;

  case 172:
#line 340 "grammar.y"
    { ;}
    break;

  case 173:
#line 341 "grammar.y"
    { ;}
    break;

  case 174:
#line 342 "grammar.y"
    { ;}
    break;

  case 175:
#line 346 "grammar.y"
    { ;}
    break;

  case 177:
#line 347 "grammar.y"
    { ;}
    break;

  case 178:
#line 348 "grammar.y"
    { ;}
    break;

  case 179:
#line 349 "grammar.y"
    { ;}
    break;

  case 180:
#line 350 "grammar.y"
    { ;}
    break;

  case 181:
#line 351 "grammar.y"
    { ;}
    break;

  case 183:
#line 352 "grammar.y"
    { ;}
    break;

  case 184:
#line 353 "grammar.y"
    { ;}
    break;

  case 185:
#line 354 "grammar.y"
    { ;}
    break;

  case 186:
#line 355 "grammar.y"
    { ;}
    break;

  case 188:
#line 356 "grammar.y"
    { ;}
    break;

  case 189:
#line 357 "grammar.y"
    { ;}
    break;

  case 190:
#line 358 "grammar.y"
    { ;}
    break;

  case 192:
#line 359 "grammar.y"
    { ;}
    break;

  case 193:
#line 360 "grammar.y"
    { ;}
    break;

  case 194:
#line 361 "grammar.y"
    { ;}
    break;

  case 195:
#line 362 "grammar.y"
    { ;}
    break;

  case 197:
#line 363 "grammar.y"
    { ;}
    break;

  case 199:
#line 364 "grammar.y"
    { ;}
    break;

  case 201:
#line 365 "grammar.y"
    { ;}
    break;

  case 203:
#line 366 "grammar.y"
    { ;}
    break;

  case 205:
#line 367 "grammar.y"
    { ;}
    break;

  case 206:
#line 368 "grammar.y"
    { ;}
    break;

  case 207:
#line 369 "grammar.y"
    { ;}
    break;

  case 208:
#line 370 "grammar.y"
    { ;}
    break;

  case 209:
#line 371 "grammar.y"
    { ;}
    break;

  case 210:
#line 372 "grammar.y"
    { ;}
    break;

  case 211:
#line 373 "grammar.y"
    { ;}
    break;

  case 212:
#line 374 "grammar.y"
    { ;}
    break;

  case 213:
#line 378 "grammar.y"
    { ;}
    break;

  case 214:
#line 379 "grammar.y"
    { ;}
    break;

  case 215:
#line 380 "grammar.y"
    { ;}
    break;

  case 217:
#line 381 "grammar.y"
    { ;}
    break;

  case 218:
#line 382 "grammar.y"
    { ;}
    break;

  case 219:
#line 383 "grammar.y"
    { ;}
    break;

  case 220:
#line 384 "grammar.y"
    { ;}
    break;

  case 221:
#line 385 "grammar.y"
    { ;}
    break;

  case 222:
#line 386 "grammar.y"
    { ;}
    break;

  case 223:
#line 387 "grammar.y"
    { ;}
    break;

  case 224:
#line 388 "grammar.y"
    { ;}
    break;

  case 226:
#line 389 "grammar.y"
    { ;}
    break;

  case 227:
#line 390 "grammar.y"
    { ;}
    break;

  case 228:
#line 391 "grammar.y"
    { ;}
    break;

  case 229:
#line 392 "grammar.y"
    { ;}
    break;

  case 231:
#line 393 "grammar.y"
    { ;}
    break;

  case 232:
#line 394 "grammar.y"
    { ;}
    break;

  case 233:
#line 395 "grammar.y"
    { ;}
    break;

  case 234:
#line 396 "grammar.y"
    { ;}
    break;

  case 235:
#line 397 "grammar.y"
    { ;}
    break;

  case 236:
#line 398 "grammar.y"
    { ;}
    break;

  case 237:
#line 399 "grammar.y"
    { ;}
    break;

  case 238:
#line 400 "grammar.y"
    { ;}
    break;

  case 240:
#line 401 "grammar.y"
    { ;}
    break;

  case 241:
#line 402 "grammar.y"
    { ;}
    break;

  case 242:
#line 406 "grammar.y"
    { ;}
    break;

  case 244:
#line 407 "grammar.y"
    { ;}
    break;

  case 245:
#line 408 "grammar.y"
    { ;}
    break;

  case 246:
#line 409 "grammar.y"
    { ;}
    break;

  case 247:
#line 413 "grammar.y"
    { ;}
    break;

  case 248:
#line 414 "grammar.y"
    { ;}
    break;

  case 249:
#line 415 "grammar.y"
    { ;}
    break;

  case 250:
#line 419 "grammar.y"
    { ;}
    break;

  case 251:
#line 420 "grammar.y"
    { ;}
    break;

  case 252:
#line 421 "grammar.y"
    { ;}
    break;

  case 254:
#line 422 "grammar.y"
    { ;}
    break;

  case 255:
#line 423 "grammar.y"
    { ;}
    break;

  case 256:
#line 424 "grammar.y"
    { ;}
    break;

  case 257:
#line 425 "grammar.y"
    { ;}
    break;

  case 258:
#line 426 "grammar.y"
    { ;}
    break;

  case 259:
#line 427 "grammar.y"
    { ;}
    break;

  case 260:
#line 428 "grammar.y"
    { ;}
    break;

  case 261:
#line 432 "grammar.y"
    { ;}
    break;

  case 262:
#line 436 "grammar.y"
    { ;}
    break;

  case 263:
#line 440 "grammar.y"
    { ;}
    break;

  case 264:
#line 444 "grammar.y"
    { ;}
    break;

  case 265:
#line 448 "grammar.y"
    { ;}
    break;

  case 267:
#line 449 "grammar.y"
    { ;}
    break;

  case 268:
#line 453 "grammar.y"
    { ;}
    break;

  case 269:
#line 454 "grammar.y"
    { ;}
    break;

  case 271:
#line 455 "grammar.y"
    { ;}
    break;

  case 272:
#line 456 "grammar.y"
    { ;}
    break;

  case 273:
#line 460 "grammar.y"
    { ;}
    break;

  case 274:
#line 464 "grammar.y"
    { ;}
    break;

  case 275:
#line 465 "grammar.y"
    { ;}
    break;

  case 276:
#line 469 "grammar.y"
    { ;}
    break;

  case 277:
#line 470 "grammar.y"
    { ;}
    break;

  case 278:
#line 471 "grammar.y"
    { ;}
    break;

  case 279:
#line 472 "grammar.y"
    { ;}
    break;

  case 280:
#line 473 "grammar.y"
    { ;}
    break;

  case 281:
#line 477 "grammar.y"
    { ;}
    break;

  case 282:
#line 478 "grammar.y"
    { ;}
    break;

  case 283:
#line 479 "grammar.y"
    { ;}
    break;

  case 284:
#line 480 "grammar.y"
    { ;}
    break;

  case 285:
#line 481 "grammar.y"
    { ;}
    break;

  case 286:
#line 482 "grammar.y"
    { ;}
    break;

  case 288:
#line 483 "grammar.y"
    { ;}
    break;

  case 289:
#line 484 "grammar.y"
    { ;}
    break;

  case 291:
#line 485 "grammar.y"
    { ;}
    break;

  case 293:
#line 486 "grammar.y"
    { ;}
    break;

  case 294:
#line 487 "grammar.y"
    { ;}
    break;

  case 295:
#line 488 "grammar.y"
    { ;}
    break;

  case 296:
#line 489 "grammar.y"
    { ;}
    break;

  case 297:
#line 490 "grammar.y"
    { ;}
    break;

  case 298:
#line 491 "grammar.y"
    { ;}
    break;

  case 299:
#line 492 "grammar.y"
    { ;}
    break;

  case 300:
#line 499 "grammar.y"
    { ;}
    break;

  case 302:
#line 500 "grammar.y"
    { ;}
    break;

  case 303:
#line 501 "grammar.y"
    { ;}
    break;

  case 304:
#line 502 "grammar.y"
    { ;}
    break;

  case 305:
#line 503 "grammar.y"
    { ;}
    break;

  case 306:
#line 504 "grammar.y"
    { ;}
    break;

  case 307:
#line 505 "grammar.y"
    { ;}
    break;

  case 308:
#line 506 "grammar.y"
    { ;}
    break;

  case 309:
#line 510 "grammar.y"
    { ;}
    break;

  case 310:
#line 514 "grammar.y"
    { ;}
    break;

  case 311:
#line 518 "grammar.y"
    { ;}
    break;

  case 312:
#line 519 "grammar.y"
    { ;}
    break;

  case 313:
#line 523 "grammar.y"
    { ;}
    break;

  case 315:
#line 524 "grammar.y"
    { ;}
    break;

  case 316:
#line 525 "grammar.y"
    { ;}
    break;

  case 317:
#line 526 "grammar.y"
    { ;}
    break;

  case 318:
#line 527 "grammar.y"
    { ;}
    break;

  case 319:
#line 531 "grammar.y"
    { ;}
    break;

  case 321:
#line 532 "grammar.y"
    { ;}
    break;

  case 323:
#line 533 "grammar.y"
    { ;}
    break;

  case 324:
#line 537 "grammar.y"
    { ;}
    break;

  case 325:
#line 538 "grammar.y"
    { ;}
    break;

  case 326:
#line 539 "grammar.y"
    { ;}
    break;

  case 327:
#line 540 "grammar.y"
    { ;}
    break;

  case 328:
#line 544 "grammar.y"
    { ;}
    break;

  case 329:
#line 551 "grammar.y"
    { ;}
    break;

  case 331:
#line 552 "grammar.y"
    { ;}
    break;

  case 332:
#line 553 "grammar.y"
    { ;}
    break;

  case 333:
#line 554 "grammar.y"
    { ;}
    break;

  case 335:
#line 555 "grammar.y"
    { ;}
    break;

  case 336:
#line 556 "grammar.y"
    { ;}
    break;

  case 337:
#line 557 "grammar.y"
    { ;}
    break;

  case 338:
#line 558 "grammar.y"
    { ;}
    break;

  case 339:
#line 559 "grammar.y"
    { ;}
    break;

  case 340:
#line 560 "grammar.y"
    { ;}
    break;

  case 341:
#line 561 "grammar.y"
    { ;}
    break;

  case 342:
#line 562 "grammar.y"
    { ;}
    break;

  case 343:
#line 569 "grammar.y"
    { ;}
    break;

  case 345:
#line 570 "grammar.y"
    { ;}
    break;

  case 346:
#line 571 "grammar.y"
    { ;}
    break;

  case 347:
#line 572 "grammar.y"
    { ;}
    break;

  case 348:
#line 576 "grammar.y"
    { ;}
    break;

  case 350:
#line 577 "grammar.y"
    { ;}
    break;

  case 351:
#line 578 "grammar.y"
    { ;}
    break;

  case 352:
#line 579 "grammar.y"
    { ;}
    break;

  case 353:
#line 583 "grammar.y"
    { ;}
    break;

  case 354:
#line 584 "grammar.y"
    { ;}
    break;

  case 355:
#line 585 "grammar.y"
    { ;}
    break;

  case 356:
#line 586 "grammar.y"
    { ;}
    break;

  case 357:
#line 587 "grammar.y"
    { ;}
    break;

  case 358:
#line 591 "grammar.y"
    { ;}
    break;

  case 359:
#line 595 "grammar.y"
    { ;}
    break;

  case 360:
#line 599 "grammar.y"
    { ;}
    break;

  case 361:
#line 600 "grammar.y"
    { ;}
    break;

  case 363:
#line 601 "grammar.y"
    { ;}
    break;

  case 364:
#line 605 "grammar.y"
    { ;}
    break;

  case 366:
#line 606 "grammar.y"
    { ;}
    break;

  case 367:
#line 607 "grammar.y"
    { ;}
    break;

  case 368:
#line 608 "grammar.y"
    { ;}
    break;

  case 369:
#line 609 "grammar.y"
    { ;}
    break;

  case 370:
#line 610 "grammar.y"
    { ;}
    break;

  case 371:
#line 611 "grammar.y"
    { ;}
    break;

  case 372:
#line 612 "grammar.y"
    { ;}
    break;

  case 373:
#line 613 "grammar.y"
    { ;}
    break;

  case 374:
#line 617 "grammar.y"
    { ;}
    break;

  case 375:
#line 618 "grammar.y"
    { ;}
    break;

  case 376:
#line 619 "grammar.y"
    { ;}
    break;

  case 377:
#line 620 "grammar.y"
    { ;}
    break;

  case 378:
#line 621 "grammar.y"
    { ;}
    break;

  case 379:
#line 622 "grammar.y"
    { ;}
    break;

  case 380:
#line 623 "grammar.y"
    { ;}
    break;

  case 381:
#line 624 "grammar.y"
    { ;}
    break;

  case 383:
#line 625 "grammar.y"
    { ;}
    break;

  case 384:
#line 626 "grammar.y"
    { ;}
    break;

  case 385:
#line 627 "grammar.y"
    { ;}
    break;

  case 387:
#line 628 "grammar.y"
    { ;}
    break;

  case 388:
#line 629 "grammar.y"
    { ;}
    break;

  case 389:
#line 630 "grammar.y"
    { ;}
    break;

  case 390:
#line 631 "grammar.y"
    { ;}
    break;

  case 391:
#line 632 "grammar.y"
    { ;}
    break;

  case 392:
#line 633 "grammar.y"
    { ;}
    break;

  case 393:
#line 634 "grammar.y"
    { ;}
    break;

  case 394:
#line 638 "grammar.y"
    { ;}
    break;

  case 395:
#line 639 "grammar.y"
    { ;}
    break;

  case 396:
#line 640 "grammar.y"
    { ;}
    break;

  case 397:
#line 641 "grammar.y"
    { ;}
    break;

  case 398:
#line 645 "grammar.y"
    { ;}
    break;

  case 399:
#line 646 "grammar.y"
    { ;}
    break;

  case 400:
#line 647 "grammar.y"
    { ;}
    break;

  case 401:
#line 648 "grammar.y"
    { ;}
    break;

  case 402:
#line 649 "grammar.y"
    { ;}
    break;

  case 403:
#line 650 "grammar.y"
    { ;}
    break;

  case 404:
#line 654 "grammar.y"
    { ;}
    break;

  case 406:
#line 655 "grammar.y"
    { ;}
    break;

  case 407:
#line 656 "grammar.y"
    { ;}
    break;

  case 408:
#line 657 "grammar.y"
    { ;}
    break;

  case 409:
#line 658 "grammar.y"
    { ;}
    break;

  case 410:
#line 659 "grammar.y"
    { ;}
    break;

  case 411:
#line 660 "grammar.y"
    { ;}
    break;

  case 412:
#line 661 "grammar.y"
    { ;}
    break;

  case 413:
#line 662 "grammar.y"
    { ;}
    break;

  case 414:
#line 663 "grammar.y"
    { ;}
    break;

  case 415:
#line 664 "grammar.y"
    { ;}
    break;

  case 416:
#line 665 "grammar.y"
    { ;}
    break;

  case 417:
#line 669 "grammar.y"
    { ;}
    break;

  case 418:
#line 673 "grammar.y"
    { ;}
    break;

  case 420:
#line 674 "grammar.y"
    { ;}
    break;

  case 421:
#line 675 "grammar.y"
    { ;}
    break;

  case 422:
#line 676 "grammar.y"
    { ;}
    break;

  case 423:
#line 677 "grammar.y"
    { ;}
    break;

  case 424:
#line 678 "grammar.y"
    { ;}
    break;

  case 425:
#line 682 "grammar.y"
    { ;}
    break;

  case 426:
#line 686 "grammar.y"
    { ;}
    break;

  case 427:
#line 687 "grammar.y"
    { ;}
    break;

  case 428:
#line 688 "grammar.y"
    { ;}
    break;

  case 429:
#line 689 "grammar.y"
    { ;}
    break;

  case 430:
#line 690 "grammar.y"
    { ;}
    break;

  case 431:
#line 691 "grammar.y"
    { ;}
    break;

  case 432:
#line 692 "grammar.y"
    { ;}
    break;

  case 433:
#line 693 "grammar.y"
    { ;}
    break;

  case 434:
#line 694 "grammar.y"
    { ;}
    break;

  case 435:
#line 695 "grammar.y"
    { ;}
    break;

  case 436:
#line 699 "grammar.y"
    { ;}
    break;

  case 437:
#line 700 "grammar.y"
    { ;}
    break;

  case 439:
#line 701 "grammar.y"
    { ;}
    break;

  case 440:
#line 702 "grammar.y"
    { ;}
    break;

  case 441:
#line 706 "grammar.y"
    { ;}
    break;

  case 442:
#line 710 "grammar.y"
    { ;}
    break;

  case 443:
#line 711 "grammar.y"
    { ;}
    break;

  case 444:
#line 715 "grammar.y"
    { ;}
    break;

  case 445:
#line 719 "grammar.y"
    { ;}
    break;

  case 446:
#line 723 "grammar.y"
    { ;}
    break;

  case 447:
#line 727 "grammar.y"
    { ;}
    break;

  case 448:
#line 731 "grammar.y"
    { ;}
    break;

  case 449:
#line 737 "grammar.y"
    { ;}
    break;

  case 450:
#line 738 "grammar.y"
    { ;}
    break;

  case 451:
#line 742 "grammar.y"
    { ;}
    break;

  case 452:
#line 743 "grammar.y"
    { ;}
    break;

  case 453:
#line 744 "grammar.y"
    { ;}
    break;

  case 454:
#line 749 "grammar.y"
    { ;}
    break;

  case 456:
#line 750 "grammar.y"
    { ;}
    break;

  case 457:
#line 751 "grammar.y"
    { ;}
    break;

  case 458:
#line 752 "grammar.y"
    { ;}
    break;

  case 459:
#line 753 "grammar.y"
    { ;}
    break;

  case 460:
#line 754 "grammar.y"
    { ;}
    break;

  case 461:
#line 755 "grammar.y"
    { ;}
    break;

  case 462:
#line 756 "grammar.y"
    { ;}
    break;

  case 463:
#line 757 "grammar.y"
    { ;}
    break;

  case 464:
#line 758 "grammar.y"
    { ;}
    break;

  case 465:
#line 759 "grammar.y"
    { ;}
    break;

  case 466:
#line 760 "grammar.y"
    { ;}
    break;

  case 467:
#line 761 "grammar.y"
    { ;}
    break;

  case 468:
#line 762 "grammar.y"
    { ;}
    break;

  case 469:
#line 763 "grammar.y"
    { ;}
    break;

  case 470:
#line 764 "grammar.y"
    { ;}
    break;

  case 471:
#line 765 "grammar.y"
    { ;}
    break;

  case 472:
#line 766 "grammar.y"
    { ;}
    break;

  case 473:
#line 767 "grammar.y"
    { ;}
    break;

  case 474:
#line 774 "grammar.y"
    { ;}
    break;

  case 475:
#line 775 "grammar.y"
    { ;}
    break;

  case 476:
#line 776 "grammar.y"
    { ;}
    break;

  case 477:
#line 777 "grammar.y"
    { ;}
    break;

  case 478:
#line 778 "grammar.y"
    { ;}
    break;

  case 479:
#line 779 "grammar.y"
    { ;}
    break;

  case 480:
#line 780 "grammar.y"
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
#line 789 "grammar.y"
    { ;}
    break;

  case 484:
#line 790 "grammar.y"
    { ;}
    break;

  case 485:
#line 791 "grammar.y"
    { ;}
    break;

  case 486:
#line 795 "grammar.y"
    { ;}
    break;

  case 488:
#line 796 "grammar.y"
    { ;}
    break;

  case 489:
#line 797 "grammar.y"
    { ;}
    break;

  case 490:
#line 798 "grammar.y"
    { ;}
    break;

  case 491:
#line 799 "grammar.y"
    { ;}
    break;

  case 492:
#line 800 "grammar.y"
    { ;}
    break;

  case 493:
#line 801 "grammar.y"
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
#line 810 "grammar.y"
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

  case 500:
#line 823 "grammar.y"
    { ;}
    break;

  case 502:
#line 824 "grammar.y"
    { ;}
    break;

  case 503:
#line 825 "grammar.y"
    { ;}
    break;

  case 504:
#line 826 "grammar.y"
    { ;}
    break;

  case 505:
#line 827 "grammar.y"
    { ;}
    break;

  case 506:
#line 831 "grammar.y"
    { ;}
    break;

  case 507:
#line 832 "grammar.y"
    { ;}
    break;

  case 508:
#line 836 "grammar.y"
    { ;}
    break;

  case 509:
#line 837 "grammar.y"
    { ;}
    break;

  case 510:
#line 838 "grammar.y"
    { ;}
    break;


/* Line 1267 of yacc.c.  */
#line 4855 "grammar.mm"
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


#line 840 "grammar.y"


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
