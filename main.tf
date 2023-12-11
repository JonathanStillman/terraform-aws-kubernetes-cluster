# Validate required variables
locals {
  required_variables = ["region", "cluster_name"]
}

# Initialize the AWS provider with your AWS credentials and desired region
provider "aws" {
  region = var.region
}

# Define the input variables for the Terraform configuration
variable "region" {
  description = "AWS region for the Kubernetes cluster"
  default     = "us-east-1"  # Change this to your desired region
}

variable "cluster_name" {
  description = "This will be the Tennessee Realtors Cluster"
  default     = "tnr-cluster"  # Change this to your desired cluster name
}

# Use the official kops Terraform module to deploy a Kubernetes cluster
module "kops" {
  source        = "github.com/kubernetes/kops/tf_module"
  cluster_name  = var.cluster_name
  topology      = "private"
  dns_zone      = var.cluster_name
  master_zones  = ["us-east-1a", "us-east-1b", "us-east-1c"]  # Change these to your desired availability zones
}

# Output the important information about the created Kubernetes cluster
output "k8s_cluster_name" {
  value = module.kops.cluster_name
}

output "k8s_cluster_state_store" {
  value = module.kops.kops_state_store
}

output "k8s_cluster_ssh_key" {
  value = module.kops.cluster_ssh_key
}

output "k8s_cluster_kubeconfig" {
  value = module.kops.cluster_kubeconfig
}
