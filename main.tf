# Set AWS Region
provider "aws" {
  region  = var.aws_region
}

# Get Availability Zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Create VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = "vpc-${var.resource_tags["project"]}-${var.resource_tags["environment"]}"
  cidr = var.vpc_cidr_block

  azs = slice(data.aws_availability_zones.available.names, 0, 3)
  
  private_subnets = slice(var.private_subnets_cidr_blocks, 0, var.private_subnet_count)
  public_subnets  = slice(var.public_subnets_cidr_blocks, 0, var.public_subnet_count)

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = var.resource_tags
}
