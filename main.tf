# Configure a remote state
terraform {
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  alias  = "Ohio"
  region = "us-east-2"
}

provider "aws" {
  alias  = "SP"
  region = "sa-east-1"
}