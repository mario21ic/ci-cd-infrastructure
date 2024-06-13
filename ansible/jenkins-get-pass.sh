#!/bin/bash

IPs=$(az vm list-ip-addresses --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" -o tsv)
output_file="jenkins-claves.txt"
counter=0


touch $output_file
for ip in $IPs; do
    CLAVE=$(ssh -i ../ansible/sshkey.pem azureuser@$ip sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
    echo "$ip $CLAVE" >> $output_file
    counter=$((counter + 1))
done
