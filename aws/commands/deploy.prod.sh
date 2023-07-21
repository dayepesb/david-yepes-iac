#! /bin/bash

terraform workspace select prod && terraform validate && terraform plan -var-file=vars/prod.tfvars -out=prod.tfplan && terraform apply -auto-approve prod.tfplan