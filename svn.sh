#!/bin/bash
a=`cat <<-EOF
http://zigbee-security.googlecode.com/svn/trunk/ zigbee-security-read-only
http://svn.aircrack-ng.org/branch/airoscript-ng/ airoscript-ng
EOF`
cd /opt
for i in $a
do
svn checkout $i
done
