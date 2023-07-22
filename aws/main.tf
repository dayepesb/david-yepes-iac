// Provider configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                  = "us-east-1"
  profile                 = "personal"
  shared_credentials_file = "~/.aws/credentials"
  //shared_credentials_file = "C:/Users/username/.aws/credentials"
}

resource "aws_s3_bucket" "s3_bucket_website_profile" {
  bucket = "${terraform.workspace}-profile-website"
  acl    = "private"
  tags = {
    Name        = "${terraform.workspace}-profile-website"
    Environment = terraform.workspace
  }
}

resource "aws_s3_bucket_website_configuration" "s3_bucket_website_configuration" {

  bucket = "${terraform.workspace}-profile-website"
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      http_error_code_returned_equals = 404
    }
    redirect {
      host_name               = "profile.david-yepes.com"
      protocol                = "https"
      replace_key_prefix_with = "#!/"
    }
  }
}
