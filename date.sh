#!/bin/bash
echo "The number of days since the year's beginning is `date +%j`."
echo "The number of seconds elapsed since 01/01/1970 is `date +%s`."

prefix=temp
suffix=$(date +%s)  # 'date'命令的"+%s"选项是GNU特性.
filename=$prefix.$suffix
echo $filename

echo $(date -u)
echo $(date +%Y\-%m\-%d\ %H:%M:%S)
echo $(date +%x\ %x)

#时区dump: 查看特定时区的当前时间.
echo "zdump $(zdump EST)"

#输出统计出来的命令执行的时间.
echo `time ls -l`

#这是一个用来更新文件被访问或修改的时间的工具, 这个时间可以是当前系统的时间,也可以是指定的时间, 这个命令也用来产生一个新文件
#base.sh的修改时间就被替换成当前时间了
echo `touch se.sh`

echo "sleep 3s"
#hold 3s 什么也不干
sleep 3

#定时执行 atq atrm
#man 。
at 19:45 < now.sh

exit 0
