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
  profile = "default"
  region  = "us-east-2"
  access_key = "AKIA5HJZIVL47SSGZKES"
  secret_key = "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"
}

# resource "aws-instance" "tf-ec2" {
#   ami = "ami-077e31c4939f6a2f3"
#   instance_type = "t2.micro"
# }
