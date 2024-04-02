data "aws_ami" "ubuntu-ohio" {
  provider = aws
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

resource "aws_instance" "ec2_ohio1" {
  count = var.servers
  provider      = aws
  ami           = data.aws_ami.ubuntu-ohio.id
  instance_type = var.instance_type

  tags = {
    Name = "blogserver01-ohio"
  }
}