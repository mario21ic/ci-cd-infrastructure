#!/bin/bash

ssh -i ../ansible/sshkey.pem azureuser@$1 sudo cat /var/lib/jenkins/secrets/initialAdminPassword
