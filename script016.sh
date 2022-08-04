#!/bin/bash

# 检测两台服务器指定目录下的文件一致性
#通过对比两台服务器上文件的md5值，达到检测一致性的目的

dir1=/home/liangxu/tests/dir1
dir2=/home/liangxu/tests/dir2
server_ip=192.168.107.133

#将指定目录下的文件全部遍历出来并作为md5sum命令的参数，进而得到所有文件的md5值，并写入到指定文 件中
find $dir1 -type f | xargs md5sum > $dir1/md5_a.txt
ssh $server_ip "find $dir2 -type f | xargs md5sum > $dir2/md5_b.txt"
cp $dir1/md5_a.txt .
scp $server_ip:$dir2/md5_b.txt .
#将文件名作为遍历对象进行一一比对
for f in `awk '{print $2}' md5_a.txt`
do
	file_name="${f##*/}"
#以a机器为标准，当b机器不存在遍历对象中的文件时直接输出不存在的结果
	if grep -q "$file_name" md5_b.txt
	then
		md5_a=`grep "$file_name" md5_a.txt | awk '{print $1}'`
		md5_b=`grep "$file_name" md5_b.txt | awk '{print $1}'`
		#当文件存在时，如果md5值不一致则输出文件改变的结果
		if [ $md5_a != $md5_b ]
		then
			echo "$f changed."
		fi
	else
		echo "$f deleted."
	fi
done
