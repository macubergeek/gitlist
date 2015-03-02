#!/bin/bash
#define variables

echo "$(tput setaf 1)  _       ___ _______    ____  _                              __   "
echo " | |     / (_) ____(_)  / __ \\(_)___  ___  ____ _____  ____  / /__ "
echo " | | /| / / / /_  / /  / /_/ / / __ \/ _ \/ __ '/ __ \/ __ \/ / _ \\"
echo " | |/ |/ / / __/ / /  / ____/ / / / /  __/ /_/ / /_/ / /_/ / /  __/"
echo " |__/|__/_/_/   /_/  /_/   /_/_/ /_/\___/\__,_/ .___/ .___/_/\___/ "
echo " $(tput sgr0) OWN the Network                            $(tput setaf 1)/_/   /_/$(tput sgr0)       v2.1"
echo ""


echo -n "Pineapple Netmask [255.255.255.0]: "
read pineapplenetmask
if [[ $pineapplenetmask == '' ]]; then
pineapplenetmask=255.255.255.0 #Default netmask for /24 network
fi


echo -n "Pineapple Network [172.16.42.0/24]: "
read pineapplenet
if [[ $pineapplenet == '' ]]; then
pineapplenet=172.16.42.0/24 # Pineapple network. Default is 172.16.42.0/24
fi


echo -n "Interface between PC and Pineapple [eth0]: "
read pineapplelan
if [[ $pineapplelan == '' ]]; then
pineapplelan=eth0 # Interface of ethernet cable directly connected to Pineapple
fi


And here's ascript that just does the NAT firewall:
#!/bin/bash

## CHECK FOR ROOT
wai=`whoami`


if [[ "$wai" != "root" ]]
then
echo "


You need to be uid 0. Re-run as:


sudo $0
"
exit
fi


## SET SYSTEM TO PREROUTING IP PACKETS
echo "1" > /proc/sys/net/ipv4/ip_forward


## HTTP TRAFFIC
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 8080


## HTTPS TRAFFIC
iptables -t nat -A PREROUTING -p tcp --destination-port 443 -j REDIRECT --to-port 8080


## CHECK FOR BURP
pgrep -fl burp 2>&1 > /dev/null || echo "Are you sure burp suite is running?\nOr maybe you intend to use something else. I didn't check for that."