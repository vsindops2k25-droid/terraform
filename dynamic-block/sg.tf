# resource block to create security group
resource "aws_security_group" "roboshop_instance" {
  name   = "roboshop_strict_sg"
 
  
 egress {
    from_port       = 0  
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # block for ingress rules
 dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

#  ingress {
#     from_port       = 3306  
#     to_port         = 3306
#     protocol        = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#  ingress {
#     from_port       = 8080
#     to_port         = 8080
#     protocol        = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# key value pair for tags
tags= {
    Name = "roboshop_strict_sg"
}


}
