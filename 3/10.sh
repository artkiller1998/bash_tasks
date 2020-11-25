#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "Неверное количество аргументов!!!"
	exit 0
fi
for file in `find string.h`
{
	cp $file $1
} 
