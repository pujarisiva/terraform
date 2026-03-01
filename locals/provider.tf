terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS Provider version
    }
  }
  backend "s3" {
    bucket = "daws-remote-file"
    key    = "sivaab221.tfstate"
    region = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables S3 native locking
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1" #region
}