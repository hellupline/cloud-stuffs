variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "subnet_id" {
  description = "ID of Subnet to attach resources"
  tpe         = string
}

variable "availability_zone" {
  description = "A availability zone name or id in the region"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

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
