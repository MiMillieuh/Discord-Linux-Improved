#!/bin/bash
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
wget discordapp.com/api/download?platform=linux&format=tar.gz
tar -zxf discord-0.0.10.tar.gz --directory /opt
wget -P /usr/share/applications https://www.dropbox.com/s/8mmk8j7bi3yvnbw/discord.desktop
