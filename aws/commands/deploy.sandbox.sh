#! /bin/bash

terraform workspace select sandbox && terraform validate && terraform plan -var-file=vars/sandbox.tfvars -out=sandbox.tfplan && terraform apply -auto-approve sandbox.tfplan