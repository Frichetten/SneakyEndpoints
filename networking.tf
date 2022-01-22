resource "aws_vpc" "sneakyendpoints_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "sneakyendpoints_vpc"
  }
}

resource "aws_subnet" "sneakyendpoints_private_subnet" {
  vpc_id                  = aws_vpc.sneakyendpoints_vpc.id
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "sneakyendpoints_subnet"
  }
}

resource "aws_route_table" "sneakyendpoints_route_table" {
  vpc_id = aws_vpc.sneakyendpoints_vpc.id

  tags = {
    Name = "sneakyendpoints_route_table"
  }
}

resource "aws_main_route_table_association" "sneakyendpoints_private_route_table_association" {
  vpc_id         = aws_vpc.sneakyendpoints_vpc.id
  route_table_id = aws_route_table.sneakyendpoints_route_table.id
}

# Requires https - https://aws.amazon.com/premiumsupport/knowledge-center/ec2-systems-manager-vpc-endpoints/
resource "aws_security_group" "allow_https" {
  name        = "allow_https"
  description = "Allow 443/tcp inbound"
  vpc_id      = aws_vpc.sneakyendpoints_vpc.id

  ingress {
    description = "Allow https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

  tags = {
    Name = "allow_https"
  }
}
