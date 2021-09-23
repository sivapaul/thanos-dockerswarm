module "monitor-01" {
  name                 = "monitor-01"
  source               = "./modules/aws_ec2"
  ami                  = "${var.ami}"
  subnet_id            = "${var.public_subnet_a}"
  instance_type        = "t2.small"
  security_group_ids   = ["${aws_security_group.sg_dft_mon.id}"]
  keypair_name         = "${var.keypair_name}"
  iam_instance_profile = "${aws_iam_instance_profile.app.name}"
  awsec2_key_arn       = "${aws_kms_key.awsec2.arn}"

  #Tag details
  market      = var.market
  owner       = var.owner
  environment = var.environment
  os          = var.os
  service     = "monitor"
}

