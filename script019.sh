#!/bin/bash

#从FTP服务器下载文件

if [ $# -ne 1 ]
then
    echo "Usage: $0 filename"
	exit
fi

dir=$(dirname $1)
file=$(basename $1)
echo "$dir"
echo "$file"

ftp -n -v << EOF
open 192.168.107.133  # ftp服务器
user liangxu 123456
binary
cd "$dir"
get "$file"
EOF
