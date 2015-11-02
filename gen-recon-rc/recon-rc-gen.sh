#!/bin/bash
echo "Set up workspace, domain, locations, hosts, subnets."
echo "What is name of workspace?"
read ws
echo workspaces select $ws >> ../$ws.rc
for i in `cat modules.txt`;do echo $i&& echo run;done | sed 's/recon/use recon/g' >> ../$ws.rc
