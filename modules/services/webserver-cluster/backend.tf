terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-70k"
    key    = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
} 