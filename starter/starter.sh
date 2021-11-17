#!/bin/bash
# You can start whatever developing tools you want
# define some values
HOME_PATH=$HOME
WYH_PATH=$HOME/wyh
DEVELOPING_TOOLS_PATH=$WYH_PATH/Developing_Tools

# give some suggestions
echo -e 'You can start the tools by inputing the following number:\n
	 Please just input a number once a time\n
	 0 - exit\n 
	 1 - WebStorm\n
	 2 - Idea\n
	 3 - Pycharm\n
	 4 - CLion\n
	 5 - Kettle\n
	 6 - Postman\n
	 7 - VPN\n'

# start the tool
while :
do
# read a message
read MESSAGE

if [ $MESSAGE = 0 ]
then
	echo 'exit!'
	break

elif [ $MESSAGE = 1 ]
then
	gnome-terminal -t " WebStorm" -x bash -c " sh $DEVELOPING_TOOLS_PATH/WebStorm/WebStorm-212.5284.41/bin/webstorm.sh;exec bash;"

elif [ $MESSAGE = 2 ]
then
	gnome-terminal -t " Idea" -x bash -c " sh $DEVELOPING_TOOLS_PATH/IntelliJ/idea-IU-212.5080.55/bin/idea.sh;exec bash;"

elif [ $MESSAGE = 3 ]
then
	gnome-terminal -t " PyCharm" -x bash -c " sh $DEVELOPING_TOOLS_PATH/PyCharm/pycharm-community-2021.1/bin/pycharm.sh;exec bash;"

elif [ $MESSAGE = 4 ]
then
	gnome-terminal -t " CLion" -x bash -c " sh $DEVELOPING_TOOLS_PATH/CLion/clion-2021.1/bin/clion.sh;exec bash;"

elif [ $MESSAGE = 5 ]
then
        gnome-terminal -t " Kettle" -x bash -c " sh $DEVELOPING_TOOLS_PATH/Kettle/spoon.sh;exec bash;"

elif [ $MESSAGE = 6 ]
then
	gnome-terminal -t " Postman" -x bash -c " $DEVELOPING_TOOLS_PATH/Postman/Postman;exec bash;"

elif [ $MESSAGE = 7 ]
then
	gnome-terminal -t " v2ray" -x bash -c " $WYH_PATH/VPN/Qv2ray/Qv2ray.v2.6.3.AppImage;exec bash;"

fi

done
