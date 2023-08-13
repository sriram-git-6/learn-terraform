# Instance creating using loops ...
variable "components"{
  default = [ "frontend", "mongodb", "catalogue"]
}
resource "aws_instance" "instance" {
  count = length(var.components)

  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = element(var.components, count.index )
# for the first instance (when count.index is 0), "Name" = element(var.components, 0) would mean "Name" = "frontend"
  }
}
