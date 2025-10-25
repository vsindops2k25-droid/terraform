# datasource for AWS EC2 instance t3.small

# fetching details of an existing t3.small instance using its instance ID 

data "aws_ami" "joindevops" {
    most_recent = true
    owners      = ["973714476881"] 

    # filter {
    #   name   = "name"
    #   values = ["RHEL-9-DevOps-Practice"]
    # }

     filter {
      name   = "root-device-type"
      values = ["ebs"]
    }
}

data "aws_instance" "t3_small"{
    instance_id = "i-095b696730c2c5a7b"
}

# output "t3_small_info" {
#   value = data.aws_instance.t3_small
# }


output "t3_small_info" {
  value = data.aws_instance.t3_small.public_ip
}

output "ami_id" {
  value = data.aws_ami.joindevops.id
}
