provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "instances"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  tags = {
    Name = "${var.name}-${var.env}"

}
}
resource "aws_route53_record" "records" {
  zone_id  = var.zone_id
  name     = "${var.name}-${var.env}"
  type     = "A"
  ttl      = 30
  records  = [aws_instance.instances.private_ip]
}

