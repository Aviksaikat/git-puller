#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "[!] Usage: ${0} path"
    exit
fi

echo "[*]Working...." | lolcat 

find $1 -name ".git" -type d | sed 's/\/.git//' |  xargs -P10 -I{} git -C {} pull


# dir_list=$(ls $1)
# #echo $dir_list
# for i in $dir_list 
# do
# 	if [[ -d $i ]];
# 	then 
# 		cd $i
# 		git pull 2>/dev/null
# 		cd ../
# 	fi
# done
