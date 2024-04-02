module "servers" {
  source        = "./servers"
  instance_type = "t2.micro"
  servers       = 1

  providers = {
    aws.ohio = aws.Ohio
    aws.sp   = aws.SP
  }
}

/*
module "DynamoDB" {
  source = "./bds"
}
*/
output "public_dns-ohio" {
  value = module.servers.public_dns_instance-ohio
}

output "ip_address-ohio" {
  value = module.servers.public_ip_address_instance-ohio
}

output "public_dns-SP" {
  value = module.servers.public_dns_instance-SP
}

output "public_ip-SP" {
  value = module.servers.public_ip_address_instance-SP
}