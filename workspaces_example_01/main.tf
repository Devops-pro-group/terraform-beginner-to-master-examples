

provider "aws" {
  region  = "us-east-1"
}

resource "aws_sqs_queue" "queue" {
  name = "${terraform.workspace}-queue"
}


  /* terraform workspace list
  509  terraform workspace new dev          # To create a new workspace
  510  terraform workspace list
  511  terraform apply -auto-approve
  512  terraform workspace new stage
  513  terraform apply -auto-approve
  520  terraform workspace select default    # to switch from one workspace to another
  521  terraform destroy -auto-approve */