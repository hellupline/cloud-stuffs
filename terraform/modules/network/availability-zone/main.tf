module "public_subnet" {
  source = "../public-subnet"

  name = var.name
  vpc_id = var.vpc_id
  igw_id = var.igw_id
  availability_zone = var.availability_zone
  cidr_block = var.public_cidr_block

  tags = merge(var.tags, var.public_network_tags)
  route_table_tags = var.public_route_table_tags
  subnet_tags = var.public_subnet_tags
}


module "nat_gateway" {
  source = "../nat-gateway"

  name = var.name
  subnet_id = module.public_subnet.subnet_id
  availability_zone = var.availability_zone

  tags = var.tags
  nat_gateway_tags = var.nat_gateway_tags
  nat_eip_tags = var.nat_eip_tags
}


module "private_subnet" {
  source = "../private-subnet"

  name = var.name
  vpc_id = var.vpc_id
  natgw = module.nat_gateway.natgw_id
  availability_zone = var.availability_zone
  cidr_block = var.private_cidr_block

  tags = merge(var.tags, var.private_network_tags)
  route_table_tags = var.private_route_table_tags
  subnet_tags = var.private_subnet_tags
}
