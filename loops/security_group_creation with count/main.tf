variable "components"{
  default = [ "frontend", "mongodb" ]
  # In the above list if u add any component like catalogue in the begining it will destroy and recreates the
  # security groups.
}

resource "aws_security_group" "allow_tls" {

  count = length(var.components)
  name  = element(var.components, count.index)
}