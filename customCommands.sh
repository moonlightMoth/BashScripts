#!/bin/bash

# moves to specified directory and prints it's content
function ca()
{
	cd ./$1; la
}

# read line specified by number from file and open it in firefox
function olink()
{
	sed -n $1p $2 | xargs firefox
}

# kek
function blyad()
{
	echo 'Calm down, everything ok, keep trying'
}

# commits all changes to git with specified message and pushes to remote
function gitpush()
{
	if ! [ $# -eq 0 ]
	then
		git commit -a -m $1; git push;
	else
		echo 'Error: commit message not specified'
	fi
}
