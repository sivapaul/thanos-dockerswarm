##Mon server sg start
#############
resource "aws_security_group" "sg_dft_mon" {
  name        = "sg_dft_mon"
  description = "Linux SG to Jump Server"
  vpc_id      = var.vpc_id


  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "sg_dft_mon"
    Environment = var.environment
    Owner       = var.owner
    Market      = var.market
    Terraform   = "true"
    Role        = "Monitoring server"
  }
}
## Mon server sg end
