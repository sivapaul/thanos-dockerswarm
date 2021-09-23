variable "subnet_id" {
  description = "Subnet id for the resource"
}

variable "instance_type" {
  description = "Resource type"
}

variable "security_group_ids" {
  type = list
}

variable "ami" {
  description = "AMI detail"
}

variable "keypair_name" {
  description = "Key Pair name"
}

variable "name" {
  description = "EC2 name"
}

variable "iam_instance_profile" {
  description = "Instance IAM profile"
}

variable "awsec2_key_arn" {
  description = "KMS key for EBS root encryption"
}

### Tags Start
variable "market" {
  description = ""
}
variable "product" {
  description = ""
  default     = "Open"
}

variable "environment" {
  description = "The name of the environment PROD,OAT,QA,UAT"
}

variable "service" {
  description = "Service Name"
}

variable "owner" {
  description = "Owner of the environment"
}

variable "os" {
  description = "OS"
}
### Tags End
