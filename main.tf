variable "region" {
  default = "us-east-2"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }

}

}

# Configure the AWS Provider
provider "aws" {
  alias  = "east"
  profile = "local-dev"
  region  = "${region}"
  shared_credentials_file = "/Users/satee/.aws/new_user_credentials"
}

# resource "aws-instance" "tf-ec2" {
#   ami = "ami-077e31c4939f6a2f3"
#   instance_type = "t2.micro"
# }
