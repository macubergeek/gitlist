#!/bin/bash
msfupdate
cd /opt/metasploit/apps/pro/msf3
svn export http://xssf.googlecode/svn/trunk ./ --force
