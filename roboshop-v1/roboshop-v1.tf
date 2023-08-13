variable "ami" {
  default = "ami-03265a0778a880afb"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "security_group" {
  default = [ "sg-01c1b8d157ecd6541" ]
}
variable "zone_id" {
  default = "Z0998112HZIX8T6VH3JX"
}
variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb = { name = "mongodb-dev" }
    redis = { name = "redis-dev" }
    user = { name = "user-dev" }
    cart = { name = "cart-dev" }
    mysql = { name = "mysql-dev" }
    shipping = { name = "shipping-dev" }
    rabbitmq = { name = "rabbitmq-dev" }
    payment = { name = "payment-dev" }
  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = lookup(each.value, "name", null )
  }
}

#output "instances" {
#  value = aws_instance.instance
#}

 resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.devops746.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}


# resource "aws_instance" "mongodb" {
# ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group

#  tags = {
#    Name = "Mongodb"
#  }
#}

#resource "aws_route53_record" "mongodb" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "mongodb-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.mongodb.private_ip]
#}

#resource "aws_instance" "catalogue" {
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group

#  tags = {
#    Name = "Catalogue"
#  }
#}

#resource "aws_route53_record" "catalogue" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "catalogue.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.catalogue.private_ip]
#}

#resource "aws_instance" "redis"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group

#  tags = {
#    Name = "Redis"
#  }
#}

#resource "aws_route53_record" "redis" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "redis-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.redis.private_ip]
#}

#resource "aws_instance" "user"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group

#  tags = {
#    Name = "User"
#  }
#}

#resource "aws_route53_record" "user" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "user-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.user.private_ip]
#}
#
#resource "aws_instance" "cart" {
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group
#
#  tags = {
#    Name = "Cart"
#  }
#}
#
#resource "aws_route53_record" "cart" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "cart-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.cart.private_ip]
#}
#
#resource "aws_instance" "mysql"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group
#
#  tags = {
#    Name = "Mysql"
#  }
#}
#
#resource "aws_route53_record" "mysql" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "mysql-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.mysql.private_ip]
#}
#
#resource "aws_instance" "shipping"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group
#
#  tags = {
#    Name = "Shipping"
#  }
#}
#
#resource "aws_route53_record" "shipping" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "shipping-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.shipping.private_ip]
#}
#
#resource "aws_instance" "rabbitmq"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group
#
#  tags = {
#    Name = "Rabbitmq"
#  }
#}
#
#resource "aws_route53_record" "rabbitmq" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "rabbitmq-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.rabbitmq.private_ip]
#}
#
#
#resource "aws_instance" "payment"{
#  ami = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_group
#
#  tags = {
#    Name = "Payment"
#  }
#}
#
#resource "aws_route53_record" "payment" {
#  zone_id = "Z0998112HZIX8T6VH3JX"
#  name    = "payment-dev.devops746.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.payment.private_ip]
#}