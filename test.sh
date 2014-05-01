#!/bin/bash


mkdir test

cd test

tar -zxvf ../rom.tar.gz

FILES=*.xml
for f in $FILES
do
#  echo "Processing $f file..."
  
  var1=$(md5sum $f)
  var1=${var1:0:32}
  var2=$(md5sum ../$f)
  var2=${var2:0:32}
  
  echo $var1
  echo $var2
  echo ""
  
  if [ "$var1" != "$var2" ]
  then
  echo "TEST"
  exit 1;
  fi
  
  # take action on each file. $f store current file name
#  cat $f
done
