FILESIZE=$(stat -c%s "log.txt")
if [ $FILESIZE -gt 100 ]; then
	rm log.txt
else
	echo "Smaler than $FILESIZE"
fi
