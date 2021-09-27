output "aws_region" {
  value = var.aws_region
}

output "cluster_full_name" {
  value = "${var.cluster_name}"
}

output "cluster_version" {
  value = var.cluster_version
}

output "authconfig" {
  value = module.eks_cluster.authconfig
}

output "cluster_api" {
  value = module.eks_cluster.cluster_api
}


