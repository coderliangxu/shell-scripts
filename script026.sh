#!/bin/bash

columnNumber=$(awk '{print NF}' file4.txt | head -1)
for i in $(seq 1 ${columnNumber})
do
	cat file4.txt | awk -v var=$i '{print $var}' | xargs # -v 自定义变量
done
