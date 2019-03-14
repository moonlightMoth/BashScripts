#!/bin/bash

# moves to specified directory and prints it's content
function ca()
{
	cd ./$1; la
}

# read line specified by number from file and open it in firefox
function olink()
{
	sed -n $1p $2 | xargs firefox;
	return 0;
}

# kek
function blead()
{
	echo 'Calm down, everything ok, keep trying'
	return 0;
}

# commits all changes to git with specified message and pushes to remote
function gitpush()
{
	if [ $# -gt 1 ]
	then
		echo 'Error: gitpush requires only one argument - commit message';
		return 1
	fi

	if ! [ $# -eq 0 ]
	then


		if git commit -a -m "$1"
		then
			git push;
			return 0
		fi

		return 1
	else
		echo 'Error: commit message not specified';
		return 1
	fi

	return 1
}

tygdig()
{
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
}

# ummm
saas()
{
	echo 'this cmd temporary does nothing, but i will make it fun or smth '
}
