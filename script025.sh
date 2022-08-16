#!/bin/bash

# 方法一：
# awk '{print $0}' 1.txt 的意思是输出1.txt文件的所有内容
awk '{if($0 != "") {print $0}}' file3.txt

# 方法二：
awk '!/^$/{print $NF}' file3.txt # !代表取反

# 方法三：
cat file3.txt | awk NF # awk默认情况下是{print $0}，NF>0时有打印，NF==0时不打印

# 方法四：
grep -v "^$" file3.txt

# 方法五：
grep -e '\S' file3.txt # -e 后面跟正则表达式；\s 是匹配所有空白符，包括换行，\S 非空白符，不包括换行。
