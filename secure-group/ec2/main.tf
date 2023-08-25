resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "test"
  }
}

data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

variable "sg_id" {}