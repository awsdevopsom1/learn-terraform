variable "instances" {
  default = ["frontend", "backend", "mysql"]
}
resource "null_resource" "sample" {
     count = length(var.instances)
}

variable "instance1" {
    default = {
        frontend = {
            name = frontend
            instance_type = t3.micro
        }
    
        backend = {
            name = backendend
            instance_type = t3.micro
        }
        mysql = {
            name = mysql
            instance_type = t3.micro
        }    
    }
  
}

resource "null_resource" "sampe1" {
    for_each = var.instance1
  
}