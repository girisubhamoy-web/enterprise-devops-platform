module "vpc" {
  source = "../../modules/vpc"

  name     = "enterprise-devops-dev-vpc"
  vpc_cidr = "10.0.0.0/16"

  public_subnet_1_cidr = "10.0.1.0/24"
  public_subnet_2_cidr = "10.0.2.0/24"

  private_subnet_1_cidr = "10.0.11.0/24"
  private_subnet_2_cidr = "10.0.12.0/24"
}
module "security_group" {

  source = "../../modules/security-group"

  name = "enterprise-devops-sg"

  vpc_id = module.vpc.vpc_id

  ingress_rules = [
    {
      port        = 22
      description = "SSH"
    },
    {
      port        = 80
      description = "HTTP"
    },
    {
      port        = 443
      description = "HTTPS"
    }
  ]

}
