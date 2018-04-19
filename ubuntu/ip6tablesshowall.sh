#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

umask 077

numonly=''
if [ x$1 = 'x-n' ]; then
  numonly='-n'
fi

echo "raw table:"
echo "----------"
ip6tables -t raw -v --line-numbers $numonly -L
echo
echo "mangle table:"
echo "-------------"
ip6tables -t mangle -v --line-numbers $numonly -L
echo
echo "nat table:"
echo "----------"
ip6tables -t nat -v --line-numbers $numonly -L
echo
echo "filter table:"
echo "-------------"
ip6tables -t filter -v --line-numbers $numonly -L
