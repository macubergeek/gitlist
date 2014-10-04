#!/bin/bash
a=`cat <<-EOF
https://github.com/mattifestation/PowerSploit.git
https://github.com/Veil-Framework/Veil-PowerView.git
https://github.com/HarmJ0y/PowerUp.git
https://github.com/darkoperator/Posh-SecMod.git
https://github.com/besimorhino/powercat.git
https://github.com/samratashok/nishang.git
https://github.com/vacmf/powershell-scripts.git
EOF`
cd /var/www
for i in $a
do
git clone $i
done
