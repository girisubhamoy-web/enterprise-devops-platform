variable "name" {

  description = "Auto Scaling Group name"

  type = string

}

variable "ami_id" {

  description = "AMI ID"

  type = string

}

variable "instance_type" {

  description = "EC2 Instance Type"

  type = string

}

variable "security_group_ids" {

  description = "Security Group IDs"

  type = list(string)

}

variable "iam_instance_profile" {

  description = "IAM Instance Profile"

  type = string

}

variable "subnet_ids" {

  description = "Subnet IDs"

  type = list(string)

}

variable "target_group_arns" {

  description = "ALB Target Group ARNs"

  type = list(string)

}
