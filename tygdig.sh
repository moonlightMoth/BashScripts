#!/bin/bash

for i in {1..1000};
do
	sleep 0.25;

	for j in $(seq 1 $[$i % 19]);
	do
		echo -n -e "\t|" ;
	done;

	if [ $[$i % 19] -ne 0 ]
	then
		echo -n "тыг-дык|"
	fi

	for k in $(seq 1 $[19 - $i % 19]);
	do
		echo -e -n "\t|";
	done;

	echo -e -n "\n";
done

