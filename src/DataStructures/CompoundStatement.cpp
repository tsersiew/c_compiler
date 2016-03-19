#include "CompoundStatement.h"

CompoundStatement::CompoundStatement(vector<VarDeclaration*>* declarations_in, vector<Statement*>* statements_in) :
	Statement(ST_compound), declarations(declarations_in), statements(statements_in) {
}
	
CompoundStatement::CompoundStatement(vector<VarDeclaration*>* declarations_in, vector<Statement*>* statements_in, 
																	const int& line_in, const string& src_file_in) :
	Statement(ST_compound, line_in, src_file_in), declarations(declarations_in), statements(statements_in) {}


CompoundStatement::~CompoundStatement(){
	if(declarations!=NULL){
		vector<VarDeclaration*>::iterator it;
		for(it=declarations->begin(); it!=declarations->end(); ++it){
			delete *it;
		}

		delete declarations;
	}

	if(statements!=NULL){
		vector<Statement*>::iterator it;
		for(it=statements->begin(); it!=statements->end(); ++it){
			delete *it;
		}

		delete statements;
	}
}

void CompoundStatement::pretty_print(const int& indent){
	string white_space, new_scope_indent="    ";
	white_space.resize(indent, ' ');

	cout<<white_space<<"SCOPE"<<endl;

	if(declarations==NULL && statements==NULL) return;

	if(declarations!=NULL){
		// Print Variable Declarations defined inside the CompoundStatement
		vector<VarDeclaration*>::iterator it;
		for(it=declarations->begin(); it!=declarations->end(); ++it){
			if(*it!=NULL) (*it)->pretty_print(indent+4);
		}
	}

	if(statements!=NULL){
		// Print Statements defined inside the CompoundStatement
		vector<Statement*>::iterator it;
		for(it=statements->begin(); it!=statements->end(); ++it){
			if(*it!=NULL) (*it)->pretty_print(indent+4);
		}
	}
}



void CompoundStatement::renderasm(ASMhandle& context){

	ASMhandle new_context(context);

	if(declarations!=NULL){
		vector<VarDeclaration*>::iterator it;
		for(it=declarations->begin(); it!=declarations->end(); ++it){
			(*it)->renderasm(new_context, true);
		}
	}

	// Execute the statements
	if(statements!=NULL){
		vector<Statement*>::iterator it;
		for(it=statements->begin(); it!=statements->end(); ++it){
			(*it)->renderasm(new_context);
		}
	}

	// Make sure that if the CompoundStatemtent appears as a scope(not a function) the prover values for $fp and $sp are kept
	context.exit_scope(new_context);
}
