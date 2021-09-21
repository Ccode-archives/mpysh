#!/usr/bin/bash
cp minsh.py minsh
chmod +x minsh
cwd=$PWD
cd ~
mkdir minsh-bin
cd $cwd
cd bin
chmod +x exec
cp * ~/minsh-bin
