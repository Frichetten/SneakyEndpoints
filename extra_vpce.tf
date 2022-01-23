
resource "aws_vpc_endpoint" "ec2_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ec2"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ec2_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ec2_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "rds_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.rds"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "rds_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.rds_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ebs_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ebs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ebs_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ebs_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ecs_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.ecs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ecs_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ecs_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "redshift_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.redshift"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "redshift_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.redshift_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "cloudtrail_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.cloudtrail"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "cloudtrail_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.cloudtrail_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "sts_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.sts"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "sts_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.sts_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "codepipeline_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.codepipeline"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "codepipeline_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.codepipeline_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "kms_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.kms"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "kms_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.kms_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "lambda_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.lambda"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "lambda_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.lambda_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "sns_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.sns"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "sns_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.sns_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "sqs_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.us-east-1.sqs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "sqs_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.sqs_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

