#!/bin/bash
for file1 in $1/*
do
for file2 in $2/*
do
size1=$(stat -c"%s" $file1)
size2=$(stat -c"%s" $file2)
fileNm1=${file1##*/}
fileNm2=${file2##*/}
echo $nm
if [[ $size1 -lt $size2 ]] 
then
	i='<'
elif [[ $size1 -gt $size2 ]] 
then
	i='>'
elif [[ $size1 -eq $size2 ]]
then 
	i='='
fi
echo "$fileNm1 размер $size1 байт $i $fileNm2 размер $size2 байт" >> compare.txt
done
done
