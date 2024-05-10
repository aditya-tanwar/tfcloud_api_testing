
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Configure the AWS Provider

provider "aws" {
  alias = "myaws01"
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}



