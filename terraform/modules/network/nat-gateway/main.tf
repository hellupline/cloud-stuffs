resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = var.subnet_id

  tags = merge(var.tags, var.nat_gateway_tags, { Name = "${var.name} : ${var.availability_zone} : nat" })
}


resource "aws_eip" "this" {
  tags = merge(var.tags, var.nat_eip_tags, { Name = "${var.name} : ${var.availability_zone} : nat" })
}
