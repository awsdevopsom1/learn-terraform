provider "aws" {
    region =  "us-east-1"
}
resource "aws_instance" "challenge1" {
    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.SG.name]
   tags = {
     Name = "Terraforminstance"
   }
}

resource "aws_security_group" "SG" {
    name = "ALLOWHTTPS"
    ingress = {
          from_port = 443
          to_port = 443
          protocol = "TCP"
          cidr_block = ["0.0.0.0/0"]

    }

    egress = {
          from_port = 443
          to_port = 443
          protocol = "TCP"
          cidr_block = ["0.0.0.0/0"]

    }
}

output "eip" {
   value = aws_eip.eip.public_ip  
  
}