#!/bin/bash

#计算文档每行出现的数字个数，并计算整个文档的数字总数

#使用awk只输出文档行数（截取第一段）
n=`wc -l $1 | awk '{print $1}'`
sum=0

for i in `seq 1 $n`
do
	line=`sed -n "$i"p $1`
	# 统计每行出现的数字个数
	n_n=`echo $line | sed s'/[^0-9]//'g | wc -L` # [^0-9] 去除非数字部分  wc -L 统计长度
	echo "第$i行数字个数为：$n_n"
	sum=$[$sum+$n_n]
done
	echo "文档数字总数为：$sum"
