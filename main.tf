terraform {
  required_version = ">= 1.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.50.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


terraform {
  backend "s3" {
    bucket = "fplwir-tf-backend"
    key = "backend/terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
    use_lockfile = true
  }
}