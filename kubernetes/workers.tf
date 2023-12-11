# Define AWS instances for the worker nodes

resource "aws_instance" "k8s_workers" {
  count         = 3
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = var.key_name.tnr-k8s-key

  tags = {
    Name = "k8s-worker-${count.index + 1}"
  }
}

resource "aws_security_group" "k8s_workers_sg" {
  # Define security group rules for worker nodes
  # For example, allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
