#!/usr/bin/bash
cp minsh.py minsh
chmod +x minsh
cwd=$PWD
cd ~
if [ ! -f minsh-bin ]; then
  mkdir minsh-bin
fi
cd $cwd
cd bin
chmod +x exec
cp * ~/minsh-bin
