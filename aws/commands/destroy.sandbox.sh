#! /bin/bash

terraform workspace select sandbox && terraform validate && TF_LOG=TRACE terraform destroy -auto-approve -var-file=vars/sandbox.tfvars