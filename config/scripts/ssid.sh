#!/bin/sh
#echo "date;"
#/bin/date
#echo "date"
rm -rf /tmp/hash.txt
rm -rf /tmp/hash0.txt
rm -rf /tmp/hash1.txt
rm -rf /tmp/hash2.txt
rm -rf /tmp/wifitmp.txt
echo "anbx" >> /tmp/hash.txt
/bin/date +"%s"  >> /tmp/hash.txt
echo "option ssid '" >> /tmp/hash0.txt
/bin/sed -n -e ":a" -e "$ s/\n/,/gp;N;b a" /tmp/hash.txt  >> /tmp/hash0.txt
echo "'" >> /tmp/hash0.txt
/bin/sed -n -e ":a" -e "$ s/\n/,/gp;N;b a" /tmp/hash0.txt >> /tmp/hash1.txt
/bin/sed -e 's/,//g' /tmp/hash1.txt >> /tmp/hash2.txt
echo "#" >> /tmp/wifitmp.txt
/bin/sed '/option_ssid/d' /etc/config/wireless >> /tmp/wifitmp.txt

#/bin/date +"$s" >> /tmp/hash!txt
rm -rf /etc/config/wireless
#echo "#" >> /etc/config/wireless
#cat /tmp/wifitmp.txt >> /etc/config/wireless
cp -rf /etc/config/scripts/wireless /etc/config/wireless
cat /tmp/hash2.txt >> /etc/config/wireless


