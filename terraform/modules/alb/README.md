# ALB Module

This module provisions:

- Application Load Balancer
- Target Group
- HTTP Listener

## Inputs

- name
- vpc_id
- public_subnet_ids
- security_group_ids

## Outputs

- alb_arn
- alb_dns_name
- target_group_arn
