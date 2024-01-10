#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

umask 077

savefile=/etc/network/ip6tables

ip6tables-restore < $savefile
