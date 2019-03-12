#!/bin/bash

for i in {1..1000};
do
	sleep 0.25;

	for j in $(seq 1 $[$i % 28]);
	do
		echo -n -e "\t|" ;
	done;

	echo -n "тыг-дык|";

	for k in $(seq 1 $[28 - $i % 28]);
	do
		echo -e -n "\t|";
	done;

	echo -e -n "\n";
done

