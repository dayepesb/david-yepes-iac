#! /bin/bash

terraform workspace select sandbox && terraform validate && terraform plan -var-file=vars/sandbox.tfvars -out=sandbox.tfplan && TF_LOG=TRACE terraform apply -auto-approve sandbox.tfplan