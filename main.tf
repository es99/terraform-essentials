# Configure a remote state
terraform {
  backend "s3" {
    bucket = "estudosterraform-engels"
    //dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}

provider "aws" {
  region = "${terraform.workspace == "production" ? "us-east-1" : "us-east-2"}"
}