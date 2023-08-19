data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["777414146682"]
}

output "ami" {
  value = data.aws_ami.ami
}

#resource "aws_instance" "instance" {
#  ami = data.aws_ami.ami.id
#  instance_type = "t3.small"
#  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]
#
#}