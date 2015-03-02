#!/bin/bash
cd /opt
svn co http://impacket.googlecode.com/svn/trunk/impacket
svn co http://edgessh.googlecode.com/svn/trunk/ edgessh-read-only
svn checkout http://host-extract.googlecode.com/svn/trunk/ host-extract-read-only
svn checkout http://subterfuge.googlecode.com/svn/trunk/ subterfuge-read-only
