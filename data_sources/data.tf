# datasource for AWS EC2 instance t3.small

# fetching details of an existing t3.small instance using its instance ID 

data "aws_ami" "joindevops" {
    most_recent = true
    owners      = ["713881809173"] # Amazon

    filter {
      name   = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }
}

data "aws_instance" "t3_small"{
    instance_id = "i-09299a55e08a6ad89"
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
