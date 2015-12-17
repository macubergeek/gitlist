#!/bin/bash
a=`cat <<-EOF
https://github.com/ChrisTruncer/WMIOps.git 
https://github.com/Kevin-Robertson/Inveigh.git
https://github.com/PowerShellEmpire/Empire.git
https://github.com/PowerShellEmpire/PowerTools.git
https://github.com/PowerShellMafia/PowerSploit.git
https://github.com/PyroTek3/PowerShell-AD-Recon.git
https://github.com/Shellntel/scripts.git
https://github.com/Veil-Framework/Veil.git
https://github.com/besimorhino/powercat.git
https://github.com/byt3bl33d3r/CrackMapExec.git
https://github.com/darkoperator/Posh-SSH.git
https://github.com/darkoperator/Posh-SecMod.git
https://github.com/denandz/KeeFarce.git
https://github.com/iagox86/dnscat2.git
https://github.com/mattifestation/PowerShellArsenal
https://github.com/mattifestation/PowerShellArsenal.git
https://github.com/mattifestation/PowerSploit.git
https://github.com/morgoroth/Veil-PowerView.git
https://github.com/rvrsh3ll/POSH-Commander.git
https://github.com/samratashok/nishang.git
https://github.com/secabstraction/Create-WMIshell.git
https://github.com/secabstraction/PowerCat.git
https://github.com/secabstraction/WmiSploit.git
https://github.com/vacmf/powershell-scripts.git
https://github.com/xorrior/RandomPS-Scripts.git
https://github.com/ChrisTruncer/WMIOps.git
https://github.com/HarmJ0y/CheatSheets.git
https://github.com/enigma0x3/Powershell-Payload-Excel-Delivery.git
https://github.com/tfairane/DocDropper.git
EOF`
cd /var/www
for i in $a
do
git clone $i
done
