module "eks_cluster" {
  source                = "../modules/cluster"
  vpc_id                = var.vpc_id
  public_subnets        = var.public_subnet_ids
  private_subnets       = var.private_subnet_ids
  cluster_full_name     = "${var.cluster_name}"
  cluster_version       = var.cluster_version
  workers_instance_type = var.workers_instance_type
  workers_ami_id        = "ami-0a99721a12001ebd4"
  workers_number_min    = var.workers_number_min
  workers_number_max    = var.workers_number_max
  workers_storage_size  = var.workers_storage_size
  aws_region            = var.aws_region
}




