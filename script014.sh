#!/bin/bash 
# 目标目录 
DIRPATH='./tmp' 
# 查看目录 
FILEPATH='.' 
find "$FILEPATH" -size +10k -type f | xargs -i mv {} "$DIRPATH" 
ls -lS "$DIRPATH" | awk '{if(NR>1) print $NF}' 
