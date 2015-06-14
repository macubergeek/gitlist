#!/bin/bash
a=`cat <<-EOF
https://github.com/mattifestation/PowerSploit.git
https://github.com/darkoperator/Posh-SecMod.git
https://github.com/besimorhino/powercat.git
https://github.com/samratashok/nishang.git
https://github.com/vacmf/powershell-scripts.git
https://github.com/Veil-Framework/Veil-Evasion.git
https://github.com/Veil-Framework/PowerTools.git
https://github.com/Veil-Framework/Veil.git
https://github.com/Veil-Framework/Veil-Pillage.git
https://github.com/Veil-Framework/Veil-Catapult.git
https://github.com/rvrsh3ll/POSH-Commander.git
https://github.com/PyroTek3/PowerShell-AD-Recon.git
https://github.com/mattifestation/PowerShellArsenal.git
https://github.com/Veil-Framework/Veil-Pillage.git
EOF`
cd /var/www
for i in $a
do
git clone $i
done
