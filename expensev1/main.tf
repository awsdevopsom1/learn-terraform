provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg_id]

  tags = {
    Name = "frontend"
  }
  
}

resource "aws_route53_record" "frontend" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg_id]
  tags = {
    Name = "backend"
  }
  
}

resource "aws_route53_record" "backend" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}


resource "aws_instance" "mysql" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg_id]
  tags = {
    Name = "mysql"
  }
  
}

resource "aws_route53_record" "frontend" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}