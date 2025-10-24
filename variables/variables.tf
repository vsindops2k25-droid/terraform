variable "aws_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
 }

variable "instnace_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "Terraform-demo"
        Terraform = "true"
        Project = "Roboshop"
        Environment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow_all1"
    description = Security group name for an EC2 instance"
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
    
}

variable "ingress_from_port" {
    type = number
    default = 0 
}

variable "ingress_to_port" {
    default = 0 
}

variable "egress_from_port" {
    default = 0 
}

variable "egress_to_port" {
    default = 0 
}

variable "protocol" {
    type = string
    default = "-1"
}