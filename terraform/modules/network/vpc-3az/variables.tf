variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_flow_log" {
  description = "Whether or not to enable VPC Flow Logs"
  type        = bool
  default     = false
}

variable "availability_zones" {
  description = "A List of 3 availability zone module configurations"
  type = list(object({
    availability_zone_name   = string
    public_cidr_block        = string
    private_cidr_block       = string
    tags                     = map(string)
    public_network_tags      = map(string)
    public_route_table_tags  = map(string)
    public_subnet_tags       = map(string)
    nat_gateway_tags         = map(string)
    nat_eip_tags             = map(string)
    private_network_tags     = map(string)
    private_route_table_tags = map(string)
    private_subnet_tags      = map(string)
  }))
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "igw_tags" {
  description = "Additional tags for the internet gateway"
  type        = map(string)
  default     = {}
}
