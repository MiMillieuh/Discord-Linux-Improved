#!bin/bash
(
pkexec bash -c 'rm -rf /opt/discord*.tar.gz* ; rm -rf /opt/discord*.tar.gz ; wget --content-disposition "http://discordapp.com/api/download?platform=linux&format=tar.gz" -P /opt; echo "33" ; 
echo "# Installing Discord..." ;
rm -rf /opt/Discord ; rm -rf /usr/share/applications/discord.desktop ; tar -zxf /opt/discord-*.tar.gz --directory /opt ; echo $(ls | grep discord-) > /opt/Discord/ver.txt ; echo $(ls | grep discord-) > /opt/Discord/ver.txt ; rm -rf /opt/discord-*.tar.gz ; echo "66" ; echo "# Applying patches..." ; wget -P /opt/Discord https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/updater.sh ; wget -P /opt/Discord https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/filechecker.sh ; chmod+x /opt/Discord/filechecker.sh ; chmod+x /opt/Discord/updater.sh ; wget -P /usr/share/applications https://raw.githubusercontent.com/MiMillieuh/Discord-Linux-Improved/master/discord.desktop ;' ; echo "100" ;
echo "DONE" 
) |
zenity --progress --auto-close --auto-kill\
  --title="Updating Discord" \
  --text="Downloading Discord..." \
  --percentage=0

sh /opt/Discord/filechecker.sh 

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi
