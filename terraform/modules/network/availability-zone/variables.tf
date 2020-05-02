variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "vpc_id" {
  description = "ID of VPC to attach resources"
  tpe         = string
}

variable "availability_zone" {
  description = "A availability zone name or id in the region"
  type        = string
}

variable "public_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

# public module tags
variable "public_network_tags" {
  description = "A map of tags to add to all public resources"
  type        = map(string)
  default     = {}
}

variable "public route_table_tags" {
  description = "Additional tags for the public route tables"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnet"
  type        = map(string)
  default     = {}
}

# nat module tags
variable "nat_gateway_tags" {
  description = "Additional tags for the NAT gateways"
  type        = map(string)
  default     = {}
}

variable "nat_eip_tags" {
  description = "Additional tags for the NAT EIP"
  type        = map(string)
  default     = {}
}

# private module tags
variable "private_network_tags" {
  description = "A map of tags to add to all private resources"
  type        = map(string)
  default     = {}
}

variable "private route_table_tags" {
  description = "Additional tags for the private route tables"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnet"
  type        = map(string)
  default     = {}
}
