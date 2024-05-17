# Print AWS Region
output "region" {
  description = "AWS region"
  value       = var.aws_region
}

# Print Vpc Id
output "vpc_id" {
  description = "Vpc Id"
  value       = module.vpc.vpc_id
}

output "project_name" {
  description = "Project Name"
  value       = var.resource_tags["project"]
}

output "environment" {
  description = "Project environment (Dev/QA/Staging/Prod)"
  value       = var.resource_tags["environment"]
}

output "vpc_cidr_block" {
  description = "VPC CIDR block"
  value       = var.vpc_cidr_block
}

# Print Vpc Public Subnets
output "vpc_public_subnets" {
  description = "Vpc Public Subnets"
  value       = module.vpc.public_subnets
}

# Print Vpc Private Subnets
output "vpc_private_subnets" {
  description = "Vpc Private Subnets"
  value       = module.vpc.private_subnets
}


output "resource_tags" {
  description = "Resource Tags"
  value       = var.resource_tags
}


