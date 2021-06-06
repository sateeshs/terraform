variable "region" {
  type = "string"
  default = "us-east-2"
  description = ""
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
}