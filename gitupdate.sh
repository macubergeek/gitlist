#!/bin/bash
cd ../
for i in `ls`
do
cd $i
sudo git pull 2>&1 2>/dev/null
cd /opt
done
