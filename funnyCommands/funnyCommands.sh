#!/bin/bash
# You can run some funny Linux Command by input the values

# give some suggestions
echo -e 'You can run some funny commands by input the corresponding value:\n
	 For some commands, you may need to press Ctrl + C to exit the process\n
	 0 - exit\n 
	 1 - ranbow-font\n
	 2 - oneko\n
	 3 - xcowsay\n
	 4 - guake\n
	 5 - whether\n
	 6 - neofetch\n
	 7 - linux_logo\n
	 8 - word_art\n
	 9 - fortune\n
	 10 - calendar\n
	 11 - order-list\n' |lolcat
	 
# start the commands
while :
do
echo -e '\nPlease input one value:' |lolcat
# read a message
read MESSAGE

if [ $MESSAGE = 0 ]
then
	echo 'exit!' | lolcat
	break

elif [ $MESSAGE = 1 ]
then
	echo -e 'Welcome to use rainbow font!' |lolcat

elif [ $MESSAGE = 2 ]
then
	oneko

elif [ $MESSAGE = 3 ]
then
	echo -e 'Please input what you want the cow to say:' |lolcat
	read LETTERS
	xcowsay $LETTERS

elif [ $MESSAGE = 4 ]
then
	guake

elif [ $MESSAGE = 5 ]
then
	echo -e 'Please input the name of a city or an area to get the whether:' | lolcat
	read CITY
	curl wttr.in/$CITY

elif [ $MESSAGE = 6 ]
then
	echo -e 'The status of your system is :'|lolcat
	neofetch

elif [ $MESSAGE = 7 ]
then
	linux_logo
	echo -e 'Do you want to see all the logos of the distribution?[yes/no]' | lolcat
	read SEE_LOGO
	if [ $SEE_LOGO = yes ]
	then
		for i in {1..30};do linux_logo -f -L $i;sleep 0.5;done
	elif [ $SEE_LOGO = no ]
	then 
		echo -e 'input ends' |lolcat
	else
		echo -e 'command not found' |lolcat
	fi

elif [ $MESSAGE = 8 ]
then
	echo -e 'Please input your own word_art message'|lolcat
	read WORD_ART
	echo -e 'Please choose a style [1/2]' |lolcat
	read STYLE 
	if [ $STYLE = 1 ]
	then 
		figlet $WORD_ART | lolcat
	elif [ $STYLE = 2]
	then
		toilet $WORD_ART | lolcat
	else 
		echo -e 'command not found' | lolcat
	fi
	
elif [ $MESSAGE = 9 ]
then
	fortune
	
elif [ $MESSAGE = 10 ]
then
	cal

elif [ $MESSAGE = 11 ]
then
	echo -e 'You can run some funny commands by input the corresponding value:\n
	 For some commands, you may need to press Ctrl + C to exit the process\n
	 0 - exit\n 
	 1 - ranbow-font\n
	 2 - oneko\n
	 3 - xcowsay\n
	 4 - guake\n
	 5 - whether\n
	 6 - neofetch\n
	 7 - linux_logo\n
	 8 - word_art\n
	 9 - fortune\n
	 10 - calendar\n
	 11 - order-list\n' |lolcat

else
	echo -e 'Please input a correct value!'

fi

done
