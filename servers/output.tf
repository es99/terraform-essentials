output "public_dns_instance-ohio-0" {
  value = aws_instance.ec2_ohio[0].public_dns
}

output "public_dns_instance-ohio-1" {
  value = aws_instance.ec2_ohio[1].public_dns
}

output "public_dns_instance-ohio-2" {
  value = aws_instance.ec2_ohio[2].public_dns
}

output "public_dns_instance-ohio-3" {
  value = aws_instance.ec2_ohio[3].public_dns
}

output "public_ip_address_instance-ohio-0" {
  value = aws_instance.ec2_ohio[0].public_ip
}

output "public_ip_address_instance-ohio-1" {
  value = aws_instance.ec2_ohio[1].public_ip
}

output "public_ip_address_instance-ohio-2" {
  value = aws_instance.ec2_ohio[2].public_ip
}

output "public_ip_address_instance-ohio-3" {
  value = aws_instance.ec2_ohio[3].public_ip
}



output "public_dns_instance-SP" {
  value = aws_instance.ec2_sp.public_dns
}

output "public_ip_address_instance-SP" {
  value = aws_instance.ec2_sp.public_ip
}