# AWS S3 static website bucket

This module provisions AWS S3 buckets configured for static website hosting.

Inputs
  - bucket_name
  - tags

Outputs
  - website_bucket_arn      = (known after apply)
  - website_bucket_domain   = (known after apply)
  - website_bucket_name     = (known after apply)

Code snippet:
```
  module "website_s3_bucket" {
    source = "./modules/aws-s3-static-website-bucket"

    bucket_name = "jil-test-26-05-2023"

    tags = {
        Terraform   = "true"
        Environment = "dev"
    }
  }
```

