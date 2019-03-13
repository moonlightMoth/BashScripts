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
