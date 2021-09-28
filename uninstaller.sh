#!bin/bash
pkexec bash -c 'rm -rf /opt/Discord ; rm -rf /usr/share/applications/discord.desktop'


(
pkexec bash -c 'rm -rf /opt/Discord ; rm -rf /usr/share/applications/discord.desktop' ; echo "100" ;
echo "DONE" 
) |
zenity --progress --auto-close --auto-kill\
  --title="Uninstaller" \
  --text="Uninstalling Discord" \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi
