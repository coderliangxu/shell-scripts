#!/bin/bash

if [ "$1" == "" ]
then
	echo "请输入序号"
elif [ $1 -le 99 ]
then
	name=script0"$1".sh
else
	name=script"$1".sh
fi

touch $name
chmod +x $name
echo "#!/bin/bash" > $name
