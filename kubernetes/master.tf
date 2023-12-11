# Define AWS instances for the master nodes

resource "aws_instance" "k8s_master" {
  count         = 1
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = var.key_name.tnr-k8s-key

  tags = {
    Name = "k8s-master-${count.index + 1}"
  }
}

resource "aws_security_group" "k8s_master_sg" {
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
