provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "instances"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  tags = {
    Name = "${each.value["name"]}-${var.env
  }"

}
}
resource "aws_route53_record" "frontend" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${each.value["name"]}-${var.env}"
  type     = "A"
  ttl      = 30
  records  = [aws_instance.instances[each.value["name"]].private_ip]
}

  variable "ami" {}
  variable "instance_type" {}
  variable "sg_id" {}
  variable "env" {}
  variable "components" {}
  variable "zone_id" {}