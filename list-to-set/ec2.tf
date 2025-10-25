resource "aws_instance" "terraform" {
  
  for_each = toset(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type =  each.value 
  vpc_security_group_ids = [aws_security_group.allow_all1.id]

  tags = {
    Name = each.value
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
