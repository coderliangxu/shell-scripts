#!/bin/bash

#查看文件的前5行，可以使用head命令，如
head -5 file1.txt

#查看文件的后5行，可以使用tail命令，如：
tail -5 file1.txt
#或者 
tail -n 5 file1.txt

#查看从第5行到文件结尾的内容
tail -n +5 file1.txt

#查看从倒数第5行开始到文件结尾的内容
tail -n -5 file1.txt

#不加任何参数，默认输出10行
tail file1.txt

#查看文件最后5个字节
tail -c 5 file1.txt

#实时输出文件的最新更新内容
tail -f file1.txt

#查看文件中间一段，你可以使用sed命令，如：
sed -n '5,20p' file1.txt
#这样你就可以只查看文件的第5行到第20行。
