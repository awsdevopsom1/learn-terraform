
variable "instances" {
  default = ["frontend", "backend", "mysql"]
}
resource "null_resource" "sample" {
     count = length(var.instances)
}