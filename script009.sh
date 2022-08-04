#!/bin/bash

# Shell脚本挑战赛 9/100
# 统计/var/log 有多少个文件,并显示这些文件名
# 使用 ls 递归显示所有,再判断是否为文件,如果是文件则计数器加 1

# 验证：ls -l | grep "^-" | wc -l

cd /var/log

sum=0

for i in `ls`
do
	if [ -f $i ]
	then
		#sum=$[sum+1]
		let sum++
		echo "文件名：$i"
	fi
done

echo "总文件数量为：$sum"
