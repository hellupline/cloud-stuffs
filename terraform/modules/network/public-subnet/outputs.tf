output "route_table_id" {
  description = "ID of route table"
  value       = aws_route_table.this.id
}

output "subnet_id" {
  description = "ID of subnet"
  value       = aws_subnet.this.id
}

output "subnet_arn" {
  description = "ARN of subnet"
  value       = aws_subnet.this.arn
}

output "subnet_cidr_block" {
  description = "cidr_blocks of subnet"
  value       = aws_subnet.this.cidr_block
}
