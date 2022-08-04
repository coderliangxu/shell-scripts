#!/bin/bash

# Shell脚本挑战赛 5/100
# 交互式创建账号
# 如果不输入账号名，则提示并退出；如果不输入密码，默认为123456

read -p "请输入用户名：" user

# 使用 ‐z 可以判断一个变量是否为空，如果为空，提示用户必须输入账户名，并退出脚本,退出码为 2
# 没有输入用户名脚本退出后，使用 $? 查看的返回码为 2

if [ -z $user ]
then
	echo "您没有输入用户名，程序退出"
	exit 2
fi

# 使用 stty ‐echo 关闭 shell 的回显功能
# 使用 stty  echo 打开 shell 的回显功能

stty -echo
read -p "请输入密码：" pass
stty echo
pass=${pass:-123456}

useradd "$user"
echo "$user:$pass" | chpasswd
