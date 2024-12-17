variable "instance" {
  default = ["frontend", "backend", "mysql"] 
}

resource "null_resource" "sample" {
   count = length(var.instance)
}