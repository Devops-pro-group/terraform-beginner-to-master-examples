
provider "aws" {
  region = "eu-west-1"
}

resource "aws_sqs_queue" "test_queue" {
  name = "test_queue"
}

// $ terraform plan -out myplan
// terraform apply myplan