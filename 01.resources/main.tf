provider "aws" {
  region = "us-east-1"  # Update to your desired region
}
resource "aws_instance" "ec2_instance" {
   ami = "ami-0b4f379183e5706b9"
   instance_type = "t2.micro"
   tags = {
    Name = "Helloworld"
   }
}
