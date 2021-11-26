aws_region           = "us-east-1"
cluster_name         = "MyKubernetesCluster"
vpc_cidr_block       = "10.40.0.0/17"
public_subnets       = [
  "10.40.0.0/20",
  "10.40.16.0/20"
]
private_subnets      = [
  "10.40.32.0/20",
  "10.40.64.0/20"
]
