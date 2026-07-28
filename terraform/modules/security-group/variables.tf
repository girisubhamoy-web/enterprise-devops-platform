variable "name" {

  description = "Security Group Name"

  type = string

}

variable "vpc_id" {

  description = "VPC ID"

  type = string

}
variable "ingress_rules" {

  description = "List of ingress rules"

  type = list(object({

    port = number

    description = string

  }))

}
