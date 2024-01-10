#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

umask 077

ip6tables -t nat -P PREROUTING ACCEPT
ip6tables -t nat -P INPUT ACCEPT
ip6tables -t nat -P OUTPUT ACCEPT
ip6tables -t nat -P POSTROUTING ACCEPT
ip6tables -t nat -F
ip6tables -t nat -X
ip6tables -t mangle -P PREROUTING ACCEPT
ip6tables -t mangle -P INPUT ACCEPT
ip6tables -t mangle -P FORWARD ACCEPT
ip6tables -t mangle -P OUTPUT ACCEPT
ip6tables -t mangle -P POSTROUTING ACCEPT
ip6tables -t mangle -F
ip6tables -t mangle -X
ip6tables -t filter -P INPUT ACCEPT
ip6tables -t filter -P FORWARD ACCEPT
ip6tables -t filter -P OUTPUT ACCEPT
ip6tables -t filter -F
ip6tables -t filter -X
ip6tables -t raw -P PREROUTING ACCEPT
ip6tables -t raw -P OUTPUT ACCEPT
ip6tables -t raw -F
ip6tables -t raw -X
