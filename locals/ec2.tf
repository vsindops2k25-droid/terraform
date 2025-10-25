resource "aws_instance" "terraform" {
  ami           = "data.aws_ami.joindevops.id"
  instance_type =  local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all1.id]
  #tags = var.ec2_tags
 
  } 


resource "aws_security_group" "allow_all1" {
  name   = "${local.common_name}-allow-all1"
 
  
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

tags = merge(
    var.common_tags,
    {
      Name = "${local.common_name}-locals-vsin1"
    }
  )

}
