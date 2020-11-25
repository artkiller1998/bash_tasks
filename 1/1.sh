#!/bin/bash
#необходимо передавать в качестве параметров" 7323 Chernov"
if [[ $# -ne 2 ]]
then
	echo "Неверное количество аргументов!!!"
	
else
	mkdir "BOS.${1}_${2}"
	i=1
	numJ=17

	if [[ $1 -eq 7323 ]]
	then
		numGr=1
	elif [[ $1 -eq 7324 ]]
	then
		numGr=2
	else [[ $1 -eq 7325 ]]
		numGr=3
	fi
	echo $numGr
	countTasks=( 0 1 17 11 10 11 )
	while [ $i -lt 6 ]
	do
	cd ~/BOS.$1_$2/
	mkdir -p "$i"
	cd ./$i
	num=$((($numJ+$i*$numGr)%${countTasks[$i]}+1))
	touch "$num.sh"
	((i++))
	done
	mv -f ~/ddz.sh ~/BOS.${1}_${2}/1/1.sh
fi
