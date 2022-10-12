jour=$(date +%d-%m-%y)
heure=$(date +%H-%M)
file=number_connection-$jour-$heure

sudo grep -c "session  opened" /var/log/auth.log > $file
tar -cf $file.tar.gz $file

mv $file.tar.gz /home/moufid/Documents/shell.exe/Job8/Backup
rm $file
