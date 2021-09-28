#!bin/bash
(
pkexec bash -c 'rm -rf discord*.tar.gz* ; rm -rf discord*.tar.gz ; wget --content-disposition "http://discordapp.com/api/download?platform=linux&format=tar.gz" -P /opt; echo "33" ; 
echo "# Installing Discord..." ;
rm -rf /opt/Discord ; rm -rf /usr/share/applications/discord.desktop ; tar -zxf /opt/discord-*.tar.gz --directory /opt ; VER=$(ls | grep discord-) ; echo $VER > /opt/Discord/ver.txt ; sleep 5 ; rm -rf /opt/discord-*.tar.gz ; echo "66" ; echo "# Applying patches..." ; wget -P /opt/Discord https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/updater.sh ; wget -P /opt/Discord https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/filechecker.sh ; wget -P /usr/share/applications https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/discord.desktop ;'; sh /opt/Discord/filechecker.sh ; echo "100" ;
echo "DONE"
) |
zenity --progress --auto-close --auto-kill\
  --title="Updating Discord" \
  --text="Downloading Discord..." \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled." && rm -rf discord-*.tar.gz
fi
