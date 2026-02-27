#! /bin/bash
SITES="google.com ukr.net facebook.com ne-isnue.com" 
echo "--- Starting Check: $(date) ---"
for SITE in $SITES
do
STATUS=$(curl -Ls -o dev/null -w "%{http_code}" $SITE)

if [ "$STATUS" == "200" ]; then
	echo "[OK] $(date): $SITE is UP (Code: $STATUS)" >> log.txt
else
	echo "[ERR] $(date): $SITE is DOWN (Code: $STATUS)" >> log.txt
fi
done

echo "Check Done. Result in log,txt"
