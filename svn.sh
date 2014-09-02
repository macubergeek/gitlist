#!/bin/bash
a=`cat <<-EOF
http://impacket.googlecode.com/svn/trunk/impacket
http://edgessh.googlecode.com/svn/trunk/ edgessh-read-only
http://host-extract.googlecode.com/svn/trunk/ host-extract-read-only
http://subterfuge.googlecode.com/svn/trunk/ subterfuge-read-only
http://hedyattack.googlecode.com/svn/trunk/ hedyattack-read-only
svn://hackarmoury.com/live ha
http://wifite.googlecode.com/svn/trunk/ wifite-read-only
EOF`
cd /opt
for i in $a
do
$i
done