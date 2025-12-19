provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source                = "./modules/vpc"
  vpc_cidr              = var.vpc_cidr
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
}



module "eks" {
  source        = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_ids   = module.vpc.subnet_ids
}
