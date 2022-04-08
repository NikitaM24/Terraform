terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
    backend "s3" {
        bucket = "trainer2022mar121"
        region = "ap-south-1"
        key = "demo_backend/terraform.tfstate"
    }
  

}
# Configuration options
provider "aws" {
  region = "ap-south-1"
}
