resource "aws_lb" "this" {

  name = var.name

  internal = false

  load_balancer_type = "application"

  security_groups = var.security_group_ids

  subnets = var.public_subnet_ids

  enable_deletion_protection = false

  tags = {

    Name = var.name

    ManagedBy = "Terraform"

    Project = "Enterprise-DevOps-Platform"

  }

}
resource "aws_lb_target_group" "this" {

  name = "${var.name}-tg"

  port = 80

  protocol = "HTTP"

  vpc_id = var.vpc_id

  target_type = "instance"

  health_check {

    enabled = true

    path = "/"

    protocol = "HTTP"

  }

  tags = {

    ManagedBy = "Terraform"

    Project = "Enterprise-DevOps-Platform"

  }

}
resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.this.arn

  port = 80

  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.this.arn

  }

}
