output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.custom_vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.custom_vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.custom_vpc.private_subnet_id
}
