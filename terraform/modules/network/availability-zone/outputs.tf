# public module outputs
output "public_route_table_id" {
  description = "ID of public route table"
  value       = module.public_subnet.route_table_id
}

output "public_subnet_id" {
  description = "ID of public subnet"
  value       = module.public_subnet.subnet_id
}

output "public_subnet_arn" {
  description = "ARN of public subnet"
  value       = module.public_subnet.subnet_arn
}

output "public_subnet_cidr_block" {
  description = "CIDR block of public subnet"
  value       = module.public_subnet.subnet_cidr_block
}

# nat module outputs
output "public_ip" {
  description = "Elastic IP created for AWS NAT Gateway"
  value       = module.nat_gateway.public_ip
}

output "eip_id" {
  description = "Allocation ID of Elastic IP created for AWS NAT Gateway"
  value       = module.nat_gateway.eip_id
}

output "natgw_id" {
  description = "NAT Gateway ID"
  value       = module.nat_gateway.natgw_id
}

# private module outputs
output "private_route_table_id" {
  description = "ID of private route table"
  value       = module.private_subnet.route_table_id
}

output "private_subnet_id" {
  description = "ID of private subnet"
  value       = module.private_subnet.subnet_id
}

output "private_subnet_arn" {
  description = "ARN of private subnet"
  value       = module.private_subnet.subnet_arn
}

output "private_subnet_cidr_block" {
  description = "CIDR block of private subnet"
  value       = module.private_subnet.subnet_cidr_block
}
