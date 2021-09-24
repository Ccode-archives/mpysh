#!/usr/bin/bash
cp mpysh.py mpysh
chmod +x mpysh
cwd=$PWD
cd ~
mkdir mpysh-bin
cd $cwd
cd bin
chmod +x exec
cp * ~/mpysh-bin
