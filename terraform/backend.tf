terraform {
  backend "s3" {
    bucket         = "terraform-aws-ci-cd-state-231838751658"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

