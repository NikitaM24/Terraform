terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
# Configuration options
provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias = "us_west"
  region = "us-west-1"
}