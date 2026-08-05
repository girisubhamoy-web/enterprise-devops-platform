# Auto Scaling Module

This module provisions:

- Launch Template
- Auto Scaling Group

## Inputs

- name
- ami_id
- instance_type
- security_group_ids
- iam_instance_profile
- subnet_ids
- target_group_arns

## Outputs

- launch_template_id
- autoscaling_group_name
