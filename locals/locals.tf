locals {
  instance_type = "t3.micro"
  common_name   = "${var.project}-${var.environment}"
  ami           = "data.aws_ami.joindevops.id"
  ec2_tags     = merge(
    var.common_tags,
    {
      Name = "${local.common_name}-locals-vsin1"
    }
  )
}