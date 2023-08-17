data "aws_ami_ids" "ami"{
  name_regex = "Centos.*"
  owners = ["777414146682"]
    }

output "ami"{
  value = data.aws_ami_ids.ami
}