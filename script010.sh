#!/bin/bash

# 统计 Linux 进程相关数量信息
running=0
sleeping=0
stoped=0
zombie=0

# 在 proc 目录下所有以数字开始的都是当前计算机正在运行的进程的进程 PID
# 每个 PID 编号的目录下记录有该进程相关的信息

for pid in /proc/[1-9]*
do
	procs=$[procs+1]
	stat=$(awk '{print $3}' $pid/stat)
	#echo $stat
	# 每个 pid 目录下都有一个 stat 文件,该文件的第 3 列是该进程的状态信息
	case $stat in
	R)
		let running++
	;;
	T)
		let stopped++
	;;
	S)
		let sleeping++
	;;
	Z)
		let zombie++
	;;
	*)
		echo error
	;;
	esac
done

echo "进程统计信息如下"
echo "总进程数量为:$procs"
echo "Running 进程数为:$running"
echo "Stoped 进程数为:$stoped"
echo "Sleeping 进程数为:$sleeping"
echo "Zombie 进程数为:$zombie"
