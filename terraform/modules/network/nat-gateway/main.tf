resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.this.id

  tags = merge(var.tags, var.nat_gateway_tags, { Name = "${var.name} : (${var.availability_zone}) :  public" })
}


resource "aws_eip" "this" {
  tags = merge(var.tags, var.nat_eip_tags, { Name = "${var.name} : (${var.availability_zone}) :  public" })
}
