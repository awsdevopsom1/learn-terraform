provider "aws" {
  region = "us-east-1"  # Update to your desired region
}
resource "aws_instance" "frontend" {
   ami = "ami-0b4f379183e5706b9"
   instance_type = "t3.small"
   vpc_security_group_ids = ["sg-053f31aa61223c45f"]
   tags = {
     Name = "frontend"
   }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0705553LI8IW1JSJIQR"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
   ami = "ami-0b4f379183e5706b9"
   instance_type = "t3.small"
   vpc_security_group_ids = ["sg-053f31aa61223c45f"]
   tags = {
     Name = "backend"
   }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z0705553LI8IW1JSJIQR"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
   ami = "ami-0b4f379183e5706b9"
   instance_type = "t3.small"
   vpc_security_group_ids = ["sg-053f31aa61223c45f"]
   tags = {
     Name = "mysql"
   }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0705553LI8IW1JSJIQR"
  name    = "mysql"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}