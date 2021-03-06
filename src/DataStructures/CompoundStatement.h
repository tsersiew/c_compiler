#ifndef COMPOUNDSTATEMENT_H
#define COMPOUNDSTATEMENT_H

#include "Statement.h"
#include "VarDeclaration.h"

class CompoundStatement : public Statement{

public:
	CompoundStatement(vector<VarDeclaration*>* declarations_in, vector<Statement*>* statements_in);
	CompoundStatement(vector<VarDeclaration*>* declarations_in, vector<Statement*>* statements_in, 
																	const int& line_in, const string& src_file_in);
	~CompoundStatement();

	void renderasm(ASMhandle& context);
	void pretty_print(const int& indent);
	void renderasm(ASMhandle& context, const bool& function);
	
private:
	
	vector<VarDeclaration*>* declarations;	// Pointer to a vector of the declarations in the CompoundStatement
	vector<Statement*>* statements;			// Pointer to a vector of the statements appearing in the scope of the CompoundStatement
};



#endif

