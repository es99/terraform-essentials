data "aws_ami" "ubuntu-ohio" {
  provider    = aws.Ohio
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
  provider    = aws.SP
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
  provider      = aws.Ohio
  ami           = data.aws_ami.ubuntu-ohio.id
  instance_type = var.instance_type

  tags = {
    Name = "blogserver01-ohio"
  }
}

resource "aws_instance" "ec2_sp" {
  provider      = aws.SP
  ami           = data.aws_ami.ubuntu-SP.id
  instance_type = var.instance_type

  tags = {
    Name = "blogserver02-SP"
  }
}