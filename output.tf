output "public_dns_instance-ohio" {
  value = aws_instance.ec2_ohio.public_dns
}

output "public_ip_address_instance-ohio" {
  value = aws_instance.ec2_ohio.public_ip
}

output "public_dns_instance-SP" {
  value = aws_instance.ec2_sp.public_dns
}

output "public_ip_address_instance-SP" {
  value = aws_instance.ec2_sp.public_ip
}