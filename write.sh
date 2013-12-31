#!/bin/bash
#每个打开的文件都会被分配一个文件描述符. [1] stdin, stdout, 和stderr的文件描述符分别是0, 1, 和 2. 除了这3个文件, 对于其他那些需要打开的文件, 保留了文件描述符3到9.
ls -l > list.txt

#clear
: > list.txt

ls -l > list.txt
#append to list.txt
ls >> list.txt

# 将stdout和stderr都重定向到文件"filename". 
errcommand &> err.txt
abcd 2>> err.txt

# M>&N
# "M"是一个文件描述符, 如果没有明确指定的话默认为1. 
# "N"是另一个文件描述符. 

# 2>&1
# 重定向stderr到stdout. 
# 将错误消息的输出, 发送到与标准输出所指向的地方. 

# i>&j
# 重定向文件描述符i到j. 
# 指向i文件的所有输出都发送到j. 

# >&j
# 默认的, 重定向文件描述符1(stdout)到j. 
# 所有传递到stdout的输出都送到j中去. 

# 0< FILENAME
# < FILENAME
# 从文件中接受输入. 
# 与">"是成对命令, 并且通常都是结合使用. 
#
# grep search-word <filename

#|
cat *.txt | sort | uniq > result-file
