resource "aws_launch_template" "this" {

  name_prefix = "${var.name}-"

  image_id = var.ami_id

  instance_type = var.instance_type

  vpc_security_group_ids = var.security_group_ids

  iam_instance_profile {

    name = var.iam_instance_profile

  }

  tag_specifications {

    resource_type = "instance"

    tags = {

      Name = var.name

      ManagedBy = "Terraform"

      Project = "Enterprise-DevOps-Platform"

    }

  }

}
resource "aws_autoscaling_group" "this" {

  name = var.name

  desired_capacity = 2

  min_size = 2

  max_size = 4

  vpc_zone_identifier = var.subnet_ids

  target_group_arns = var.target_group_arns

  health_check_type = "ELB"

  launch_template {

    id = aws_launch_template.this.id

    version = "$Latest"

  }

  tag {

    key = "Name"

    value = var.name

    propagate_at_launch = true

  }

}
