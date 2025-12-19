variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}


variable "public_subnet_1_cidr" {
  default = "10.0.10.0/24"
}

variable "public_subnet_2_cidr" {
  default = "10.0.20.0/24"
}


variable "cluster_name" {
  description = "EKS cluster name"
  default     = "cep-eks-cluster-v2"
}

variable "node_instance_type" {
  description = "Worker node instance type"
  default     = "t3.medium"
}


