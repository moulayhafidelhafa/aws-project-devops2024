#Configure Providers
// versions.tf
terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0.0"
    }
  }
}

#You can change the region if needed
provider "aws" {
  region = "us-east-1"    #You can can change the code if they ask you
}

#Create vpc
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

#Create 3 public subnets and 3 private subnets
  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#Create Nat Gateway and Internet Gateway
enable_nat_gateway = true
enable_vpn_gateway = flase
create_ing = true 
enable_dns_hostnames = true 
enable_dns_support = true  
