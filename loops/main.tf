variable "instance1" {
  default = ["frontend", "backend", "mysql"] 
}

resource "null_resource" "sample" {
   count = length(var.instance1)
}

variable "instance" {
    default = {
        frontend = {
            name = "frontend"
            instance_type = "t2.micro"
        }

        backend = {
            name = "backend"
            instance_type = "t2.micro"
        }

        mysql = {
            name = "mysql"
            instance_type = "t2.micro"
        }
    }

}

resource "null_resource" "sample1" {
   for_each = var.instance
}