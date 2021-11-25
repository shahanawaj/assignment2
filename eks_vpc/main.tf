module "vpc" {
  source  = "app.terraform.io/shah-demo/general/aws//modules/eks-vpc"
  version = "1.0.0"
  cluster_name            = var.cluster_name
  eks_vpc_cidr_block      = var.vpc_cidr_block
  eks_public_subnets      = var.public_subnets
  eks_private_subnets     = var.private_subnets
}
