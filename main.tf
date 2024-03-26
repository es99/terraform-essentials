# Configure a remote state
terraform {
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}