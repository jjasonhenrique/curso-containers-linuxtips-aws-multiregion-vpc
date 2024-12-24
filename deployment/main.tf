module "vpc" {
  #source = "/home/jason/Utils/Github/curso-containers-linuxtips-aws-modules/vpc"
  source = "github.com/jjasonhenrique/curso-containers-linuxtips-aws-modules.git//vpc?ref=v1.1.0"

  project_name = var.project_name

  region = var.region

  cidr = var.cidr

  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets

}