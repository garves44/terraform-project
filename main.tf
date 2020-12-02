terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  //set region depending on region in AWS
  region = "us-east-1"
  access_key = "${myAccessKey}"
  secret_key = "${mySecretKey}"
}

resource "aws_instance" "web" {
  ami = "${amiTag}"
  instance_type = "t2.micro"
  
}

# resource "<provider>_<resource_type>" "name" {
#   config options....
#   key = "value"
#   key2 = "another value"
# }


