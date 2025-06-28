#!/bin/bash

set -e 

cd /mnt/d/STUDY/projects/remote\ server/enviroments/dev

terraform init
terraform plan -var-file="terraform.tfvars" -out=tfplan
if [ $? -ne 0 ]; then
  echo "Terraform plan failed. Exiting."
  exit 1
fi 
terraform apply -auto-approve tfplan
if [ $? -ne 0 ]; then
  echo "Terraform apply failed. Exiting."
  exit 1
fi
echo "Terraform apply completed successfully."

