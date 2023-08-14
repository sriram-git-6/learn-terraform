data "aws_ami_ids" "ami"{
  name_regex = "Centos.*"
  owners = ["777414146682"]
    }
