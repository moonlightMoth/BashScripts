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

		for j in $(seq 1 $[$i % 20]);
		do
			echo -n -e "\t|" ;
		done;

		if [[ $[$i % 20] -ne 0 ]]
		then

			if [[ $[$i % 3] -eq 0 ]] && [[ $1 = puf ]]
		    then
			    echo -n "пуф))))|"
			else
			    echo -n "тыг-дык|"
			fi
		else
			echo -n -e "\t|"

		fi

		for k in $(seq 1 $[20 - $i % 20]);
		do
			echo -e -n "\t|";
		done;

		echo -e -n "\n";



		for k in $(seq 1 $[20 - $i % 20]);
		do
			echo -e -n "\t|";
		done;

		if [[ $[$i % 20] -ne 0 ]]
		then

			if [[ $[$i % 3] -eq 0 ]] && [[ $1 = puf ]]
		    then
			    echo -n "пуф))))|"
			else
			    echo -n "тыг-дык|"
			fi
		else
			echo -n -e "\t|"
		fi

		for j in $(seq 1 $[$i % 20]);
		do
			echo -n -e "\t|" ;
		done;


	    echo -e -n "\n";
	done
}

suus()
{
	sudo apt-get install "$1"
}

# ummm
saas()
{
	echo 'this cmd temporary does nothing, but i will make it fun or smth '
}

ept()
{
	echo -n "ept " >> ~/ept.count
	return 0
}

isept()
{
	cat ~/ept.count
	return 0
}

domru()
{
	$(xdotool getactivewindow windowmove 0 0)
    $(gnome-terminal --geometry=-0+0 -- ping ya.ru -s 1024)

    for k in $(seq 1 20);
	do
		speedtest
	done;

}
