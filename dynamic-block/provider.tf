terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }


backend "s3" {
  bucket         =  "vsindops-remote-state"      # "my-terraform-remote-state-bucket"
  key            =   "dynamic-vsin1"         #"path/to/my/terraform.tfstate. use a diff key for locals"
  region         = "us-east-1"
  use_lockfile   = true
  encrypt        = true

}
}

provider "aws" {
  region = "us-east-1"
}