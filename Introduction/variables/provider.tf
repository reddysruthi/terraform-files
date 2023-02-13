terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
  # S3 bucket for storing state file in remote backend
  backend "s3" {
    bucket = "terraform-statefile-sruthi"
    key    = "terraform.tfstate"
    region = "us-east-1"

    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  default_tags {
    tags = {
      "name" = "production"
    }
  }
}
