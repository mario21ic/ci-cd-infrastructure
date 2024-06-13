#!/bin/bash

terraform output admin_ssh_key > ../ansible/sshkey.pem
chmod 0600 ../ansible/sshkey.pem

echo "Revisa la carpeta ../ansible/sshkey.pem"
echo "Para conectar por ssh"
echo "ssh -i sshkey.pem azureuser@<ip-servidor>"

