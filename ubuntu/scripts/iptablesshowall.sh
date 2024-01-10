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
iptables -t raw -v --line-numbers $numonly -L
echo
echo "mangle table:"
echo "-------------"
iptables -t mangle -v --line-numbers $numonly -L
echo
echo "nat table:"
echo "----------"
iptables -t nat -v --line-numbers $numonly -L
echo
echo "filter table:"
echo "-------------"
iptables -t filter -v --line-numbers $numonly -L
