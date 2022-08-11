#!/bin/bash

# 指定目录路径,脚本自动将该目录使用 tar 命令打包备份到/data目录

[ ! -d data ] && mkdir data
[ -z $1 ] && exit
if [ -d $1 ];then
  tar -czf data/$1-`date +%Y%m%d`.tar.gz $1
else
    echo "该目录不存在"
fi
