#!/bin/bash
URL_LIST="www.baidu.com www.linux.com www.lxlinux.net"

for URL in $URL_LIST; do
	FAIL_COUNT=0
	for i in {1..3}; do
	# for ((i=1;i<=3;i++)); do
		HTTP_CODE=$(curl -o /dev/null --connect-timeout 3 -s -w "%{http_code}" $URL)
		if [ $HTTP_CODE -eq 200 ]; then
			echo "$URL OK"
			break
		else
			echo "$URL retry $FAIL_COUNT"
			let FAIL_COUNT++
		fi
	done
	if [ $FAIL_COUNT -eq 3 ]; then
		echo "Warning: $URL Access failure!"
	#$echo "网站$URL出故障，请及时处理" | mail -s "$URL网站高危" xxx@xx.com
	echo "网站$URL出故障，请及时处理"
	fi
done
