#!/bin/bash

# 读取用户输入的账户名称,将账户名写入到数组保存 
# 定义数组名称为 name,数组的下标为 i,小标从 0 开始,每输入一个账户名,下标加 1,继续存下一个账户
# 最后,输入 over,脚本输出总结性信息后脚本退出
i=0
while :
do
  read -p "请输入账户名,输入 over 结束:" key
  if [ $key == "over" ];then 
    break
    else
    name[$i]=$key
    let i++
    fi
done
echo "总账户名数量:${#name[*]}"
echo "${name[*]}"
