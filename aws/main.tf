// Provider configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  /*
  var-file = matchkeys({
    "sandbox" = "sandbox.tfvars",
    "prod"    = "prod.tfvars"
  }, terraform.workspace)
  */
}

provider "aws" {
  region                  = "us-east-1"
  profile                 = "personal"
  shared_credentials_file = "~/.aws/credentials"
  //shared_credentials_file = "C:/Users/username/.aws/credentials"
}

resource "aws_secretsmanager_secret" "key" {
  name        = "${terraform.workspace}-${var.secret_name}"
  description = "key"
  tags = {
    Name = "key"

  }
}
