#! /bin/bash

terraform workspace select prod && terraform validate && terraform destroy -auto-approve -var-file=vars/prod.tfvars