#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

umask 077

savefile=/etc/network/ip6tables

touch $savefile $savefile.bak
chmod 600 $savefile $savefile.bak
chown root:root $savefile $savefile.bak

cat $savefile > $savefile.bak
ip6tables-save > $savefile
