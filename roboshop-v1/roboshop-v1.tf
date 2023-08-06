resource "aws_instance" "front-end" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Front-end"
  }
}

resource "aws_route53_record" "front-end" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "frontend-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.front-end.private_ip]
}


resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "mongodb-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "catalogue.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "redis-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "User"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "user-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "cart-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "mysql-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "shipping-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "rabbitmq-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "payment"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-01c1b8d157ecd6541" ]

  tags = {
    Name = "Payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0998112HZIX8T6VH3JX"
  name    = "payment-dev.devops746.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}