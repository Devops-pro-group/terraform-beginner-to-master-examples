
provider "aws" {
  region  = "eu-west-1"
}

 resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example"
  } 

} 

# vpc-03d245421bb2f8be6
