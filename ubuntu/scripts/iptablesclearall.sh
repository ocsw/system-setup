#!/bin/sh

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

umask 077

iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P INPUT ACCEPT
iptables -t nat -P OUTPUT ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -P PREROUTING ACCEPT
iptables -t mangle -P INPUT ACCEPT
iptables -t mangle -P FORWARD ACCEPT
iptables -t mangle -P OUTPUT ACCEPT
iptables -t mangle -P POSTROUTING ACCEPT
iptables -t mangle -F
iptables -t mangle -X
iptables -t filter -P INPUT ACCEPT
iptables -t filter -P FORWARD ACCEPT
iptables -t filter -P OUTPUT ACCEPT
iptables -t filter -F
iptables -t filter -X
iptables -t raw -P PREROUTING ACCEPT
iptables -t raw -P OUTPUT ACCEPT
iptables -t raw -F
iptables -t raw -X
