# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

# if you wants to configure the access here, use below
# provider "aws" {
#   region = ""
#   access_key = ""
#   secret_key = ""
# }

module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "jil-test-26-05-2023"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
