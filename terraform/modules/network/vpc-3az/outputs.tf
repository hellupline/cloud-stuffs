# availability zones outputs
output "availability_zone_0" {
  value = {
    public_route_table_id     = module.availability_zone_0.public_route_table_id
    public_subnet_id          = module.availability_zone_0.public_subnet_id
    public_subnet_arn         = module.availability_zone_0.public_subnet_arn
    public_subnet_cidr_block  = module.availability_zone_0.public_subnet_cidr_block
    public_ip                 = module.availability_zone_0.public_ip
    eip_id                    = module.availability_zone_0.eip_id
    natgw_id                  = module.availability_zone_0.natgw_id
    private_route_table_id    = module.availability_zone_0.private_route_table_id
    private_subnet_id         = module.availability_zone_0.private_subnet_id
    private_subnet_arn        = module.availability_zone_0.private_subnet_arn
    private_subnet_cidr_block = module.availability_zone_0.private_subnet_cidr_block
  }
}

output "availability_zone_1" {
  value = {
    public_route_table_id     = module.availability_zone_1.public_route_table_id
    public_subnet_id          = module.availability_zone_1.public_subnet_id
    public_subnet_arn         = module.availability_zone_1.public_subnet_arn
    public_subnet_cidr_block  = module.availability_zone_1.public_subnet_cidr_block
    public_ip                 = module.availability_zone_1.public_ip
    eip_id                    = module.availability_zone_1.eip_id
    natgw_id                  = module.availability_zone_1.natgw_id
    private_route_table_id    = module.availability_zone_1.private_route_table_id
    private_subnet_id         = module.availability_zone_1.private_subnet_id
    private_subnet_arn        = module.availability_zone_1.private_subnet_arn
    private_subnet_cidr_block = module.availability_zone_1.private_subnet_cidr_block
  }
}

output "availability_zone_2" {
  value = {
    public_route_table_id     = module.availability_zone_2.public_route_table_id
    public_subnet_id          = module.availability_zone_2.public_subnet_id
    public_subnet_arn         = module.availability_zone_2.public_subnet_arn
    public_subnet_cidr_block  = module.availability_zone_2.public_subnet_cidr_block
    public_ip                 = module.availability_zone_2.public_ip
    eip_id                    = module.availability_zone_2.eip_id
    natgw_id                  = module.availability_zone_2.natgw_id
    private_route_table_id    = module.availability_zone_2.private_route_table_id
    private_subnet_id         = module.availability_zone_2.private_subnet_id
    private_subnet_arn        = module.availability_zone_2.private_subnet_arn
    private_subnet_cidr_block = module.availability_zone_2.private_subnet_cidr_block
  }
}

# public module outputs
output "public_route_table_ids" {
  description = "A list of IDs of public route tables"
  value = [
    module.availability_zone_0.public_route_table_id,
    module.availability_zone_1.public_route_table_id,
    module.availability_zone_2.public_route_table_id,
  ]
}

output "public_subnet_ids" {
  description = "A list of IDs of public subnets"
  value = [
    module.availability_zone_0.public_subnet_id,
    module.availability_zone_1.public_subnet_id,
    module.availability_zone_2.public_subnet_id,
  ]
}

output "public_subnet_arns" {
  description = "A list of ARNs of public subnets"
  value = [
    module.availability_zone_0.public_subnet_arn,
    module.availability_zone_1.public_subnet_arn,
    module.availability_zone_2.public_subnet_arn,
  ]
}

output "public_subnet_cidr_blocks" {
  description = "A list of CIDR blocks of public subnets"
  value = [
    module.availability_zone_0.public_subnet_cidr_block,
    module.availability_zone_1.public_subnet_cidr_block,
    module.availability_zone_2.public_subnet_cidr_block,
  ]
}

# nat module outputs
output "public_ips" {
  description = "A list of Elastic IPs created for AWS NAT Gateways"
  value = [
    module.availability_zone_0.public_ip,
    module.availability_zone_1.public_ip,
    module.availability_zone_2.public_ip,
  ]
}

output "eip_ids" {
  description = "a list of Allocation ID of Elastic IPs created for AWS NAT Gateways"
  value = [
    module.availability_zone_0.eip_id,
    module.availability_zone_1.eip_id,
    module.availability_zone_2.eip_id,
  ]
}

output "natgw_id" {
  description = "A list of NAT Gateway IDs"
  value = [
    module.availability_zone_0.natgw_id,
    module.availability_zone_1.natgw_id,
    module.availability_zone_2.natgw_id,
  ]
}

# private module outputs
output "private_route_table_ids" {
  description = "A list of IDs of private route tables"
  value = [
    module.availability_zone_0.private_route_table_id,
    module.availability_zone_1.private_route_table_id,
    module.availability_zone_2.private_route_table_id,
  ]
}

output "private_subnet_ids" {
  description = "A list of IDs of private subnets"
  value = [
    module.availability_zone_0.private_subnet_id,
    module.availability_zone_1.private_subnet_id,
    module.availability_zone_2.private_subnet_id,
  ]
}

output "private_subnet_arns" {
  description = "A list of ARNs of private subnets"
  value = [
    module.availability_zone_0.private_subnet_arn,
    module.availability_zone_1.private_subnet_arn,
    module.availability_zone_2.private_subnet_arn,
  ]
}

output "private_subnet_cidr_blocks" {
  description = "A list of CIDR blocks of private subnets"
  value = [
    module.availability_zone_0.private_subnet_cidr_block,
    module.availability_zone_1.private_subnet_cidr_block,
    module.availability_zone_2.private_subnet_cidr_block,
  ]
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}
