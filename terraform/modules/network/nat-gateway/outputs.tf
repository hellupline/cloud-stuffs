output "public_ip" {
  description = "Elastic IP created for AWS NAT Gateway"
  value       = aws_eip.this.public_ip
}

output "eip_id" {
  description = "Allocation ID of Elastic IP created for AWS NAT Gateway"
  value       = aws_eip.this.id
}

output "natgw_id" {
  description = "NAT Gateway IDs"
  value       = aws_nat_gateway.this.id
}
