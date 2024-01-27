provider "aws" {
  profile = "cloud_profile"
  region  = "ap-south-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.33.0"
    }
  }
}