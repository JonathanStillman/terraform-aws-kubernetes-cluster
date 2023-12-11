# Define variables for the Terraform configuration

variable "region" {
  description = "AWS region for the Kubernetes cluster"
  default     = "us-east-1"  # Change this to your desired region
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default     = "tnr-cluster"  # Change this to your desired cluster name
}

variable "key_name" {
    description = "Keyname for Kubernetes cluset"
    default = "tnr-k8s-key"
}
