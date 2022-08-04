#!/bin/bash

# Shell脚本挑战赛 6/100
# 石头、剪刀、布游戏

gesture=(石头 剪刀 布)
computer=$[RANDOM%3+1]

echo $computer
echo ${gesture[$[computer-1]]}

echo "请根据下列提示选择您的出拳手势"
echo "1.石头"
echo "2.剪刀"
echo "3.布"

read -p "请选择 1-3 ：" player

case $player in
1)
	if [ $computer -eq 1 ]
	then
		echo "没输没赢，万事大吉"
	elif [ $computer -eq 2 ]
	then
		echo "恭喜您赢了！"
	else
		echo "很抱歉，您输了！"
	fi
;;
2)
	if [ $computer -eq 1 ]
    then
        echo "很抱歉，您输了！"
    elif [ $computer -eq 2 ]
    then
        echo "没输没赢，万事大吉"
    else
        echo "恭喜您赢了！"
	fi
;;
3)
	if [ $computer -eq 1 ]
    then
        echo "恭喜您赢了！"
    elif [ $computer -eq 2 ]
    then
        echo "很抱歉，您输了！"
    else
        echo "没输没赢，万事大吉"
	fi
;;
*)
	echo "只能输入 1-3 的数字"
esac
