#!/bin/bash
a=`cat <<-EOF
http://zigbee-security.googlecode.com/svn/trunk/ zigbee-security-read-only`
EOF`
cd /opt
for i in $a
do
svn checkout $i
done
