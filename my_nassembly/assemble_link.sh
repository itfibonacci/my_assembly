#!/bin/bash
mkdir -p bin
nasm -f elf64 -g -F dwarf -o ./bin/$1.o $1.asm && ld -o ./bin/$1 ./bin/$1.o && rm ./bin/$1.o
./bin/$1
