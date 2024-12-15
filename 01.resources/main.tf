provider "aws" {
  region = "us-east-1"  # Update to your desired region
}
resource "aws_instance" "sample" {
   ami = "ami-0b4f379183e5706b9"
   instance_type = "t3.small"
   tags = {
     name = "Helloworlds"
   }
}