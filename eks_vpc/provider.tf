provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "remote" {
    organization = "shah-demo"

    workspaces {
      name = "vpc-demo"
    }
  }
}
