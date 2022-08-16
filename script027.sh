#!/bin/bash
linecount=0
sum=0
count=0

while read line
do
	num=$[${#line}-1]
	for i in `seq 0 ${num}`
    #for (( i=0; i<${#line};i++ ))
    do
        if [[ ${line:$i:1} =~ [1-5] ]]
        then
            #count=$(($count+1))
			let count++
        fi
    done
    #linecount=$(($linecount+1))
	let linecount++
    echo "line$linecount number:$count"
    #sum=$(($sum+$count))
	sum=$[$sum+$count]
    count=0

done < file5.txt
echo "sum is $sum"
