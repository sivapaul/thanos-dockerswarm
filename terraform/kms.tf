resource "aws_kms_key" "awsec2" {
  description             = "KMS key for EC2 volumes"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = {

    Name        = "KMS"
    Environment = var.environment
    Owner       = var.owner
    Market      = var.market
    Product     = var.product
  }
}

