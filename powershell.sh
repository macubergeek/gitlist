#!/bin/bash
a=`cat <<-EOF
https://github.com/mattifestation/PowerSploit.git
https://github.com/darkoperator/Posh-SecMod.git
https://github.com/besimorhino/powercat.git
https://github.com/samratashok/nishang.git
https://github.com/vacmf/powershell-scripts.git
https://github.com/rvrsh3ll/POSH-Commander.git
https://github.com/PyroTek3/PowerShell-AD-Recon.git
https://github.com/mattifestation/PowerShellArsenal.git
https://github.com/Veil-Framework/Veil.git
https://github.com/PowerShellEmpire/Empire.git
https://github.com/Shellntel/scripts.git
https://github.com/secabstraction/PowerCat.git
https://github.com/samratashok/nishang.git
EOF`
cd /var/www
for i in $a
do
git clone $i
done
