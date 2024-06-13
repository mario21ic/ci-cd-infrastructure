#!/bin/bash
set -xe

ssh -i sshkey.pem azureuser@$1
