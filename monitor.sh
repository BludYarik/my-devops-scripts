#! /bin/bash
LOGFILE="/data/data/com.termux/files/home/second_devops/scripts/log.txt"
SITES="google.com ukr.net facebook.com ne-isnue.com" 
echo "--- Starting Check: $(date) ---"
for SITE in $SITES
do
STATUS=$(curl -Ls -o dev/null -w "%{http_code}" $SITE)

if [ "$STATUS" == "200" ]; then
	echo "[OK] $(date): $SITE is UP (Code: $STATUS)" >> $LOGFILE
else
	echo "[ERR] $(date): $SITE is DOWN (Code: $STATUS)" >> $LOGFILE
fi
done

echo "Check Done. Result in log.txt"
