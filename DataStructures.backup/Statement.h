#ifndef STATEMENT_H
#define STATEMENT_H

#include <vector>
#include <list>
#include <iomanip>
#include <iostream>
//#include "ASMhandle.h"


using std::list;
using std::vector;
using std::cout;
using std::cerr;
using std::endl;
using std::string;
/*	
	An abstract class that can cover expressions, function declarations and calls, if statements, loops
*/


enum StatementT{
	// Block Statements
	ST_fn_def = 1,
	ST_loop = 2,
	ST_fn_call = 3,
	// function_prototype = 4; // maybe??
	ST_conditional = 5,
	ST_conditional_case = 6,
	ST_var_declaration_container = 7,
	ST_return = 7,
	ST_compound = 8,
	
	// Expressions
	ST_expression = 20,
	ST_expr_statement = 21,
	ST_constant = 22,
	ST_var_declaration = 23,
	ST_var_expr = 24,
	ST_var_return = 25,
	ST_var_fn_param = 26,
	ST_base_expr = 27,
	ST_ternery_expr = 28
};

class Variable;

struct ASMhandle{
	int stack_offset;
	vector<Variable*>* vars;	
};


class Statement{

public:
	Statement(const StatementT stat_type_in);
	virtual ~Statement();

	virtual void pretty_print(const int& indent) const =0;		// parameter specifies the starting column for the printing
	virtual void renderasm(ASMhandle* context)=0;
	void set_stat_type(const StatementT& stat_type_in); 
	StatementT get_stat_type() const ;
protected:
	StatementT stat_type;
};



#endif

