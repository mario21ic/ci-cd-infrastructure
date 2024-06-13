#!/bin/bash
set -e

IPs=$(az vm list-ip-addresses --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" -o tsv)
output_file="hosts"
counter=0


echo [azure_vms] > $output_file
for ip in $IPs; do
    echo "vm${counter} ansible_ssh_host=${ip} ansible_ssh_port=22 ansible_ssh_user=azureuser ansible_ssh_private_key_file=./sshkey.pem" >> $output_file
    counter=$((counter + 1))
done

echo "Archivo $output_file"
cat $output_file
