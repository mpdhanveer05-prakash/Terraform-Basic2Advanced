terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-bucket-demo-1"
    key    = "terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "remote-state-table"
    
  }
}