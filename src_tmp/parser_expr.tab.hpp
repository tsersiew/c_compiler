/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

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

#ifndef YY_YY_SRC_TMP_PARSER_EXPR_TAB_HPP_INCLUDED
# define YY_YY_SRC_TMP_PARSER_EXPR_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 1 "src_tmp/parser_expr.y" /* yacc.c:1909  */

  #include <iostream>
  #include <string>  
  #include "../src/helper.hpp"
  #include "../src/DataStructures/Function.h"
  #include "../src/DataStructures/Loop.h"
  #include "../src/DataStructures/Variable.h"
  #include "../src/DataStructures/Constant.h"
  #include "../src/DataStructures/Conditional.h"
  #include "../src/DataStructures/VarDeclaration.h"
  #include "../src/DataStructures/ExpressionStatement.h"
  #include "../src/DataStructures/Expression.h"
  
  using namespace std;

  //! This is to fix problems when generating C++
  int yylex();
  int yyerror(const char* s);

  //extern Function* root;
  

#line 67 "src_tmp/parser_expr.tab.hpp" /* yacc.c:1909  */

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    AUTO = 258,
    DOUBLE = 259,
    INT = 260,
    STRUCT = 261,
    BREAK = 262,
    ELSE = 263,
    LONG = 264,
    SWITCH = 265,
    CASE = 266,
    ENUM = 267,
    REGISTER = 268,
    TYPEDEF = 269,
    CHAR = 270,
    EXTERN = 271,
    RETURN = 272,
    UNION = 273,
    CONST = 274,
    FLOAT = 275,
    SHORT = 276,
    UNSIGNED = 277,
    CONTINUE = 278,
    FOR = 279,
    SIGNED = 280,
    VOID = 281,
    DEFAULT = 282,
    GOTO = 283,
    VOLATILE = 284,
    DO = 285,
    IF = 286,
    STATIC = 287,
    WHILE = 288,
    LSQUARE = 289,
    RSQUARE = 290,
    LBRACKET = 291,
    RBRACKET = 292,
    LCURLY = 293,
    RCURLY = 294,
    THREE_DOTS = 295,
    DOT = 296,
    PTR_OP = 297,
    PLUS_PLUS = 298,
    MINUS_MINUS = 299,
    SIZEOF = 300,
    LSHIFT = 301,
    RSHIFT = 302,
    LESS_OR_EQUAL = 303,
    MORE_OR_EQUAL = 304,
    LOGICAL_EQUALITY = 305,
    LOGICAL_INEQUALITY = 306,
    LOGICAL_AND = 307,
    LOGICAL_OR = 308,
    Q_MARK = 309,
    COLON = 310,
    MULT_EQUALS = 311,
    DIV_EQUALS = 312,
    PERCENT_EQUALS = 313,
    PLUS_EQUALS = 314,
    MINUS_EQUALS = 315,
    LSHIFT_EQUALS = 316,
    RSHIFT_EQUALS = 317,
    AND_EQUALS = 318,
    XOR_EQUALS = 319,
    OR_EQUALS = 320,
    COMMA = 321,
    HASH = 322,
    HASH_HASH = 323,
    SEMI_COLON = 324,
    EQUALS = 325,
    BITWISE_OR = 326,
    BITWISE_AND = 327,
    BITWISE_XOR = 328,
    MULT = 329,
    PLUS = 330,
    MINUS = 331,
    WAVE = 332,
    EXL_MARK = 333,
    DIV = 334,
    PERCENT = 335,
    LOGICAL_MORE = 336,
    LOGICAL_LESS = 337,
    INTEGER_CONST = 338,
    FLOATING_CONST = 339,
    CHAR_CONST = 340,
    IDENTIFIER = 341,
    STRING_LITERAL = 342
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 24 "src_tmp/parser_expr.y" /* yacc.c:1909  */

  char* strval;
  uint64_t intval;
  //int intval;
  double64_t floatval;

  Variable* varptr;
  list<Variable>* list_var_ptr=NULL;
  
  vector<Variable>* vector_vars_ptr;
  vector<Statement*>* vector_statement_pointers_ptr;
  vector<Expression*>* vector_expr_pointers_ptr;
  
  vector<ConditionalCase*>* vector_conditional_case_pointers_ptr;
  
  Function* fn_ptr;
  Statement* statement_ptr;
  Expression* expr_ptr;
  ExpressionStatement* expr_statement_ptr;

#line 188 "src_tmp/parser_expr.tab.hpp" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_SRC_TMP_PARSER_EXPR_TAB_HPP_INCLUDED  */