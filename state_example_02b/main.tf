
provider "aws" {
  region  = "eu-west-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "vpc"
  }
}
 
# To import resource from real world to terraform 
#  terraform init
#                   <resourcename>.<resource identifier>  <vpc id of the resource we want to import>
#  terraform import aws_vpc.main vpc-0dbdbad460c9562d7 
#  terraform apply

# 2nd method of moving resource form 1 project to another
# terraform state mv -state-out=../state_example_02a/terraform.tfstate aws_vpc.main aws_vpc.my_vpc



