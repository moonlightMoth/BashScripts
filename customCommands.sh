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
function blyad()
{
	echo 'Calm down, everything ok, keep trying'
	return 0;
}

# commits all changes to git with specified message and pushes to remote
function gitpush()
{
	if [ $# -gt 1 ]
	then
		echo 'Erroe: requires only one argument - commit message';
		return 1
	fi

	if ! [ $# -eq 0 ]
	then
		git commit -a -m $1

		if [ $? -eq 0 ]
		then
			git push
		fi
	else
		echo 'Error: commit message not specified';
		return 1
	fi
}

testsaas()
{
	echo $#
}
