#!/bin/bash

# Shell脚本挑战赛 8/100
# 批量修改扩展名

for i in `ls *.$1`
do
	mv $i ${i%.*}.$2
done
