##############################################
## Network Single AZ Public Only - Variables #
##############################################

variable "environment" {
  type        = string
  description = "environment ?"
}

variable "AWS_REGION" {
  type        = string
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

# AWS AZ
variable "availability_zones" {
  type        = string
  description = "AWS AZ a ?"
  default     = "ap-south-1a"
}

#variable "aws_az_2" {
#  type        = string
#  description = "AWS AZ 2"
#  default     = "ap-south-1b"
#}

#variable "vpc_azs" {
#  description = "Availability zones for VPC"
#  type        = list(string)
#  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
#}

# VPC Variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

# Subnet Variables
variable "public_subnets_cidr" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "10.0.2.0/24"
}

# Subnet Variables
variable "private_subnets_cidr" {
  type        = string
  description = "CIDR for the private subnet"
  default     = "10.0.3.0/24"
}

# Subnet Variables
#variable "public_subnet_cidr_2" {
#  type        = string
#  description = "CIDR for the public subnet"
#  default     = "10.0.3.0/16"
#}

# Subnet Variables
#variable "private_subnet_cidr_2" {
#  type        = string
#  description = "CIDR for the private subnet"
#  default     = "10.0.4.0/16"
#}

#variable "vpc_private_subnets" {
#  description = "Private subnets for VPC"
#  type        = list(string)
#  default     = ["10.0.1.0/24", "10.0.2.0/24"]
#}

#variable "vpc_public_subnets" {
#  description = "Public subnets for VPC"
#  type        = list(string)
#  default     = ["10.0.101.0/24", "10.0.102.0/24"]
#}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}