terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.47.0"
    }
  }
    backend "s3" {
    bucket = "remote-state-jayashankar-dev"
    key    = "k8-terraform-ci/cd"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
}
}   

provider "aws" {
  region = "us-east-1"
} 