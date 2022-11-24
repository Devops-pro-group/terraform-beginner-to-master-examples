
terraform {
  backend "s3" {
    bucket = "lab-brice-bucket"
    key    = "myproject.state"
    region = "us-east-1"
  }
}

/* Error: Backend configuration changed
│ 
│ A change in the backend configuration has been detected, which may require migrating existing state.
│ 
│ If you wish to attempt automatic migration of the state, use "terraform init -migrate-state".
│ If you wish to store the current configuration with no changes to the state, use "terraform init -reconfigure".
╵ */