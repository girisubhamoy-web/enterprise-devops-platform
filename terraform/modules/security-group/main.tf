resource "aws_security_group" "this" {

  name = var.name

  description = "Enterprise Security Group"

  vpc_id = var.vpc_id
  dynamic "ingress" {

    for_each = var.ingress_rules

    content {

      description = ingress.value.description

      from_port = ingress.value.port

      to_port = ingress.value.port

      protocol = "tcp"

      cidr_blocks = ["0.0.0.0/0"]

    }

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = var.name

    ManagedBy = "Terraform"

    Project = "Enterprise-DevOps-Platform"

  }

}
