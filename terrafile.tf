module "servers" {
  source        = "./servers"
  instance_type = "t2.micro"
  servers       = 4

  providers = {
    aws.ohio = aws.Ohio
    aws.sp   = aws.SP
  }
}

module "DynamoDB" {
  source = "./bds"
}

output "public_dns-ohio-0" {
  value = module.servers.public_dns_instance-ohio-0
}

output "public_dns-ohio-1" {
  value = module.servers.public_dns_instance-ohio-1
}

output "public_dns-ohio-2" {
  value = module.servers.public_dns_instance-ohio-2
}

output "public_dns-ohio-3" {
  value = module.servers.public_dns_instance-ohio-3
}

output "ip_address-ohio-0" {
  value = module.servers.public_ip_address_instance-ohio-0
}

output "ip_address-ohio-1" {
  value = module.servers.public_ip_address_instance-ohio-1
}

output "ip_address-ohio-2" {
  value = module.servers.public_ip_address_instance-ohio-2
}

output "ip_address-ohio-3" {
  value = module.servers.public_ip_address_instance-ohio-3
}

output "public_dns-SP" {
  value = module.servers.public_dns_instance-SP
}

output "public_ip-SP" {
  value = module.servers.public_ip_address_instance-SP
}