aws_region = "us-east-1"
cluster_name  = "MyKubernetesCluster"
cluster_version       = "1.18"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
private_subnet_ids = [
  "subnet-0d5e5a19328512302",
  "subnet-01c12169fb9302c11",
]
public_subnet_ids = [
  "subnet-06e5b97e27dda78de",
  "subnet-07f728578e2d6a7f2",
]
vpc_id = "vpc-009e3d60e7941a313"

