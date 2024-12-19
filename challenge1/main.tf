provider "aws" {
    region =  "us-east-1"
}
resource "aws_instance" "challenge1" {
    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
   tags = {
     Name = "Terraforminstance"
   }
}