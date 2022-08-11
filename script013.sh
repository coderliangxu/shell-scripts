#!/bin/bash 
ALL_SH_FILE=$(find . -type f -name "*.sh") 
for file in ${ALL_SH_FILE[*]} 
do
filename=${file%.*}	
#filename=$(echo $file | awk -F'.sh' '{print $1}') 
new_filename="${filename}.shell" 
mv "$file" "$new_filename" 
sed -i '2d' "$new_filename" 
done
