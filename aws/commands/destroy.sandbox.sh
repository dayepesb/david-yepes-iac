#! /bin/bash

terraform workspace select sandbox && terraform validate && terraform destroy -auto-approve -var-file=vars/sandbox.tfvars