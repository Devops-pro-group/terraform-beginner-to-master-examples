

provider "aws" {
  region  = "us-east-1"
}

variable "bucket_name" {
  description = "the name of the bucket you wish to create"
}

variable "bucket_suffix" {
  default = "-abcd"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}${var.bucket_suffix}"
}


#### This is how we pass variable using Environmental var

/* Mac OS/Linux
 export TF_VAR_bucket_name=lab-s3
 export TF_VAR_bucket_suffix=-dev

Windows
1 set TF_VAR_bucket_name=lab-s3
2 set TF_VAR_bucket_suffix=-dev */
