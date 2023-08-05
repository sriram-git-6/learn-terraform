resource "aws_instance" "front-end" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Front-end"
  }
}

resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "redis"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Redis"
  }
}

resource "aws_instance" "user"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "User"
  }
}

resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Cart"
  }
}

resource "aws_instance" "mysql"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Mysql"
  }
}

resource "aws_instance" "shipping"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Shipping"
  }
}

resource "aws_instance" "rabbitmq"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Rabbitmq"
  }
}


resource "aws_instance" "payment"{
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Payment"
  }
}