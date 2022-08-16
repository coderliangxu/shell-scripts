#!/bin/bash

# 统计文件的行数

# 方法一：
wc -l file1.txt | awk '{print $1}'
##或者
cat file1.txt | wc -l

# 方法二：
awk '{print NR}' file1.txt | tail -n1

# 方法三：
awk 'END{print NR}' file1.txt

# 方法四：
grep -c "" file1.txt  # -c 只输出匹配行的数
##或者
grep -n "" file1.txt | awk -F ":" '{print $1}' | tail -n1 # -n 列出所有的匹配行，显示行

# 方法五：
sed -n '$=' file1.txt # -n 仅显示script处理后的结果;‘$’表示对最后一行操作，‘=’表示被打印行的行号

