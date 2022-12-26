#!/bin/bash

# fail on any error
set -eu

# install yum-config-manager to manage the repository
sudo yum install -y yum-utils shadow-utils

# use yum-config-manager to add the official Hashicorp Linux repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# install terraform
sudo yum -y install terraform

# verify terraform is installed
terraform --version
