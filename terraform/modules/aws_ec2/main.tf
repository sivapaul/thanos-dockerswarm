resource "aws_instance" "ec2-centos" {
  ami                     = var.ami
  instance_type           = var.instance_type
  key_name                = var.keypair_name
  subnet_id               = var.subnet_id
  vpc_security_group_ids  = var.security_group_ids
  ebs_optimized           = false
  monitoring              = true
  disable_api_termination = false 
  iam_instance_profile    = var.iam_instance_profile
  user_data               = data.template_file.centos_linux_userdata.rendered

  lifecycle {
    prevent_destroy = false
    ignore_changes  = [user_data, root_block_device, ami]
  }

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 100
    delete_on_termination = false
    encrypted             = "true"
    kms_key_id            = var.awsec2_key_arn
  }

  volume_tags = {
    Name        = "${var.name}-root"
    Market      = "${var.market}"
    Environment = "${var.environment}"
    Product     = "${var.product}"
    Owner       = "${var.owner}"
    Service     = "${var.service}"
    Terraform   = "true"
  }

  tags = {
    Name        = "${var.name}"
    Market      = "${var.market}"
    Environment = "${var.environment}"
    Owner       = "${var.owner}"
    Service     = "${var.service}"
    Product     = "${var.product}"
    OS          = "${var.os}"
    Terraform   = "true"
    Schedule    = "running"
  }
}
