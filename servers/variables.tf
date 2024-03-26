variable "instance_type" {
  type        = string
  description = "Type of the ec2 instances"

  validation {
    condition     = length(var.instance_type) > 3 && substr(var.instance_type, 0, 3) == "t2."
    error_message = "o tipo de instância não é válido, por favor só utilize instancias t2"
  }
}

variable "servers" {
  type = number
  description = "Number of servers"
}