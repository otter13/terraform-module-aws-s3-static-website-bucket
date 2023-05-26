# Terraform Module - aws-s3-static-website-bucket

A Terraform modules (see modules\aws-s3-static-website-bucket) for provisioning a bucket web hosting.

Inputs
  - bucket_name
  - tags

Outputs
  - website_bucket_arn      = (known after apply)
  - website_bucket_domain   = (known after apply)
  - website_bucket_name     = (known after apply)

This repo is a companion repo to consume the module within it - modules\aws-s3-static-website-bucket.

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

