#!/bin/bash

set -e

cd post-deployment/

sudo rm -rf .terraform
sudo terraform init -backend-config=environment/backend.tfvars
sudo terraform destroy --auto-approve -var-file=environment/terraform.tfvars

cd ../
cd deployment/

sudo rm -rf .terraform
sudo terraform init -backend-config=environment/sa-east-1/backend.tfvars
sudo terraform destroy --auto-approve -var-file=environment/sa-east-1/terraform.tfvars


cd ../
cd deployment/

sudo rm -rf .terraform
sudo terraform init -backend-config=environment/us-east-1/backend.tfvars
sudo terraform destroy --auto-approve -var-file=environment/us-east-1/terraform.tfvars

cd ../
cd pre-deployment/

sudo rm -rf .terraform
sudo terraform init -backend-config=environment/backend.tfvars
sudo terraform destroy --auto-approve -var-file=environment/terraform.tfvars