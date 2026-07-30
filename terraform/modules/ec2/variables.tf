variable "instance_name" {

  description = "EC2 Instance Name"

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

variable "subnet_id" {

  description = "Subnet ID"

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
variable "user_data" {

  description = "User data script"

  type = string

  default = null

}
