# Print AWS Region
output "region" {
  description = "AWS region"
  value       = var.aws_region
}

# Print Vpc Id
output "vpc_id" {
  description = "Vpc Id"
  value       = module.vpc.default_vpc_id
}

