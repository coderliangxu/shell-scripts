#!/bin/bash

# 方法一：
grep -n '^\s*$' file2.txt | awk -F ":" '{print $1}'

# 方法二：
awk '/^\s*$/{print NR}' file2.txt

# 方法三：
sed -n '/^\s*$/=' file2.txt
