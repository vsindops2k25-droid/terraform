resource "aws_instance" "terraform" {
  ami           = var.aws_id
  instance_type = var.instnace_type
  vpc_security_group_ids = [aws_security_group.allow_all1.id]

  tags = {
    Name = "Terraform"
    Terraform = "true"
  }
}

resource "aws_security_group" "allow_all1" {
  name   = "allow_all1"
 
  
 egress {
    from_port       = 0  
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port       = 0  
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

tags= {
    Name = "allow-all"
}


}
