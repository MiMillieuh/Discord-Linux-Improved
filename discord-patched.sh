#!/bin/su root
wget --content-disposition "http://discordapp.com/api/download?platform=linux&format=tar.gz"
tar -zxf discord-*.tar.gz --directory /opt
rm -rf discord-*.tar.gz
wget -P /usr/share/applications https://www.dropbox.com/s/8mmk8j7bi3yvnbw/discord.desktop
