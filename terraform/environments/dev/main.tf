module "vpc" {
  source = "../../modules/vpc"

  name     = "enterprise-devops-dev-vpc"
  vpc_cidr = "10.0.0.0/16"
}