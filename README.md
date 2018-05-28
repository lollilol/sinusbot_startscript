# Startscript for sinusbot
A customizable, little script to start your sinusbot.

## Overview
Features:
+ Start & stop your sinusbot.
+ You dont need any start.sh in your sinusbot folder! Only a startable sinusbot.
+ currently im supporting only Debian 8. (of coursee you can use it on other systems.)

## Downloads
#### [Direct Download](https://github.com/lollilol/sinusbot_startscript/releases/download/v1.0/startscript.sh)

[Releases](https://github.com/lollilol/sinusbot_startscript/releases)

[Raw script](https://raw.githubusercontent.com/lollilol/sinusbot_startscript/master/startscript.sh) (right click, wget friendly, most up to date)

## Usage
```
./startscript.sh (start|stop|restart|info)
```

## How to install:

+ Connect to your VPS via SSH.
+ Go to the directory where you want to download the file
+ Run `wget https://raw.githubusercontent.com/lollilol/sinusbot_startscript/master/startscript.sh`
+ Customize it with `nano startscript.sh`
+ make it runnable with `chmod a+x startscript.sh`
+ done.

>or just paste this: `cd && wget https://raw.githubusercontent.com/lollilol/sinusbot_startscript/master/startscript.sh && nano startscript.sh && chmod a+x startscript.sh` into ssh.

## Required/Dependencies
+ screen (in the most Repositorys called "screen")
+ sinusbot

## Autostart integration
+ Please make sure you have crontab/cron installed (in the most Repositorys called "cron" or "crontab")
+ Run `crontab -e`
+ you may have to choose your editor: i would recommend "nano"
+ now the crontab file is opened. scroll to the end of the file
+ now insert `@reboot /file/to/your/startscript.sh start`
+ done.
