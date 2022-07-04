##############################################
## Network Single AZ Public Only - Variables #
##############################################

variable "environment" {
  type        = string
  description = "environment ?"
}

variable "AWS_REGION" {
  type = string
  default = "ap-south-1"
}

variable "AWS_ACCESS_KEY" {
# can be provided on request
description = "Your account user access key ?"
}
variable "AWS_SECRET_KEY" {
# can be provided on request
description = "Your account user secret key ?"
}

variable "vpc_id" {
  type        = string
  description = "VPC Id created for ?"
}

# Subnet Variables
variable "public_subnet_id" {
  type        = string
  description = "public subnet Id created for ?"
}

#Internet Gateway to use
#variable "aws_internet_gateway" {
#  type        = string
#  description = "please provide aws_internet_gateway Id ?"
#}

#private route-table
variable "aws_private_routetable" {
  type        = string
  description = "please provide private route table Id ?"
}

#EIP id
variable "eip_id" {
  type        = string
  description = "please EIP Id ?"
}