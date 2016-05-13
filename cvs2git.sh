#!/bin/bash
# copy .cvsignore as .gitignore in per  directory
# 2016/5/13	chenhc
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "copy .cvsignore as .gitignore......\a \n"

files=$(find -name ".cvsignore")

for file in $files
do
	#echo -e "$file \n"
	#echo -e "${file%.cvsignore}.gitignore \n"
	cp $file ${file%.cvsignore}.gitignore
done

echo -e "done!\n"

exit 0