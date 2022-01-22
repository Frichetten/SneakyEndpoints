/* These VPC Endpoints are required to interact with the host */

resource "aws_vpc_endpoint" "ec2messages_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ec2messages"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ec2messages_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ec2messages_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ssm_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ssm"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ssm_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ssm_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ssmmessages_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ssmmessages"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ssmmessages_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ssmmessages_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "s3_vpce" {
  vpc_id          = aws_vpc.sneakyendpoints_vpc.id
  service_name    = "com.amazonaws.us-east-1.s3"
  #route_table_ids = [aws_route_table.sneakyendpoints_route_table.id]
}

resource "aws_vpc_endpoint_route_table_association" "s3_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.s3_vpce.id
  route_table_id = aws_route_table.sneakyendpoints_route_table.id
}
