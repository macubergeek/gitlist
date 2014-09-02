#!/bin/bash
cd /opt
for i in `ls`
do
cd $i
sudo git pull
cd /opt
done
