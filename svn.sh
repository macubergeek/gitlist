#!/bin/bash
a=`cat <<-EOF
http://zigbee-security.googlecode.com/svn/trunk/ zigbee-security-read-only
http://svn.aircrack-ng.org/branch/airoscript-ng/ airoscript-ng
http://va-pt.googlecode.com/svn/trunk/ va-pt-read-only
https://svn.code.sf.net/p/jbrofuzz/code/ jbrofuzz
http://domsnitch.googlecode.com/svn/trunk/ domsnitch-read-only
http://unix-privesc-check.googlecode.com/svn/trunk/ unix-privesc-check-read-only
EOF`
cd ../
for i in $a
do
svn checkout $i
done
