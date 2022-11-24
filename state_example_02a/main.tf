
provider "aws" {
  region  = "eu-west-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "vpc"
  }
}


# vpc-0dbdbad460c9562d7
# To remove resource from the statefile or under terraform management do :
# terraform state rm <resourcename.identifier>
# exple :--->    terraform state rm aws_vpc.my_vpc

# check the state 
# terraform state list 
# terraform state show <resource name>    # it will require to enter a resource name 
# terraform show                          # it will show everything

