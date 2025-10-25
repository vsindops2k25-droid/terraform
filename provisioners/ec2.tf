resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all1.id]

  tags = {
    Name = "Terraform-1"
    Terraform = "true"
  }

#   provisioner "local-exec" {
#     command = "echo $(self)"
    
#   }


 provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
    on_failure = continue
    
  }

  #  provisioner "local-exec" {
  #   command = "echo instance is destroyed"
  #   when    = destroy
    
  # }

  # connection block for remote-exec provisioner

connection {
  type = "ssh"
  user = "ec2-user"
  password = "DevOps321"
  host = self.public_ip
}
# remote-exec provisioner to install nginx

# provisioner "remote-exec" {
#   inline = [
#     "sudo dnf install nginx -y",
#     "sudo systemctl start nginx",
   
#   ]
# }

# remote-exec provisioner to stop nginx during destroy
provisioner "remote-exec" {
  inline = [
    
    "sudo systemctl stop nginx",
    "echo 'successfully stopped nginx server'"   
  ]
  when = destroy
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
