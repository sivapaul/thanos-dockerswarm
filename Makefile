#!/bin/sh

#####################################
##Author : Siva Paulraj            ##
#####################################


## Terraform scripts
tf-init:
	terraform init terraform
tf-plan:
	terraform  plan -var-file="./terraform/terraform.tfvars" terraform

tf-apply:
	terraform apply -var-file="./terraform/terraform.tfvars" terraform

tf-apply-ap:
	terraform  apply -var-file="./terraform/terraform.tfvars" -auto-approve terraform

tf-destroy:
	terraform  destroy -var-file="./terraform/terraform.tfvars"  terraform

tf-destroy-ap:
	terraform  destroy -var-file="./terraform/terraform.tfvars" -auto-approve terraform

## Ansible
an-dc-install:
	cd ansible; ansible-playbook -i hosts docker.yml
an-dc-up:
	cd ansible; ansible-playbook -i hosts docker-up.yml