module "availability_zone_0" {
  source    = "../availability-zone"
  providers = { aws = aws }

  name   = var.name
  vpc_id = module.vpc.vpc_id
  igw_id = module.vpc.igw_id

  availability_zone  = var.availability_zones[0].availability_zone_name
  public_cidr_block  = var.availability_zones[0].public_cidr_block
  private_cidr_block = var.availability_zones[0].private_cidr_block

  tags = merge(var.tags, var.availability_zones[0].tags)

  public_network_tags      = merge(var.tags, var.availability_zones[0].public_network_tags)
  public_route_table_tags  = merge(var.tags, var.availability_zones[0].public_route_table_tags)
  public_subnet_tags       = merge(var.tags, var.availability_zones[0].public_subnet_tags)
  nat_gateway_tags         = merge(var.tags, var.availability_zones[0].nat_gateway_tags)
  nat_eip_tags             = merge(var.tags, var.availability_zones[0].nat_eip_tags)
  private_network_tags     = merge(var.tags, var.availability_zones[0].private_network_tags)
  private_route_table_tags = merge(var.tags, var.availability_zones[0].private_route_table_tags)
  private_subnet_tags      = merge(var.tags, var.availability_zones[0].private_subnet_tags)
}


module "availability_zone_1" {
  source    = "../availability-zone"
  providers = { aws = aws }

  name   = var.name
  vpc_id = module.vpc.vpc_id
  igw_id = module.vpc.igw_id

  availability_zone  = var.availability_zones[1].availability_zone_name
  public_cidr_block  = var.availability_zones[1].public_cidr_block
  private_cidr_block = var.availability_zones[1].private_cidr_block

  tags = merge(var.tags, var.availability_zones[1].tags)

  public_network_tags      = merge(var.tags, var.availability_zones[1].public_network_tags)
  public_route_table_tags  = merge(var.tags, var.availability_zones[1].public_route_table_tags)
  public_subnet_tags       = merge(var.tags, var.availability_zones[1].public_subnet_tags)
  nat_gateway_tags         = merge(var.tags, var.availability_zones[1].nat_gateway_tags)
  nat_eip_tags             = merge(var.tags, var.availability_zones[1].nat_eip_tags)
  private_network_tags     = merge(var.tags, var.availability_zones[1].private_network_tags)
  private_route_table_tags = merge(var.tags, var.availability_zones[1].private_route_table_tags)
  private_subnet_tags      = merge(var.tags, var.availability_zones[1].private_subnet_tags)
}


module "availability_zone_2" {
  source    = "../availability-zone"
  providers = { aws = aws }

  name   = var.name
  vpc_id = module.vpc.vpc_id
  igw_id = module.vpc.igw_id

  availability_zone  = var.availability_zones[2].availability_zone_name
  public_cidr_block  = var.availability_zones[2].public_cidr_block
  private_cidr_block = var.availability_zones[2].private_cidr_block

  tags = merge(var.tags, var.availability_zones[2].tags)

  public_network_tags      = merge(var.tags, var.availability_zones[2].public_network_tags)
  public_route_table_tags  = merge(var.tags, var.availability_zones[2].public_route_table_tags)
  public_subnet_tags       = merge(var.tags, var.availability_zones[2].public_subnet_tags)
  nat_gateway_tags         = merge(var.tags, var.availability_zones[2].nat_gateway_tags)
  nat_eip_tags             = merge(var.tags, var.availability_zones[2].nat_eip_tags)
  private_network_tags     = merge(var.tags, var.availability_zones[2].private_network_tags)
  private_route_table_tags = merge(var.tags, var.availability_zones[2].private_route_table_tags)
  private_subnet_tags      = merge(var.tags, var.availability_zones[2].private_subnet_tags)
}


module "vpc" {
  source    = "../vpc"
  providers = { aws = aws }

  name = var.name
  cidr = var.vpc_cidr

  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_flow_log      = var.enable_flow_log

  tags     = var.tags
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags
}
