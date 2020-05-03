locals {
  network_name = "general"
  cluster-name = "general"

  ops_tags = { owner = "ops", environment = "production" }

  # network config
  k8s_public_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster-name}" = "shared",
    "kubernetes.io/role/elb"                      = "1",
  }
  k8s_private_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster-name}" = "shared",
    "kubernetes.io/role/internal-elb"             = "1",
  }
  network_cidr = "10.1.0.0/16"
  network_cidr_blocks = [
    { public = "10.1.2.0/24", private = "10.1.42.0/24" },
    { public = "10.1.3.0/24", private = "10.1.43.0/24" },
    { public = "10.1.4.0/24", private = "10.1.44.0/24" },
  ]
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_availability_zones" "zones" {}


module "network" {
  source = "git@github.com:hellupline/cloud-stuffs.git//terraform/modules/network/_examples/vpc-3az"

  name                 = local.network_name
  vpc_cidr             = local.network_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  availability_zones = [
    for i in range(len(network_cidr_blocks)) :
    {
      availability_zone_name    = data.aws_availability_zones.zones.names[i]
      public_subnet_cidr_block  = local.network_cidr_blocks[i].public
      private_subnet_cidr_block = local.network_cidr_blocks[i].private

      public_network_tags       = {}
      public_route_table_tags   = {}
      public_subnet_tags        = local.k8s_public_subnet_tags

      nat_gateway_tags          = {}
      nat_eip_tags              = {}

      private_network_tags      = {}
      private_route_table_tags  = {}
      private_subnet_tags       = local.k8s_private_subnet_tags
    }
  ]

  tags     = merge(local.ops_tags, { stack = "network" })
  vpc_tags = {}
  igw_tags = {}
}
