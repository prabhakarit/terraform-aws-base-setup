######## --- START --- need to be moved to  --- #######

# NAT
resource "aws_nat_gateway" "nat" {
  allocation_id = "${var.eip_id}"
  subnet_id     = "${var.public_subnet_id}"

  tags = {
    Name        = "nat"
    Environment = "${var.environment}"
  }
}

# Route for NAT
resource "aws_route" "private_nat_gateway" {
  route_table_id         = "${var.aws_private_routetable}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

######## --- END --- need to be moved to  --- #######