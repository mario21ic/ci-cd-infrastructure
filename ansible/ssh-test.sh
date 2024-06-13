#!/bin/bash

IPs=$(az vm list-ip-addresses --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" -o tsv)
counter=0


for ip in $IPs; do
    echo "####"
    echo "IP $ip"
    ssh -i ./sshkey.pem azureuser@$ip id
    counter=$((counter + 1))
done

echo "Test finalizado"
