#!/bin/bash
echo "$(who)"
echo "$(who -m)"
echo "$(whoami)"
echo "$(w)"

#logname只会打印出登录的用户名, 而whoami将会给出附着到当前进程的用户名. 就像我们上边看到的那样, 这两个名字有时会不同.
echo "$(logname)"

#设置, 修改, 或者管理用户的密码.
#passwd

echo
#显示用户登录的连接时间
echo "ac$(ac)"

echo
#用户最后登录的信息
echo "$(last)"

echo
#显示当前用户终端的名字. 注意每一个单独的xterm窗口都被算作一个不同的终端.
echo "$(tty)"

#显示系统信息(OS, 内核版本, 等等.)
echo "$(uname -a)"
