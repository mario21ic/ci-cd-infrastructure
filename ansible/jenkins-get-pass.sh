#!/bin/bash

IPs=$(az vm list-ip-addresses --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" -o tsv)
output_file="jenkins-claves.txt"
counter=0


rm -f $output_file
touch $output_file
for ip in $IPs; do
    echo "###" >> $output_file
    CLAVE=$(ssh -i ./sshkey.pem azureuser@$ip sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
    echo "Server IP: $ip - Jenkins clave inicial: $CLAVE" >> $output_file
    echo "Terminal: ssh -i ./sshkey.pem azureuser@$ip" >> $output_file
    counter=$((counter + 1))
done

echo "Archivo creado $output_file"
cat $output_file
