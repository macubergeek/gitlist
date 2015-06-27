#!/bin/bash
cd /opt
for i in `ls | grep -v *.tar.gz`
do
cd $i
sudo git pull
cd /opt
done
