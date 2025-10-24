variable "aws_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
 }

variable "instnace_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags"{
    type = map
    default = {
        Name = "Terraform-demo"
        Terraform = "true"
        Project = "Roboshop"
        Environment = "dev"

    }

}