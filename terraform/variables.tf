variable "project_path" {
  description = "Automatically generated variable which describes the location of this project in GitLab (value is assigned in gitlab-ci.yml)"
  default     = ""
}
variable "ami" {
  description=""
}

variable "account" {
  description = "The 3 letter code for the AWS account"
}

variable "account_id" {
  description = "AWS Account Id"
}


variable "app_server_type" {
  description = "The instance type to use for all app server in this environment"
  default     = "r5.large"
}

variable "keypair_name" {
  description = ""
}

## Subnets Start
variable "public_subnet_a" {
  description = "Public sbnet A"
}


variable "public_subnet_b" {
  description = "Public sbnet B"
}

variable "public_subnet_c" {
  description = "Public sbnet C"
}
## Subnets End

### Tags Start
variable "market" {
  description = ""
}

variable "product" {
  description = ""
}


variable "customer_id" {
  description = "The id of the internal team resposible for server"
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


## Network Ranges Start

variable "cidr_vpc" {
  description = "VPC cidr range"
}


variable "cidr_public_a" {
  description = "CIDR range of zone-a public subnet"
}


variable "cidr_public_b" {
  description = "CIDR range of zone-b public subnet"
}


variable "cidr_public_c" {
  description = "CIDR range of zone-c public subnet"
}

variable "vpc_id" {
  description = "VPC Id"
}
