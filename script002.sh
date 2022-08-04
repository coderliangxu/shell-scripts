#!/bin/bash

# 实时监控本机内存和硬盘剩余空间,剩余内存小于500M、根分区剩余空间小于1000M时,报警处理

while :
do

# 提取根分区剩余空间
disk_size=$(df / | awk '/\//{print $4}')

# 提取内存剩余空间
mem_size=$(free | awk '/Mem/{print $4}')

echo "disk_size=$disk_size, mem_size=$mem_size"

# 注意内存和磁盘提取的空间大小都是以 Kb 为单位
	if [[ $disk_size -le 1024000 && $mem_size -le 512000 ]]
	then
		echo Warning
	fi
	sleep 1
done
