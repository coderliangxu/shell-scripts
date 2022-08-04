#!/bin/bash

# Shell脚本挑战赛 4/100
# 通过位置变量创建 Linux 系统账户及密码

#$1 是执行脚本的第一个参数,$2 是执行脚本的第二个参数
useradd "$1" 

# echo "$2"  |  passwd  ‐‐stdin  "$1"
echo "$1:$2" | chpasswd
