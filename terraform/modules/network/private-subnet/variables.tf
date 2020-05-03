variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "vpc_id" {
  description = "ID of VPC to attach resources"
  type        = string
}

variable "natgw_id" {
  description = "ID of nat gateway to attach route"
  type        = string
}

variable "availability_zone" {
  description = "A availability zone name or id in the region"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "route_table_tags" {
  description = "Additional tags for the route tables"
  type        = map(string)
  default     = {}
}

variable "subnet_tags" {
  description = "Additional tags for the subnet"
  type        = map(string)
  default     = {}
}
