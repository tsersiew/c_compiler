#!/bin/bash

CODEGEN=../bin/c_codegen
EMULATOR=qemu-mips

# TODO: Make sure this points to your own mips gcc.
MIPS_GCC=gcc-linux-gnu-gcc
MAIN=main.c

(cd .. && make bin/c_codegen)

for i in input/*.c; do
  BASE=$(basename $i .c);

  ###################################
  ## Compile everything using gcc to get a reference (native) version

  ${MIPS_GCC} ${MAIN} $i -o build/$BASE.ref
  ./build/$BASE.ref > output/$BASE.ref

  ###################################
  ## Compile the function using your compiler and link it with the main using gcc

  # TODO: C pre-processor?
  cat $i | $CODEGEN > build/$BASE.got.s

  # Compile the main and the assembly generated by your compiler
  ${MIPS_GCC} ${MAIN} build/$BASE.got.s -o build/$BASE.got
  
  #This will work if QEMU is installed
  ${EMULATOR} build/$BASE.got > output/$BASE.got

  ##################################
  ## Compare the outputs
  diff output/$BASE.got output/$BASE.ref > output/$BASE.diff;
  if [[ $? != 0 ]]; then
    echo "$BASE, FAIL, see output/$BASE.diff";
  else
    echo "$BASE, pass";
  fi
done
