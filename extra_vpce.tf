resource "aws_vpc_endpoint" "rds_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.rds"
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
  service_name        = "com.amazonaws.${var.region}.ebs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ebs_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ebs_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "redshift_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.redshift"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "redshift_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.redshift_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "sts_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.sts"
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
  service_name        = "com.amazonaws.${var.region}.codepipeline"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "codepipeline_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.codepipeline_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "sns_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.sns"
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
  service_name        = "com.amazonaws.${var.region}.sqs"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "sqs_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.sqs_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ecr-api_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.ecr.api"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ecr-api_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ecr-api_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "ecr-dkr_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.ecr.dkr"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "ecr-dkr_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.ecr-dkr_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "eks_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.eks"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "eks_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.eks_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "bedrock_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.bedrock"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "bedrock_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.bedrock_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}

resource "aws_vpc_endpoint" "bedrock-runtime_vpce" {
  vpc_id              = aws_vpc.sneakyendpoints_vpc.id
  service_name        = "com.amazonaws.${var.region}.bedrock-runtime"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [aws_security_group.allow_https.id]
  private_dns_enabled = true
}

resource "aws_vpc_endpoint_subnet_association" "bedrock-runtime_vpce_association" {
  vpc_endpoint_id = aws_vpc_endpoint.bedrock-runtime_vpce.id
  subnet_id       = aws_subnet.sneakyendpoints_private_subnet.id
}