variable "name" {

  description = "Application Load Balancer name"

  type = string

}

variable "vpc_id" {

  description = "VPC ID"

  type = string

}

variable "public_subnet_ids" {

  description = "Public subnet IDs"

  type = list(string)

}

variable "security_group_ids" {

  description = "Security Group IDs"

  type = list(string)

}
