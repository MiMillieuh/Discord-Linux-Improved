INPUT=$(curl -L --head -w '%{url_effective}' "http://discordapp.com/api/download?platform=linux&format=tar.gz"  2>/dev/null | tail -n1)
SUBSTRING=$(echo $INPUT| cut -d'/' -f 7)
INPUT2=$(cat /opt/Discord/ver.txt)
if [ "$INPUT2" == "$SUBSTRING" ]
then 
/opt/Discord/Discord
else echo  "${INPUT2} "et" ${SUBSTRING}" ; sh /opt/Discord/updater.sh
fi