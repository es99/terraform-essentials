terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [ aws.ohio, aws.sp ]
    }
  }
}

data "aws_ami" "ubuntu-ohio" {
  provider    = aws.ohio
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]

}

data "aws_ami" "ubuntu-SP" {
  provider    = aws.sp
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]

}

resource "aws_instance" "ec2_ohio" {
  count = var.servers
  provider      = aws.ohio
  ami           = data.aws_ami.ubuntu-ohio.id
  instance_type = var.instance_type

  tags = {
    Name = "blogserver01-ohio"
  }
}

resource "aws_instance" "ec2_sp" {
  provider      = aws.sp
  ami           = data.aws_ami.ubuntu-SP.id
  instance_type = var.instance_type

  tags = {
    Name = "blogserver02-SP"
  }
}

resource "aws_instance" "ec2_ohio_legado" {
  provider      = aws.ohio
  instance_type = "t2.micro"
  ami           = "ami-0b8b44ec9a8f90422"

  tags = {
    Name = "legado-server"
  }
}

resource "aws_security_group" "elb_sg" {
  provider = aws.ohio
  # (resource arguments)
}