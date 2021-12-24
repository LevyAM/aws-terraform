terraform {
    required_version = ">=0.13.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0.0"
        }

        local = {
            source = "hashicorp/local"
            version = "2.1.0"
        }
        backend "s3" {
            bucket = "terraform-state"
            key    = "terraform.tfstate"
            region = provider.aws.region
        }
    }
}

provider "aws" {
    region = "us-east-2"
}