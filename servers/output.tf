output "public_dns_instance-ohio" {
  value = aws_instance.ec2_ohio1[0].public_dns
}

output "public_ip_address_instance-ohio" {
  value = aws_instance.ec2_ohio1[0].public_ip
}