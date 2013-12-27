#!/bin/bash
#等号两端不能有空格
a="hello,x!"
b=1
echo $a
echo "This my ${b}st shell script."

val=1
((val++))
echo $val
echo $((val+2*2)) #6

if [ ${SHELL} = "/bin/bash" ]; then
   echo "your login shell is the bash (bourne again shell)"
else
   echo "your login shell is not bash but ${SHELL}"
fi

c=1
d=1
if [ "$c" = "$d" ]; then
    echo "\$c === \$d"
fi

[ -n "$c" ] && echo "test use &&"
[ -n "$e" ] || { echo "test use ||"; exit 1; }
