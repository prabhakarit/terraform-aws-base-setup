# terraform-aws-base-setup
Helps setup basic setup for AWS. VPC, subnets, Internet Gateway, routetables, NAT gateway

PRE_REQUISITE = 
1) INSTALL TERRAFORM locally. 
2) Have account access key and id created from AWS IAM console.

=================================

Terraform standard commands >>>

Terraform init
Terraform plan
Terraform apply
Terraform destroy

==================================
PRE_REQUISITE = 
1) Please keep following inputs handy - will be required as input for NAT creation.

FOR CREATING VPC, SUBNETS, ROUTETABLES, INTERNET GATEWAY, ELASTIC-IP
cd vpc-subnets
terraform init
terraform plan --out vpc-subnets
terraform apply "vpc-subnets"

==================================
PRE_REQUISITE = 
1) Can only be used once vpc-subnets is successfully created.
2) Please keep following inputs handy >> account access key and secret, subnet, vpc, internet gateway, routetable ids - will be required as input for NAT creation.
FOR CREATING NAT GATEWAY

cd nats
terraform init
terraform plan --out nats
terraform apply nats

TO DESTROY (DELETE) NAT GATEWAY (created earlier)

cd nats
terraform destroy

==================================
