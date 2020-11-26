#!/bin/sh

PATH="/bin:/usr/bin"

for i in `cat modperms.list | grep -v '^ *$' | grep -v '^#'`
do
  if [ ! -e $i ]; then
    echo "$i does not exist"
  else
    perm=`ls -Lld $i | cut -c 8-10`
    if [ $perm != "---" ]; then
      echo "$i has other-perms $perm; reducing to ---"
      chmod -RL o-rwx $i
    fi
  fi
done
