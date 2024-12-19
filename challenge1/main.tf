provider "aws" {
    region =  "us-east-1"
}
resource "aws_instance" "challenge1" {
    ami = "fdsojf5jt4j3"
    instance_type = "t2.micro"
   tags = {
     Name = "Terraforminstance"
   }
}