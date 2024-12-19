# resource "aws_vpc" "myvpc" {
#     cidr_block = "10.0.0.0/16"
#     tags = {
#           Name = var.inputname
#     }  
# }

# variable "inputname" {
#     default = "vpc"
  
# }

variable "mytuple" {
    default = [cat, 1, dog]
}
variable "objects" {

    default = {
        name = om
        height = 5.6

    }
  
}