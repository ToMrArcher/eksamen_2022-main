terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  backend "s3" {
    bucket = "sye003-exam-s3bucket"
    key    = "shopifly.state"
    region = "eu-west-1"
  }
}