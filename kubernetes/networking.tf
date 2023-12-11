# This file creates an AWS VPC with the specified CIDR block and enables DNS support and hostnames. 
# It also creates a subnet within the VPC, associating it with the specified availability zone and allowing public IP assignment.
# Define networking components for the Kubernetes cluster

resource "aws_vpc" "k8s_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "k8s_subnet" {
  vpc_id                  = aws_vpc.k8s_vpc.id
  cidr_block             = "10.0.0.0/24"
  availability_zone       = "us-east-1a" 
  map_public_ip_on_launch = true

  # Add other subnet configurations if needed
}
