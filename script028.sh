#!/bin/bash
while read line; do
    arr=(${line})
    for i in ${arr[@]}; do
		if [[ "${ele}" =~ B|b ]]
        #if [[ "${i}" =~ B || "${i}" =~ b ]];
        then
            continue
        fi
        echo "${i} "
    done
done < file6.txt
