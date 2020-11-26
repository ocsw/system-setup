#!/bin/sh

for i in `cat z`
do
  N=`echo $i | awk -F '|' '{print $2}'`
  S=`echo $i | awk -F '|' '{print $1}'`
  R=`ls -la ../i386/$N | awk '{print $5}'`
  if [ $S != $R ]; then
    echo $i
  fi
done
