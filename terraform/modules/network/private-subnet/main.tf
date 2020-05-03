resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  tags = merge(var.tags, var.route_table_tags, { Name = "${var.name} : ${var.availability_zone} : private" })
}

resource "aws_route" "this" {
  route_table_id         = aws_route_table.this.id
  nat_gateway_id         = var.natgw_id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "this" {
  route_table_id = aws_route_table.this.id
  subnet_id      = aws_subnet.this.id
}

resource "aws_subnet" "this" {
  vpc_id                  = var.vpc_id
  availability_zone       = var.availability_zone
  cidr_block              = var.cidr_block
  map_public_ip_on_launch = false

  tags = merge(var.tags, var.subnet_tags, { Name = "${var.name} : ${var.availability_zone} : private" })
}
