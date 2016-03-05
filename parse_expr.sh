#!/bin/bash

TEST_DIR=test/expr_test
EXECUTABLE=./bin/parser_expr
#EXECUTABLE=./bin/lexer_test

if [ $# -eq 0 ]; then
    for INFILE in ${TEST_DIR}/*.run.in
	do
		OUTFILE=${INFILE/.in/.out}
		ERRFILE=${INFILE/.in/.err}
		cat ${INFILE} | ${EXECUTABLE} > ${OUTFILE}
		#echo $FILENAME	
	done
else
	FILENAME=$1
	FILEPATH=${TEST_DIR}/${FILENAME}
	INFILE=${FILEPATH}.run.in
	OUTFILE=${FILEPATH}.run.out
	
	cat ${INFILE} | ${EXECUTABLE} > ${OUTFILE}
fi






