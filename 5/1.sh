#!/bin/bash
mkdir result
for file in $1/*
do
fileExt=${file##*.}
for extFile in `find $1/* -name "*.$fileExt"`
do
extFile=${extFile##*/}
if ! grep -w $extFile ./result/$fileExt.list 
then
echo $extFile >> ./result/$fileExt.list
fi
done
done

