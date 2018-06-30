#!/bin/sh

##variables
#location, where sinusbot is installed
loc=/opt/sinusbot/

#the name of the screen
screen_name=sinusbot

#no necessary changes beyond this line

#binary file, (should be "sinusbot")
binary=sinusbot

name=`basename "$0"`
case "$1" in
start)
	cd $loc && screen -AmdS $screen_name ./$binary
	sleep 1
	echo "\033[32mSinusbot was started..\033[0m"
	;;
stop)
	screen -S $screen_name -p 0 -X stuff "^C"
	sleep 1
	echo "\033[31mSinusbot was stopped..\033[0m"
	;;
restart)
	$0 stop
	$0 start
	;;
info)
	echo "Your sinusbot is installed in \033[32m$loc\033[0m, and the screen name is \033[32m$screen_name\033[0m"
	;;
*)
	echo "\033[31mUsage: './$name (start|stop|restart|info)'\033[0m"
	;;
esac
exit 0
