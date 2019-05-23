#!/bin/sh

set -e

cd $1

# Download terraform zip
terraform_url=https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

echo "Downloading $terraform_url."
curl -o terraform.zip $terraform_url

# Unzip and install
unzip terraform.zip
mv terraform /usr/local/bin
rm terraform.zip



