resource "aws_iam_role" "this" {

  name = var.role_name

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {

          Service = "ec2.amazonaws.com"

        }

        Action = "sts:AssumeRole"

      }

    ]

  })

  tags = {

    ManagedBy = "Terraform"

    Project = "Enterprise-DevOps-Platform"

  }

}

resource "aws_iam_instance_profile" "this" {

  name = "${var.role_name}-profile"

  role = aws_iam_role.this.name

}
