# Define AWS instances for the master nodes

resource "aws_instance" "k8s_master" {
  count         = 1
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI
  instance_type = "t2.micro"  # Replace with your desired instance type
  key_name      = var.key_name.tnr-k8s-key  # Add your key name variable or replace it with your key name directly

  tags = {
    Name = "k8s-master-${count.index + 1}"
  }

  # Add other configuration for master nodes if needed
}

resource "aws_security_group" "k8s_master_sg" {
  # Define security group rules for master nodes
  # For example, allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Add other security group rules if needed
}

# Add other resources for master nodes (e.g., elastic IP, etc.)
