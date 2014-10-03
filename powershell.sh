#!/bin/bash
a=`cat <<-EOF
https://github.com/mattifestation/PowerSploit.git
https://github.com/Veil-Framework/Veil-PowerView.git
https://github.com/HarmJ0y/PowerUp.git
EOF`
cd /var/www
for i in $a
do
git clone $i
done
